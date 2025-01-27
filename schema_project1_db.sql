PGDMP      
                |            schema_project1_db    16.3    16.3     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    229376    schema_project1_db    DATABASE     �   CREATE DATABASE schema_project1_db WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';
 "   DROP DATABASE schema_project1_db;
                postgres    false                        2615    229377    schema_1    SCHEMA        CREATE SCHEMA schema_1;
    DROP SCHEMA schema_1;
                postgres    false            �            1259    237576 	   customers    TABLE     �   CREATE TABLE schema_1.customers (
    customer_id integer NOT NULL,
    customer_name character varying(100) NOT NULL,
    contact_person character varying(50),
    phone character varying(20),
    address text
);
    DROP TABLE schema_1.customers;
       schema_1         heap    postgres    false    6            �            1259    237575    customers_customer_id_seq    SEQUENCE     �   CREATE SEQUENCE schema_1.customers_customer_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE schema_1.customers_customer_id_seq;
       schema_1          postgres    false    6    219            �           0    0    customers_customer_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE schema_1.customers_customer_id_seq OWNED BY schema_1.customers.customer_id;
          schema_1          postgres    false    218            �            1259    237569 	   employees    TABLE     �   CREATE TABLE schema_1.employees (
    employee_id integer NOT NULL,
    first_name character varying(50) NOT NULL,
    last_name character varying(50) NOT NULL,
    email character varying(100),
    hire_date date,
    salary numeric(10,2)
);
    DROP TABLE schema_1.employees;
       schema_1         heap    postgres    false    6            �            1259    237568    employees_employee_id_seq    SEQUENCE     �   CREATE SEQUENCE schema_1.employees_employee_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE schema_1.employees_employee_id_seq;
       schema_1          postgres    false    217    6            �           0    0    employees_employee_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE schema_1.employees_employee_id_seq OWNED BY schema_1.employees.employee_id;
          schema_1          postgres    false    216            �            1259    237585    products    TABLE     �   CREATE TABLE schema_1.products (
    product_id integer NOT NULL,
    product_name character varying(100) NOT NULL,
    category character varying(50),
    price numeric(10,2),
    stock_quantity integer DEFAULT 0
);
    DROP TABLE schema_1.products;
       schema_1         heap    postgres    false    6            �            1259    237584    products_product_id_seq    SEQUENCE     �   CREATE SEQUENCE schema_1.products_product_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE schema_1.products_product_id_seq;
       schema_1          postgres    false    6    221            �           0    0    products_product_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE schema_1.products_product_id_seq OWNED BY schema_1.products.product_id;
          schema_1          postgres    false    220            &           2604    237579    customers customer_id    DEFAULT     �   ALTER TABLE ONLY schema_1.customers ALTER COLUMN customer_id SET DEFAULT nextval('schema_1.customers_customer_id_seq'::regclass);
 F   ALTER TABLE schema_1.customers ALTER COLUMN customer_id DROP DEFAULT;
       schema_1          postgres    false    218    219    219            %           2604    237572    employees employee_id    DEFAULT     �   ALTER TABLE ONLY schema_1.employees ALTER COLUMN employee_id SET DEFAULT nextval('schema_1.employees_employee_id_seq'::regclass);
 F   ALTER TABLE schema_1.employees ALTER COLUMN employee_id DROP DEFAULT;
       schema_1          postgres    false    217    216    217            '           2604    237588    products product_id    DEFAULT     ~   ALTER TABLE ONLY schema_1.products ALTER COLUMN product_id SET DEFAULT nextval('schema_1.products_product_id_seq'::regclass);
 D   ALTER TABLE schema_1.products ALTER COLUMN product_id DROP DEFAULT;
       schema_1          postgres    false    220    221    221            �          0    237576 	   customers 
   TABLE DATA           a   COPY schema_1.customers (customer_id, customer_name, contact_person, phone, address) FROM stdin;
    schema_1          postgres    false    219   �       �          0    237569 	   employees 
   TABLE DATA           c   COPY schema_1.employees (employee_id, first_name, last_name, email, hire_date, salary) FROM stdin;
    schema_1          postgres    false    217   �       �          0    237585    products 
   TABLE DATA           _   COPY schema_1.products (product_id, product_name, category, price, stock_quantity) FROM stdin;
    schema_1          postgres    false    221   o       �           0    0    customers_customer_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('schema_1.customers_customer_id_seq', 5, true);
          schema_1          postgres    false    218            �           0    0    employees_employee_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('schema_1.employees_employee_id_seq', 5, true);
          schema_1          postgres    false    216            �           0    0    products_product_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('schema_1.products_product_id_seq', 5, true);
          schema_1          postgres    false    220            ,           2606    237583    customers customers_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY schema_1.customers
    ADD CONSTRAINT customers_pkey PRIMARY KEY (customer_id);
 D   ALTER TABLE ONLY schema_1.customers DROP CONSTRAINT customers_pkey;
       schema_1            postgres    false    219            *           2606    237574    employees employees_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY schema_1.employees
    ADD CONSTRAINT employees_pkey PRIMARY KEY (employee_id);
 D   ALTER TABLE ONLY schema_1.employees DROP CONSTRAINT employees_pkey;
       schema_1            postgres    false    217            .           2606    237591    products products_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY schema_1.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (product_id);
 B   ALTER TABLE ONLY schema_1.products DROP CONSTRAINT products_pkey;
       schema_1            postgres    false    221            �     x�M��N�0F���)f����[��BT-E����UǮӊ�gHtg������[g>�vv��%�q��;G�H3!��[�#؆��+����]F������O��6�Q��uX���ȥ�R`���3Ÿ�G���s�H�#\�@���D����'jr��4˄�2ρ�pmF\�s�.,�/'�u�<]�k\��j���aQ�UU�E�����g����ޚ����f�����U�9엑R��P�<n��['��?�-�����o      �   �   x�]���0E��i�Z,ন�����K�&4i��~�%��7�w��s%��u���̒w�c��[�� E�8I.5JJ'��B[��0�qDی�5'�����a0�w7�3aF�+rt�e��U��Ѽ\�K�~y�S�F�\}��)�G�sBr��HT��.c_zqJ8      �   x   x�U��
�0���ǔMl,���7=zٶj�\�{C=�<o�q�k*1��Tr����D�<�%-q���+a�c����A�Ƹ�����x�Zir_7cp��5���]����lT1�     