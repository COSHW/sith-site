from django.shortcuts import render, redirect
import psycopg2
import pandas
import os
from email.mime.text import MIMEText
import traceback
import smtplib


# conn = psycopg2.connect("dbname='sith_db' user='postgres' password='Lovunod2302' host='localhost' port='5432'")
# cur = conn.cursor()

DATABASE_URL = os.environ['DATABASE_URL']

conn = psycopg2.connect(DATABASE_URL, sslmode='require')
cur = conn.cursor()


def index(request):
    return render(request, 'index.html')


def table(request):
    cur.execute(
        "select sith.name, recruit.name from shadow_hands inner join recruit on shadow_hands.req_id=recruit.id inner join sith on shadow_hands.master_id=sith.id order by(sith.name)")
    data = cur.fetchall()
    masters = []
    for item in data:
        if masters == [] or item[0] not in list(zip(*masters))[0]:
            masters.append([item[0], 1])
        else:
            masters[list(zip(*masters))[0].index(item[0])][1] += 1
    cur.execute('select name from sith')
    names = cur.fetchall()
    for item in names:
        if item[0] not in list(zip(*masters))[0]:
            masters.append([item[0], 0])
    table = pandas.DataFrame(data, columns=["Мастер ситх", "Теневая рука"])
    table.index = table.index + 1
    table2 = pandas.DataFrame(masters, columns=["Мастер ситх", "Количество теневых рук"])
    table2.index = table2.index + 1
    return render(request, 'list_of_siths.html', {'table': table.to_html(), 'table_of_siths': table2.to_html()})


def recruit_page(request):
    cur.execute("select tests.orden_num, questions.question from question_lists inner join tests on question_lists.test=tests.id inner join questions on question_lists.question=questions.id where orden_num=66")
    questions = cur.fetchall()
    questions = list(zip(*questions))[1]
    num = list(range(1, len(questions)+1))
    print(questions)
    return render(request, 'input.html', {'questions': zip(num, questions)})


def send(request):
    return render(request, 'send.html', {'message': "Спасибо за поддержку нашей идеи. В скором, вам пришлют письмо на почту."})


def error(request):
    return render(request, 'send.html', {'message': "Произошла ошибка. Пожалуйста, попробуйте ещё раз."})


def redirect_func(request):
    try:
        data = dict(request.GET)
        fio = data['fio']
        planet = data['planet']
        cur.execute("select id from planets where name = '{}'".format(planet[0]))
        planet_check = cur.fetchall()
        if len(planet_check) == 0:
            cur.execute("insert into planets(name) values ('{}')".format(planet[0]))
            conn.commit()
            planet_check = cur.execute("select id from planets where name = '{}'".format(planet[0]))
        age = data['age']
        email = data['email']
        answers = ""
        for i in range(1, len(data)-3):
            answers = answers + "Вопрос {}) {}, ".format(i, data[str(i)][0])
        cur.execute("insert into recruit (name, planet, age, email) values ('{}', {}, {}, '{}')".format(fio[0], planet_check[0][0], age[0], email[0]))
        cur.execute("select id from recruit where name = '{}' and email = '{}'".format(fio[0], email[0]))
        id = cur.fetchall()
        cur.execute("insert into answers (rec_id, answer) values ({}, '{}')".format(id[0][0], answers[:-2]))
        conn.commit()
        return redirect('send')
    except:
        traceback.print_exc()
        return redirect('error')


def choice(request):
    cur.execute("select name from sith")
    siths = cur.fetchall()
    return render(request, 'sith.html', {'siths': siths})


def account(request):
    name = request.GET.get('name')
    cur.execute("select recruit.id, recruit.name, planets.name, recruit.age, answers.answer from recruit inner join planets on planets.id=recruit.planet inner join answers on answers.rec_id=recruit.id")
    data = cur.fetchall()
    cur.execute("select req_id from shadow_hands")
    shadow_hands = cur.fetchall()
    shadow_hands = list(zip(*shadow_hands))[0]
    final = []
    for item in data:
        if int(item[0]) in shadow_hands:
            pass
        else:
            final.append(item)
    return render(request, 'list_of_recruits.html', {'data': final, 'sith': name})


def shadow_hand(request):
    data = dict(request.GET)
    cur.execute("insert into shadow_hands (req_id, master_id) values ({}, (select id from sith where name='{}'))".format(int(list(data.keys())[1]), data['sith'][0]))
    conn.commit()

    cur.execute("select email from recruit where id = {}".format(int(list(data.keys())[1])))
    to_email = cur.fetchall()
    from_email = "kursovayarabota2018@gmail.com"
    from_password = "yjsbnlymxmtfncuy"
    subject = "Принятие на должность теневой руки"

    message = "Поздравляем! \n Вас принял на должность своей теневой руки {}".format(data['sith'][0])

    msg = MIMEText(message, 'html')
    msg['Subject'] = subject
    msg['To'] = to_email
    msg['From'] = from_email

    gmail = smtplib.SMTP('smtp.gmail.com', 587)
    gmail.ehlo()
    gmail.starttls()
    gmail.login(from_email, from_password)
    newmessage = '\r\n'.join([
        'To: %s' % to_email,
        'From: %s' % from_email,
        'Subject: %s' % subject,
        '',
        message
    ])
    gmail.sendmail(from_email, to_email, newmessage)
    # gmail.send_message(msg)
    gmail.quit()

    return render(request, "send.html", {'message': 'Выбранный рекрут становится вашей теневой рукой'})


