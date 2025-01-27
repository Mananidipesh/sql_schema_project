PGDMP                      |            schema_project2_db    16.3    16.3     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    237592    schema_project2_db    DATABASE     �   CREATE DATABASE schema_project2_db WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';
 "   DROP DATABASE schema_project2_db;
                postgres    false                        2615    245760    schema_2    SCHEMA        CREATE SCHEMA schema_2;
    DROP SCHEMA schema_2;
                postgres    false            �            1259    245771    books    TABLE     �   CREATE TABLE schema_2.books (
    book_id integer NOT NULL,
    title character varying(100) NOT NULL,
    author character varying(100),
    published_date date,
    category character varying(50),
    isbn character varying(20)
);
    DROP TABLE schema_2.books;
       schema_2         heap    postgres    false    6            �            1259    245770    books_book_id_seq    SEQUENCE     �   CREATE SEQUENCE schema_2.books_book_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE schema_2.books_book_id_seq;
       schema_2          postgres    false    6    219            �           0    0    books_book_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE schema_2.books_book_id_seq OWNED BY schema_2.books.book_id;
          schema_2          postgres    false    218            �            1259    245762    schools    TABLE     �   CREATE TABLE schema_2.schools (
    school_id integer NOT NULL,
    school_name character varying(100) NOT NULL,
    address text,
    city character varying(50),
    state character varying(50),
    zipcode character varying(10)
);
    DROP TABLE schema_2.schools;
       schema_2         heap    postgres    false    6            �            1259    245761    schools_school_id_seq    SEQUENCE     �   CREATE SEQUENCE schema_2.schools_school_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE schema_2.schools_school_id_seq;
       schema_2          postgres    false    217    6            �           0    0    schools_school_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE schema_2.schools_school_id_seq OWNED BY schema_2.schools.school_id;
          schema_2          postgres    false    216            �            1259    245778    students    TABLE     �   CREATE TABLE schema_2.students (
    student_id integer NOT NULL,
    first_name character varying(50) NOT NULL,
    last_name character varying(50) NOT NULL,
    date_of_birth date,
    gender character varying(10),
    grade_level integer
);
    DROP TABLE schema_2.students;
       schema_2         heap    postgres    false    6            �            1259    245777    students_student_id_seq    SEQUENCE     �   CREATE SEQUENCE schema_2.students_student_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE schema_2.students_student_id_seq;
       schema_2          postgres    false    221    6            �           0    0    students_student_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE schema_2.students_student_id_seq OWNED BY schema_2.students.student_id;
          schema_2          postgres    false    220            &           2604    245774    books book_id    DEFAULT     r   ALTER TABLE ONLY schema_2.books ALTER COLUMN book_id SET DEFAULT nextval('schema_2.books_book_id_seq'::regclass);
 >   ALTER TABLE schema_2.books ALTER COLUMN book_id DROP DEFAULT;
       schema_2          postgres    false    219    218    219            %           2604    245765    schools school_id    DEFAULT     z   ALTER TABLE ONLY schema_2.schools ALTER COLUMN school_id SET DEFAULT nextval('schema_2.schools_school_id_seq'::regclass);
 B   ALTER TABLE schema_2.schools ALTER COLUMN school_id DROP DEFAULT;
       schema_2          postgres    false    216    217    217            '           2604    245781    students student_id    DEFAULT     ~   ALTER TABLE ONLY schema_2.students ALTER COLUMN student_id SET DEFAULT nextval('schema_2.students_student_id_seq'::regclass);
 D   ALTER TABLE schema_2.students ALTER COLUMN student_id DROP DEFAULT;
       schema_2          postgres    false    221    220    221            �          0    245771    books 
   TABLE DATA           Y   COPY schema_2.books (book_id, title, author, published_date, category, isbn) FROM stdin;
    schema_2          postgres    false    219   �       �          0    245762    schools 
   TABLE DATA           Z   COPY schema_2.schools (school_id, school_name, address, city, state, zipcode) FROM stdin;
    schema_2          postgres    false    217   	       �          0    245778    students 
   TABLE DATA           k   COPY schema_2.students (student_id, first_name, last_name, date_of_birth, gender, grade_level) FROM stdin;
    schema_2          postgres    false    221   �       �           0    0    books_book_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('schema_2.books_book_id_seq', 33, true);
          schema_2          postgres    false    218            �           0    0    schools_school_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('schema_2.schools_school_id_seq', 33, true);
          schema_2          postgres    false    216            �           0    0    students_student_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('schema_2.students_student_id_seq', 5, true);
          schema_2          postgres    false    220            +           2606    245776    books books_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY schema_2.books
    ADD CONSTRAINT books_pkey PRIMARY KEY (book_id);
 <   ALTER TABLE ONLY schema_2.books DROP CONSTRAINT books_pkey;
       schema_2            postgres    false    219            )           2606    245769    schools schools_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY schema_2.schools
    ADD CONSTRAINT schools_pkey PRIMARY KEY (school_id);
 @   ALTER TABLE ONLY schema_2.schools DROP CONSTRAINT schools_pkey;
       schema_2            postgres    false    217            -           2606    245783    students students_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY schema_2.students
    ADD CONSTRAINT students_pkey PRIMARY KEY (student_id);
 B   ALTER TABLE ONLY schema_2.students DROP CONSTRAINT students_pkey;
       schema_2            postgres    false    221            �     x�U�=k�0�g�W���F߲愤4--I�.�#QaI�_߳;u���yy^N>o6���P N�p<΁���N>��
�N�َ��c�y"�Lrc�S�@��p�)���<~��9�y�����a���d�|�q�+��c��oE�!�k���)�J����d;ז����+͵PNj���2�Gn��tY5N�����T���8z8��"�\g�@%?5_番�Z*a�^�ٗ��}��찒C`����9BwLu��ײJ
+���������d{      �   �   x�U��j�0�ϫ��'(�-9��		)��Z�EX[tmU8��#�uf>f&�����4�G۴XխsI�a4�
P�Sp�._�*�H���s���%U����Hp-�ݕ����Jdp�#�_k�L�A���.>�T����%�4��9��Z�&�*�ny4q���5���b�+���훻%6�>*��n��'�'He^�����	j�W�      �   �   x�5ͻ�0D�z�_�v�E��(R�и���@���QH=Gw4�)y�I>F�+�Z�4$82�p.!�%Ϥ媴�u-5�G���!1�O�l��6f�X��R7�囗��QKđE_^�F:?��ql�Zh�!��5,�     