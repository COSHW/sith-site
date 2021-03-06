toc.dat                                                                                             0000600 0004000 0002000 00000036671 13606766155 0014473 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        PGDMP                            x            sith_db    11.5    11.5 =    O           0    0    ENCODING    ENCODING     !   SET client_encoding = 'WIN1251';
                       false         P           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false         Q           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false         R           1262    32980    sith_db    DATABASE     �   CREATE DATABASE sith_db WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Russian_Russia.1251' LC_CTYPE = 'Russian_Russia.1251';
    DROP DATABASE sith_db;
             postgres    false         �            1259    33124    answers    TABLE     ^   CREATE TABLE public.answers (
    id integer NOT NULL,
    rec_id integer,
    answer text
);
    DROP TABLE public.answers;
       public         postgres    false         �            1259    33122    answers_id_seq    SEQUENCE     �   CREATE SEQUENCE public.answers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.answers_id_seq;
       public       postgres    false    210         S           0    0    answers_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.answers_id_seq OWNED BY public.answers.id;
            public       postgres    false    209         �            1259    32989    planets    TABLE     H   CREATE TABLE public.planets (
    id integer NOT NULL,
    name text
);
    DROP TABLE public.planets;
       public         postgres    false         �            1259    32987    planets_id_seq    SEQUENCE     �   CREATE SEQUENCE public.planets_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.planets_id_seq;
       public       postgres    false    197         T           0    0    planets_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.planets_id_seq OWNED BY public.planets.id;
            public       postgres    false    196         �            1259    33109    question_lists    TABLE     O   CREATE TABLE public.question_lists (
    test integer,
    question integer
);
 "   DROP TABLE public.question_lists;
       public         postgres    false         �            1259    33032 	   questions    TABLE     N   CREATE TABLE public.questions (
    id integer NOT NULL,
    question text
);
    DROP TABLE public.questions;
       public         postgres    false         �            1259    33030    questions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.questions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.questions_id_seq;
       public       postgres    false    203         U           0    0    questions_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.questions_id_seq OWNED BY public.questions.id;
            public       postgres    false    202         �            1259    33000    recruit    TABLE     }   CREATE TABLE public.recruit (
    id integer NOT NULL,
    name text,
    planet integer,
    age integer,
    email text
);
    DROP TABLE public.recruit;
       public         postgres    false         �            1259    32998    recruit_id_seq    SEQUENCE     �   CREATE SEQUENCE public.recruit_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.recruit_id_seq;
       public       postgres    false    199         V           0    0    recruit_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.recruit_id_seq OWNED BY public.recruit.id;
            public       postgres    false    198         �            1259    33077    shadow_hands    TABLE     i   CREATE TABLE public.shadow_hands (
    id integer NOT NULL,
    req_id integer,
    master_id integer
);
     DROP TABLE public.shadow_hands;
       public         postgres    false         �            1259    33075    shadow_hands_id_seq    SEQUENCE     �   CREATE SEQUENCE public.shadow_hands_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.shadow_hands_id_seq;
       public       postgres    false    205         W           0    0    shadow_hands_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.shadow_hands_id_seq OWNED BY public.shadow_hands.id;
            public       postgres    false    204         �            1259    33016    sith    TABLE     \   CREATE TABLE public.sith (
    id integer NOT NULL,
    name text,
    ed_planet integer
);
    DROP TABLE public.sith;
       public         postgres    false         �            1259    33014    sith_id_seq    SEQUENCE     �   CREATE SEQUENCE public.sith_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.sith_id_seq;
       public       postgres    false    201         X           0    0    sith_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.sith_id_seq OWNED BY public.sith.id;
            public       postgres    false    200         �            1259    33103    tests    TABLE     N   CREATE TABLE public.tests (
    id integer NOT NULL,
    orden_num integer
);
    DROP TABLE public.tests;
       public         postgres    false         �            1259    33101    tests_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tests_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.tests_id_seq;
       public       postgres    false    207         Y           0    0    tests_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.tests_id_seq OWNED BY public.tests.id;
            public       postgres    false    206         �
           2604    33127 
   answers id    DEFAULT     h   ALTER TABLE ONLY public.answers ALTER COLUMN id SET DEFAULT nextval('public.answers_id_seq'::regclass);
 9   ALTER TABLE public.answers ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    209    210    210         �
           2604    32992 
   planets id    DEFAULT     h   ALTER TABLE ONLY public.planets ALTER COLUMN id SET DEFAULT nextval('public.planets_id_seq'::regclass);
 9   ALTER TABLE public.planets ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    197    196    197         �
           2604    33035    questions id    DEFAULT     l   ALTER TABLE ONLY public.questions ALTER COLUMN id SET DEFAULT nextval('public.questions_id_seq'::regclass);
 ;   ALTER TABLE public.questions ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    202    203    203         �
           2604    33003 
   recruit id    DEFAULT     h   ALTER TABLE ONLY public.recruit ALTER COLUMN id SET DEFAULT nextval('public.recruit_id_seq'::regclass);
 9   ALTER TABLE public.recruit ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    199    198    199         �
           2604    33080    shadow_hands id    DEFAULT     r   ALTER TABLE ONLY public.shadow_hands ALTER COLUMN id SET DEFAULT nextval('public.shadow_hands_id_seq'::regclass);
 >   ALTER TABLE public.shadow_hands ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    205    204    205         �
           2604    33019    sith id    DEFAULT     b   ALTER TABLE ONLY public.sith ALTER COLUMN id SET DEFAULT nextval('public.sith_id_seq'::regclass);
 6   ALTER TABLE public.sith ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    200    201    201         �
           2604    33106    tests id    DEFAULT     d   ALTER TABLE ONLY public.tests ALTER COLUMN id SET DEFAULT nextval('public.tests_id_seq'::regclass);
 7   ALTER TABLE public.tests ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    207    206    207         L          0    33124    answers 
   TABLE DATA               5   COPY public.answers (id, rec_id, answer) FROM stdin;
    public       postgres    false    210       2892.dat ?          0    32989    planets 
   TABLE DATA               +   COPY public.planets (id, name) FROM stdin;
    public       postgres    false    197       2879.dat J          0    33109    question_lists 
   TABLE DATA               8   COPY public.question_lists (test, question) FROM stdin;
    public       postgres    false    208       2890.dat E          0    33032 	   questions 
   TABLE DATA               1   COPY public.questions (id, question) FROM stdin;
    public       postgres    false    203       2885.dat A          0    33000    recruit 
   TABLE DATA               ?   COPY public.recruit (id, name, planet, age, email) FROM stdin;
    public       postgres    false    199       2881.dat G          0    33077    shadow_hands 
   TABLE DATA               =   COPY public.shadow_hands (id, req_id, master_id) FROM stdin;
    public       postgres    false    205       2887.dat C          0    33016    sith 
   TABLE DATA               3   COPY public.sith (id, name, ed_planet) FROM stdin;
    public       postgres    false    201       2883.dat I          0    33103    tests 
   TABLE DATA               .   COPY public.tests (id, orden_num) FROM stdin;
    public       postgres    false    207       2889.dat Z           0    0    answers_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.answers_id_seq', 200, true);
            public       postgres    false    209         [           0    0    planets_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.planets_id_seq', 4, true);
            public       postgres    false    196         \           0    0    questions_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.questions_id_seq', 4, true);
            public       postgres    false    202         ]           0    0    recruit_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.recruit_id_seq', 102, true);
            public       postgres    false    198         ^           0    0    shadow_hands_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.shadow_hands_id_seq', 9, true);
            public       postgres    false    204         _           0    0    sith_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('public.sith_id_seq', 4, true);
            public       postgres    false    200         `           0    0    tests_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.tests_id_seq', 2, true);
            public       postgres    false    206         �
           2606    33132    answers answers_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.answers
    ADD CONSTRAINT answers_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.answers DROP CONSTRAINT answers_pkey;
       public         postgres    false    210         �
           2606    32997    planets planets_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.planets
    ADD CONSTRAINT planets_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.planets DROP CONSTRAINT planets_pkey;
       public         postgres    false    197         �
           2606    33040    questions questions_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.questions
    ADD CONSTRAINT questions_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.questions DROP CONSTRAINT questions_pkey;
       public         postgres    false    203         �
           2606    33008    recruit recruit_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.recruit
    ADD CONSTRAINT recruit_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.recruit DROP CONSTRAINT recruit_pkey;
       public         postgres    false    199         �
           2606    33082    shadow_hands shadow_hands_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.shadow_hands
    ADD CONSTRAINT shadow_hands_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.shadow_hands DROP CONSTRAINT shadow_hands_pkey;
       public         postgres    false    205         �
           2606    33024    sith sith_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.sith
    ADD CONSTRAINT sith_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.sith DROP CONSTRAINT sith_pkey;
       public         postgres    false    201         �
           2606    33108    tests tests_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.tests
    ADD CONSTRAINT tests_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.tests DROP CONSTRAINT tests_pkey;
       public         postgres    false    207         �
           2606    33117 +   question_lists question_lists_question_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.question_lists
    ADD CONSTRAINT question_lists_question_fkey FOREIGN KEY (question) REFERENCES public.questions(id);
 U   ALTER TABLE ONLY public.question_lists DROP CONSTRAINT question_lists_question_fkey;
       public       postgres    false    208    2744    203         �
           2606    33112 '   question_lists question_lists_test_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.question_lists
    ADD CONSTRAINT question_lists_test_fkey FOREIGN KEY (test) REFERENCES public.tests(id);
 Q   ALTER TABLE ONLY public.question_lists DROP CONSTRAINT question_lists_test_fkey;
       public       postgres    false    208    207    2748         �
           2606    33009    recruit recruit_planet_fkey    FK CONSTRAINT     {   ALTER TABLE ONLY public.recruit
    ADD CONSTRAINT recruit_planet_fkey FOREIGN KEY (planet) REFERENCES public.planets(id);
 E   ALTER TABLE ONLY public.recruit DROP CONSTRAINT recruit_planet_fkey;
       public       postgres    false    197    2738    199         �
           2606    33088 (   shadow_hands shadow_hands_master_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.shadow_hands
    ADD CONSTRAINT shadow_hands_master_id_fkey FOREIGN KEY (master_id) REFERENCES public.sith(id);
 R   ALTER TABLE ONLY public.shadow_hands DROP CONSTRAINT shadow_hands_master_id_fkey;
       public       postgres    false    201    205    2742         �
           2606    33083 %   shadow_hands shadow_hands_req_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.shadow_hands
    ADD CONSTRAINT shadow_hands_req_id_fkey FOREIGN KEY (req_id) REFERENCES public.recruit(id);
 O   ALTER TABLE ONLY public.shadow_hands DROP CONSTRAINT shadow_hands_req_id_fkey;
       public       postgres    false    199    2740    205         �
           2606    33025    sith sith_ed_planet_fkey    FK CONSTRAINT     {   ALTER TABLE ONLY public.sith
    ADD CONSTRAINT sith_ed_planet_fkey FOREIGN KEY (ed_planet) REFERENCES public.planets(id);
 B   ALTER TABLE ONLY public.sith DROP CONSTRAINT sith_ed_planet_fkey;
       public       postgres    false    2738    197    201                                                                               2892.dat                                                                                            0000600 0004000 0002000 00000011522 13606766155 0014276 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	102	������ 1) ��, ������ 2) ��, ������ 3) ���, 
102	0	������ 1) ��, ������ 2) ���, ������ 3) ���
103	1	������ 1) ��, ������ 2) ���, ������ 3) ���
104	2	������ 1) ���, ������ 2) ��, ������ 3) ���
105	3	������ 1) ���, ������ 2) ��, ������ 3) ���
106	4	������ 1) ���, ������ 2) ���, ������ 3) ��
107	5	������ 1) ��, ������ 2) ��, ������ 3) ���
108	6	������ 1) ��, ������ 2) ���, ������ 3) ��
109	7	������ 1) ���, ������ 2) ��, ������ 3) ��
110	8	������ 1) ���, ������ 2) ���, ������ 3) ��
111	9	������ 1) ���, ������ 2) ���, ������ 3) ���
112	10	������ 1) ���, ������ 2) ���, ������ 3) ��
113	11	������ 1) ���, ������ 2) ��, ������ 3) ��
114	12	������ 1) ��, ������ 2) ���, ������ 3) ���
115	13	������ 1) ��, ������ 2) ��, ������ 3) ��
116	14	������ 1) ���, ������ 2) ���, ������ 3) ���
117	15	������ 1) ��, ������ 2) ��, ������ 3) ���
118	16	������ 1) ��, ������ 2) ���, ������ 3) ��
119	17	������ 1) ���, ������ 2) ��, ������ 3) ���
120	18	������ 1) ���, ������ 2) ���, ������ 3) ��
121	19	������ 1) ��, ������ 2) ��, ������ 3) ���
122	20	������ 1) ��, ������ 2) ���, ������ 3) ���
123	21	������ 1) ���, ������ 2) ���, ������ 3) ���
124	22	������ 1) ��, ������ 2) ��, ������ 3) ���
125	23	������ 1) ���, ������ 2) ��, ������ 3) ��
126	24	������ 1) ���, ������ 2) ���, ������ 3) ���
127	25	������ 1) ��, ������ 2) ���, ������ 3) ���
128	26	������ 1) ���, ������ 2) ���, ������ 3) ��
129	27	������ 1) ���, ������ 2) ���, ������ 3) ��
130	28	������ 1) ���, ������ 2) ���, ������ 3) ���
131	29	������ 1) ���, ������ 2) ��, ������ 3) ���
132	30	������ 1) ��, ������ 2) ��, ������ 3) ��
133	31	������ 1) ���, ������ 2) ��, ������ 3) ��
134	32	������ 1) ���, ������ 2) ���, ������ 3) ��
135	33	������ 1) ��, ������ 2) ��, ������ 3) ��
136	34	������ 1) ��, ������ 2) ���, ������ 3) ���
137	35	������ 1) ���, ������ 2) ��, ������ 3) ���
138	36	������ 1) ��, ������ 2) ��, ������ 3) ��
139	37	������ 1) ��, ������ 2) ���, ������ 3) ��
140	38	������ 1) ��, ������ 2) ��, ������ 3) ��
141	39	������ 1) ���, ������ 2) ��, ������ 3) ��
142	40	������ 1) ��, ������ 2) ���, ������ 3) ��
143	41	������ 1) ���, ������ 2) ��, ������ 3) ���
144	42	������ 1) ���, ������ 2) ��, ������ 3) ��
145	43	������ 1) ��, ������ 2) ���, ������ 3) ��
146	44	������ 1) ���, ������ 2) ���, ������ 3) ��
147	45	������ 1) ��, ������ 2) ��, ������ 3) ���
148	46	������ 1) ���, ������ 2) ���, ������ 3) ���
149	47	������ 1) ��, ������ 2) ���, ������ 3) ��
150	48	������ 1) ���, ������ 2) ��, ������ 3) ���
151	49	������ 1) ��, ������ 2) ���, ������ 3) ���
152	50	������ 1) ���, ������ 2) ���, ������ 3) ���
153	51	������ 1) ���, ������ 2) ���, ������ 3) ���
154	52	������ 1) ��, ������ 2) ��, ������ 3) ��
155	53	������ 1) ���, ������ 2) ���, ������ 3) ��
156	54	������ 1) ��, ������ 2) ��, ������ 3) ���
157	55	������ 1) ��, ������ 2) ��, ������ 3) ���
158	56	������ 1) ���, ������ 2) ��, ������ 3) ��
159	57	������ 1) ��, ������ 2) ��, ������ 3) ��
160	58	������ 1) ��, ������ 2) ���, ������ 3) ��
161	59	������ 1) ���, ������ 2) ��, ������ 3) ���
162	60	������ 1) ��, ������ 2) ���, ������ 3) ���
163	61	������ 1) ���, ������ 2) ���, ������ 3) ���
164	62	������ 1) ���, ������ 2) ��, ������ 3) ��
165	63	������ 1) ��, ������ 2) ��, ������ 3) ��
166	64	������ 1) ��, ������ 2) ��, ������ 3) ��
167	65	������ 1) ��, ������ 2) ���, ������ 3) ��
168	66	������ 1) ���, ������ 2) ���, ������ 3) ��
169	67	������ 1) ���, ������ 2) ��, ������ 3) ��
170	68	������ 1) ���, ������ 2) ��, ������ 3) ���
171	69	������ 1) ���, ������ 2) ���, ������ 3) ��
172	70	������ 1) ��, ������ 2) ��, ������ 3) ���
173	71	������ 1) ���, ������ 2) ���, ������ 3) ��
174	72	������ 1) ��, ������ 2) ���, ������ 3) ���
175	73	������ 1) ���, ������ 2) ���, ������ 3) ��
176	74	������ 1) ���, ������ 2) ��, ������ 3) ���
177	75	������ 1) ��, ������ 2) ��, ������ 3) ���
178	76	������ 1) ���, ������ 2) ��, ������ 3) ��
179	77	������ 1) ���, ������ 2) ���, ������ 3) ��
180	78	������ 1) ��, ������ 2) ��, ������ 3) ��
181	79	������ 1) ���, ������ 2) ��, ������ 3) ��
182	80	������ 1) ���, ������ 2) ���, ������ 3) ���
183	81	������ 1) ���, ������ 2) ��, ������ 3) ��
184	82	������ 1) ���, ������ 2) ��, ������ 3) ��
185	83	������ 1) ���, ������ 2) ��, ������ 3) ���
186	84	������ 1) ��, ������ 2) ��, ������ 3) ���
187	85	������ 1) ���, ������ 2) ���, ������ 3) ���
188	86	������ 1) ���, ������ 2) ��, ������ 3) ���
189	87	������ 1) ��, ������ 2) ��, ������ 3) ��
190	88	������ 1) ��, ������ 2) ���, ������ 3) ��
191	89	������ 1) ��, ������ 2) ���, ������ 3) ��
192	90	������ 1) ��, ������ 2) ��, ������ 3) ���
193	91	������ 1) ���, ������ 2) ��, ������ 3) ��
194	92	������ 1) ��, ������ 2) ���, ������ 3) ���
195	93	������ 1) ��, ������ 2) ���, ������ 3) ��
196	94	������ 1) ��, ������ 2) ��, ������ 3) ���
197	95	������ 1) ���, ������ 2) ���, ������ 3) ��
198	96	������ 1) ��, ������ 2) ��, ������ 3) ��
199	97	������ 1) ��, ������ 2) ���, ������ 3) ���
200	98	������ 1) ���, ������ 2) ���, ������ 3) ���
\.


                                                                                                                                                                              2879.dat                                                                                            0000600 0004000 0002000 00000000050 13606766155 0014275 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	������
2	�����
3	�������
4	�����
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        2890.dat                                                                                            0000600 0004000 0002000 00000000035 13606766155 0014271 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	1
1	2
1	3
2	1
2	2
2	4
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   2885.dat                                                                                            0000600 0004000 0002000 00000000136 13606766155 0014277 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	������� ����������?
2	������ ������ ������� ����?
3	������ ���������?
4	�������� ����?
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                  2881.dat                                                                                            0000600 0004000 0002000 00000012152 13606766155 0014274 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	������ ���� ���������	3	41	akkd699@gmail.com
2	������� ����� ����������	2	21	ecce527@gmail.com
3	����� ����� ����������	2	31	zfeq391@gmail.com
4	�������� ���� ��������	1	27	bfce311@gmail.com
5	�������� ���� ���������	2	40	eyyd145@gmail.com
6	������� ������� �����������	1	45	qyhc214@gmail.com
7	����� ��������� ������������	2	29	aqhr324@gmail.com
8	������ ��������� ���������	2	31	zrcq769@gmail.com
9	������ ������ ����������	2	36	hykd503@gmail.com
10	������� ���� ������������	2	35	byrq819@gmail.com
11	����������� ������ ����������	2	23	fyqk828@gmail.com
12	�������� ������ ����������	3	37	qchk648@gmail.com
13	����� ���� ����������	1	25	cada984@gmail.com
14	����� ������� ���������	1	23	kryh694@gmail.com
15	��������� ������� ����������	2	33	fyck930@gmail.com
16	������ ������� ����������	1	20	keqq938@gmail.com
17	������ ����� ���������	3	39	rfdk547@gmail.com
18	������� ������� ����������	1	29	qdec286@gmail.com
19	������� ����� ����������	2	42	rqrr839@gmail.com
20	������ ������ ���������	1	49	bacy695@gmail.com
21	��������� ������ ������������	2	25	yhrf449@gmail.com
22	����� ������ �����������	1	41	yycy708@gmail.com
23	������� ���� �����������	1	41	ychb754@gmail.com
24	������ ����� ����������	3	47	cahk279@gmail.com
25	������� ������� ����������	3	50	yfeb998@gmail.com
26	�������� ��������� ���������	2	33	edrz669@gmail.com
27	������ ������ ���������	1	34	qrye131@gmail.com
28	�������� ��������� ���������	3	29	frqr878@gmail.com
29	������� ����� ��������������	3	28	rkaf344@gmail.com
30	������� ������ ���������	1	21	cezf366@gmail.com
31	��������� ������ ����������	1	48	ahcy597@gmail.com
32	����� ���������� ����������	2	39	rdyq988@gmail.com
33	������� ����� �������������	2	36	bhbd469@gmail.com
34	������� ������ ����������	1	19	cakr613@gmail.com
35	������� �������� ���������	1	43	rryk357@gmail.com
36	������� ����� ���������	2	18	zhca184@gmail.com
37	��������� ������� ����������	3	38	cfqh208@gmail.com
38	������� ���� ����������	3	30	eazf470@gmail.com
39	����� ��������� ���������	3	24	rbfr320@gmail.com
40	��������� ���� ���������	3	34	qbqe220@gmail.com
41	������� ��������� �������������	1	21	yfrz924@gmail.com
42	������ ����� ������������	3	50	ebqy941@gmail.com
43	�������� ������� ����������	2	21	czer947@gmail.com
44	������� �������� �������������	1	19	dahr169@gmail.com
45	������������ ������ ����������	3	34	fbyc756@gmail.com
46	��������� ������� ���������	3	29	rccb423@gmail.com
47	������� Ը��� ����������	3	36	ecef812@gmail.com
48	������ �������� ���������	1	22	hekd279@gmail.com
49	����� ����� ������������	2	30	qyqh660@gmail.com
50	��������� ����� ����������	3	42	zred836@gmail.com
51	������ ����� ����������	3	44	qkcc847@gmail.com
52	��������� ������� ����������	3	49	bcyz574@gmail.com
53	�������� ���� ��������	3	34	aqqy466@gmail.com
54	������ ϸ�� ����������	3	20	hkdh463@gmail.com
55	���������� ������� ����������	3	37	zcer391@gmail.com
56	������� ����� ���������	3	21	kazh681@gmail.com
57	�������� ������ ��������	2	18	yfbb144@gmail.com
58	����� ������� ���������	2	27	dbzr239@gmail.com
59	�������� ������ ���������	2	43	cqrf698@gmail.com
60	������� ������ ����������	1	36	ccyc334@gmail.com
61	������� ���� ���������	3	20	bzed665@gmail.com
62	�������� ����� ��������������	2	43	ahbz737@gmail.com
63	����� �������� ���������	3	40	edrb508@gmail.com
64	������ ������� ����������	2	20	ydhc334@gmail.com
65	������� ����� �����������	3	40	ehye139@gmail.com
66	������� ������ ����������	2	25	ffaq963@gmail.com
67	������� �������� ����������	2	24	zqdr647@gmail.com
68	������ ��������� ������������	1	50	cfah683@gmail.com
69	������ �������� ����������	3	36	zdbq318@gmail.com
70	�������� ����� ����������	2	30	hhae587@gmail.com
71	��������� ������� ���������	1	33	rdyb765@gmail.com
72	������� ������� ���������	1	40	faea309@gmail.com
73	�������� ������ �������������	3	34	akhq934@gmail.com
74	�������� ����� ���������	2	49	kzfd325@gmail.com
75	����� ������ �������������	1	18	ehyd396@gmail.com
76	������ ���� ���������	2	27	qffy655@gmail.com
77	����� ������ ����������	1	31	cbbh282@gmail.com
78	������� ������ ���������	3	41	aydb571@gmail.com
79	��������� ����� ��������	3	28	bzhy632@gmail.com
80	������� ������� ���������	2	49	zfba830@gmail.com
81	������ ������ �����������	1	47	fcyf516@gmail.com
82	��������� ���� ���������	1	29	bhzy780@gmail.com
83	�������� ����� ����������	3	36	rakr814@gmail.com
84	��������� ����� ����������	3	30	zyrz141@gmail.com
85	������ ������ ���������	2	50	efrd898@gmail.com
86	��������� �������� �����������	1	29	rffe224@gmail.com
87	�������� ������� ������������	1	19	cyca426@gmail.com
88	������� ������ ����������	2	43	ykfe432@gmail.com
89	������ ������� ���������	2	43	ahrb925@gmail.com
90	�������� ������� ���������	1	21	rqyb828@gmail.com
91	����������� �������� ����������	2	19	zrek980@gmail.com
92	����� �������� ���������	2	21	fzfd168@gmail.com
93	�������� ����� �����������	3	40	eefk827@gmail.com
94	�������� ������� ����������	1	18	dqqr714@gmail.com
95	������ ����� ���������	3	49	fzac554@gmail.com
96	������� ����� �������������	1	24	crqe833@gmail.com
97	�������� ����� ���������	3	34	kzcd575@gmail.com
98	������� ������ ��������	1	32	yaqb266@gmail.com
99	����� ���� ����������	2	25	ryzq848@gmail.com
102	����� ����� ���������	4	22	roman-coshw@yandex.ru
\.


                                                                                                                                                                                                                                                                                                                                                                                                                      2887.dat                                                                                            0000600 0004000 0002000 00000000102 13606766155 0014272 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	3	1
2	6	1
3	8	1
4	12	2
5	16	2
6	25	4
7	66	4
8	88	4
9	102	1
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                              2883.dat                                                                                            0000600 0004000 0002000 00000000077 13606766155 0014301 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	��������	3
2	���� ��������	2
3	���� ���	3
4	���� ����	2
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                 2889.dat                                                                                            0000600 0004000 0002000 00000000017 13606766155 0014301 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	66
2	15
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 restore.sql                                                                                         0000600 0004000 0002000 00000030556 13606766155 0015414 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        --
-- NOTE:
--
-- File paths need to be edited. Search for $$PATH$$ and
-- replace it with the path to the directory containing
-- the extracted data files.
--
--
-- PostgreSQL database dump
--

-- Dumped from database version 11.5
-- Dumped by pg_dump version 11.5

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'WIN1251';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE sith_db;
--
-- Name: sith_db; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE sith_db WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Russian_Russia.1251' LC_CTYPE = 'Russian_Russia.1251';


ALTER DATABASE sith_db OWNER TO postgres;

\connect sith_db

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'WIN1251';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: answers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.answers (
    id integer NOT NULL,
    rec_id integer,
    answer text
);


ALTER TABLE public.answers OWNER TO postgres;

--
-- Name: answers_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.answers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.answers_id_seq OWNER TO postgres;

--
-- Name: answers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.answers_id_seq OWNED BY public.answers.id;


--
-- Name: planets; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.planets (
    id integer NOT NULL,
    name text
);


ALTER TABLE public.planets OWNER TO postgres;

--
-- Name: planets_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.planets_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planets_id_seq OWNER TO postgres;

--
-- Name: planets_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.planets_id_seq OWNED BY public.planets.id;


--
-- Name: question_lists; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.question_lists (
    test integer,
    question integer
);


ALTER TABLE public.question_lists OWNER TO postgres;

--
-- Name: questions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.questions (
    id integer NOT NULL,
    question text
);


ALTER TABLE public.questions OWNER TO postgres;

--
-- Name: questions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.questions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.questions_id_seq OWNER TO postgres;

--
-- Name: questions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.questions_id_seq OWNED BY public.questions.id;


--
-- Name: recruit; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.recruit (
    id integer NOT NULL,
    name text,
    planet integer,
    age integer,
    email text
);


ALTER TABLE public.recruit OWNER TO postgres;

--
-- Name: recruit_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.recruit_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.recruit_id_seq OWNER TO postgres;

--
-- Name: recruit_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.recruit_id_seq OWNED BY public.recruit.id;


--
-- Name: shadow_hands; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.shadow_hands (
    id integer NOT NULL,
    req_id integer,
    master_id integer
);


ALTER TABLE public.shadow_hands OWNER TO postgres;

--
-- Name: shadow_hands_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.shadow_hands_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.shadow_hands_id_seq OWNER TO postgres;

--
-- Name: shadow_hands_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.shadow_hands_id_seq OWNED BY public.shadow_hands.id;


--
-- Name: sith; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sith (
    id integer NOT NULL,
    name text,
    ed_planet integer
);


ALTER TABLE public.sith OWNER TO postgres;

--
-- Name: sith_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.sith_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sith_id_seq OWNER TO postgres;

--
-- Name: sith_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.sith_id_seq OWNED BY public.sith.id;


--
-- Name: tests; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tests (
    id integer NOT NULL,
    orden_num integer
);


ALTER TABLE public.tests OWNER TO postgres;

--
-- Name: tests_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tests_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tests_id_seq OWNER TO postgres;

--
-- Name: tests_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tests_id_seq OWNED BY public.tests.id;


--
-- Name: answers id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.answers ALTER COLUMN id SET DEFAULT nextval('public.answers_id_seq'::regclass);


--
-- Name: planets id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.planets ALTER COLUMN id SET DEFAULT nextval('public.planets_id_seq'::regclass);


--
-- Name: questions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.questions ALTER COLUMN id SET DEFAULT nextval('public.questions_id_seq'::regclass);


--
-- Name: recruit id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.recruit ALTER COLUMN id SET DEFAULT nextval('public.recruit_id_seq'::regclass);


--
-- Name: shadow_hands id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.shadow_hands ALTER COLUMN id SET DEFAULT nextval('public.shadow_hands_id_seq'::regclass);


--
-- Name: sith id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sith ALTER COLUMN id SET DEFAULT nextval('public.sith_id_seq'::regclass);


--
-- Name: tests id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tests ALTER COLUMN id SET DEFAULT nextval('public.tests_id_seq'::regclass);


--
-- Data for Name: answers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.answers (id, rec_id, answer) FROM stdin;
\.
COPY public.answers (id, rec_id, answer) FROM '$$PATH$$/2892.dat';

--
-- Data for Name: planets; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.planets (id, name) FROM stdin;
\.
COPY public.planets (id, name) FROM '$$PATH$$/2879.dat';

--
-- Data for Name: question_lists; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.question_lists (test, question) FROM stdin;
\.
COPY public.question_lists (test, question) FROM '$$PATH$$/2890.dat';

--
-- Data for Name: questions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.questions (id, question) FROM stdin;
\.
COPY public.questions (id, question) FROM '$$PATH$$/2885.dat';

--
-- Data for Name: recruit; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.recruit (id, name, planet, age, email) FROM stdin;
\.
COPY public.recruit (id, name, planet, age, email) FROM '$$PATH$$/2881.dat';

--
-- Data for Name: shadow_hands; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.shadow_hands (id, req_id, master_id) FROM stdin;
\.
COPY public.shadow_hands (id, req_id, master_id) FROM '$$PATH$$/2887.dat';

--
-- Data for Name: sith; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.sith (id, name, ed_planet) FROM stdin;
\.
COPY public.sith (id, name, ed_planet) FROM '$$PATH$$/2883.dat';

--
-- Data for Name: tests; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tests (id, orden_num) FROM stdin;
\.
COPY public.tests (id, orden_num) FROM '$$PATH$$/2889.dat';

--
-- Name: answers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.answers_id_seq', 200, true);


--
-- Name: planets_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.planets_id_seq', 4, true);


--
-- Name: questions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.questions_id_seq', 4, true);


--
-- Name: recruit_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.recruit_id_seq', 102, true);


--
-- Name: shadow_hands_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.shadow_hands_id_seq', 9, true);


--
-- Name: sith_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.sith_id_seq', 4, true);


--
-- Name: tests_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tests_id_seq', 2, true);


--
-- Name: answers answers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.answers
    ADD CONSTRAINT answers_pkey PRIMARY KEY (id);


--
-- Name: planets planets_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.planets
    ADD CONSTRAINT planets_pkey PRIMARY KEY (id);


--
-- Name: questions questions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.questions
    ADD CONSTRAINT questions_pkey PRIMARY KEY (id);


--
-- Name: recruit recruit_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.recruit
    ADD CONSTRAINT recruit_pkey PRIMARY KEY (id);


--
-- Name: shadow_hands shadow_hands_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.shadow_hands
    ADD CONSTRAINT shadow_hands_pkey PRIMARY KEY (id);


--
-- Name: sith sith_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sith
    ADD CONSTRAINT sith_pkey PRIMARY KEY (id);


--
-- Name: tests tests_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tests
    ADD CONSTRAINT tests_pkey PRIMARY KEY (id);


--
-- Name: question_lists question_lists_question_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.question_lists
    ADD CONSTRAINT question_lists_question_fkey FOREIGN KEY (question) REFERENCES public.questions(id);


--
-- Name: question_lists question_lists_test_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.question_lists
    ADD CONSTRAINT question_lists_test_fkey FOREIGN KEY (test) REFERENCES public.tests(id);


--
-- Name: recruit recruit_planet_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.recruit
    ADD CONSTRAINT recruit_planet_fkey FOREIGN KEY (planet) REFERENCES public.planets(id);


--
-- Name: shadow_hands shadow_hands_master_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.shadow_hands
    ADD CONSTRAINT shadow_hands_master_id_fkey FOREIGN KEY (master_id) REFERENCES public.sith(id);


--
-- Name: shadow_hands shadow_hands_req_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.shadow_hands
    ADD CONSTRAINT shadow_hands_req_id_fkey FOREIGN KEY (req_id) REFERENCES public.recruit(id);


--
-- Name: sith sith_ed_planet_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sith
    ADD CONSTRAINT sith_ed_planet_fkey FOREIGN KEY (ed_planet) REFERENCES public.planets(id);


--
-- PostgreSQL database dump complete
--

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  