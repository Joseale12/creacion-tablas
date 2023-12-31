PGDMP     7                    {            Business    15.3    15.3 #               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16429    Business    DATABASE     �   CREATE DATABASE "Business" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Colombia.1252';
    DROP DATABASE "Business";
                postgres    false            �            1259    16438    category    TABLE     m   CREATE TABLE public.category (
    category_id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.category;
       public         heap    postgres    false            �            1259    16437    category_category_id_seq    SEQUENCE     �   CREATE SEQUENCE public.category_category_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.category_category_id_seq;
       public          postgres    false    217                       0    0    category_category_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.category_category_id_seq OWNED BY public.category.category_id;
          public          postgres    false    216            �            1259    16452    part    TABLE     �   CREATE TABLE public.part (
    part_id integer NOT NULL,
    code character varying(10) NOT NULL,
    name character varying(150) NOT NULL,
    color character varying(20) NOT NULL,
    price money NOT NULL,
    category integer NOT NULL
);
    DROP TABLE public.part;
       public         heap    postgres    false            �            1259    16451    part_part_id_seq    SEQUENCE     �   CREATE SEQUENCE public.part_part_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.part_part_id_seq;
       public          postgres    false    219                        0    0    part_part_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.part_part_id_seq OWNED BY public.part.part_id;
          public          postgres    false    218            �            1259    16464    part_supplied    TABLE     �   CREATE TABLE public.part_supplied (
    parts_supplied_id integer NOT NULL,
    suplplier_code integer NOT NULL,
    amount character varying(10) NOT NULL,
    deliver_date date NOT NULL,
    parts_supplied integer NOT NULL
);
 !   DROP TABLE public.part_supplied;
       public         heap    postgres    false            �            1259    16463 #   part_supplied_parts_supplied_id_seq    SEQUENCE     �   CREATE SEQUENCE public.part_supplied_parts_supplied_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.part_supplied_parts_supplied_id_seq;
       public          postgres    false    221            !           0    0 #   part_supplied_parts_supplied_id_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.part_supplied_parts_supplied_id_seq OWNED BY public.part_supplied.parts_supplied_id;
          public          postgres    false    220            �            1259    16431    supplier    TABLE     �   CREATE TABLE public.supplier (
    supplierid integer NOT NULL,
    name character varying(150) NOT NULL,
    addres_house character varying(150) NOT NULL,
    city character varying(50) NOT NULL,
    province character varying(50) NOT NULL
);
    DROP TABLE public.supplier;
       public         heap    postgres    false            �            1259    16430    supplier_supplierid_seq    SEQUENCE     �   CREATE SEQUENCE public.supplier_supplierid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.supplier_supplierid_seq;
       public          postgres    false    215            "           0    0    supplier_supplierid_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.supplier_supplierid_seq OWNED BY public.supplier.supplierid;
          public          postgres    false    214            u           2604    16441    category category_id    DEFAULT     |   ALTER TABLE ONLY public.category ALTER COLUMN category_id SET DEFAULT nextval('public.category_category_id_seq'::regclass);
 C   ALTER TABLE public.category ALTER COLUMN category_id DROP DEFAULT;
       public          postgres    false    216    217    217            v           2604    16455    part part_id    DEFAULT     l   ALTER TABLE ONLY public.part ALTER COLUMN part_id SET DEFAULT nextval('public.part_part_id_seq'::regclass);
 ;   ALTER TABLE public.part ALTER COLUMN part_id DROP DEFAULT;
       public          postgres    false    218    219    219            w           2604    16467    part_supplied parts_supplied_id    DEFAULT     �   ALTER TABLE ONLY public.part_supplied ALTER COLUMN parts_supplied_id SET DEFAULT nextval('public.part_supplied_parts_supplied_id_seq'::regclass);
 N   ALTER TABLE public.part_supplied ALTER COLUMN parts_supplied_id DROP DEFAULT;
       public          postgres    false    220    221    221            t           2604    16434    supplier supplierid    DEFAULT     z   ALTER TABLE ONLY public.supplier ALTER COLUMN supplierid SET DEFAULT nextval('public.supplier_supplierid_seq'::regclass);
 B   ALTER TABLE public.supplier ALTER COLUMN supplierid DROP DEFAULT;
       public          postgres    false    215    214    215                      0    16438    category 
   TABLE DATA           5   COPY public.category (category_id, name) FROM stdin;
    public          postgres    false    217   �(                 0    16452    part 
   TABLE DATA           K   COPY public.part (part_id, code, name, color, price, category) FROM stdin;
    public          postgres    false    219   �(                 0    16464    part_supplied 
   TABLE DATA           p   COPY public.part_supplied (parts_supplied_id, suplplier_code, amount, deliver_date, parts_supplied) FROM stdin;
    public          postgres    false    221   )                 0    16431    supplier 
   TABLE DATA           R   COPY public.supplier (supplierid, name, addres_house, city, province) FROM stdin;
    public          postgres    false    215   +)       #           0    0    category_category_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.category_category_id_seq', 1, false);
          public          postgres    false    216            $           0    0    part_part_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.part_part_id_seq', 1, false);
          public          postgres    false    218            %           0    0 #   part_supplied_parts_supplied_id_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.part_supplied_parts_supplied_id_seq', 1, false);
          public          postgres    false    220            &           0    0    supplier_supplierid_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.supplier_supplierid_seq', 1, false);
          public          postgres    false    214            {           2606    16443    category category_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.category
    ADD CONSTRAINT category_pkey PRIMARY KEY (category_id);
 @   ALTER TABLE ONLY public.category DROP CONSTRAINT category_pkey;
       public            postgres    false    217            }           2606    16457    part part_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY public.part
    ADD CONSTRAINT part_pkey PRIMARY KEY (part_id);
 8   ALTER TABLE ONLY public.part DROP CONSTRAINT part_pkey;
       public            postgres    false    219                       2606    16469     part_supplied part_supplied_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY public.part_supplied
    ADD CONSTRAINT part_supplied_pkey PRIMARY KEY (parts_supplied_id);
 J   ALTER TABLE ONLY public.part_supplied DROP CONSTRAINT part_supplied_pkey;
       public            postgres    false    221            y           2606    16436    supplier supplier_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.supplier
    ADD CONSTRAINT supplier_pkey PRIMARY KEY (supplierid);
 @   ALTER TABLE ONLY public.supplier DROP CONSTRAINT supplier_pkey;
       public            postgres    false    215            �           2606    16458    part part_category_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.part
    ADD CONSTRAINT part_category_fkey FOREIGN KEY (category) REFERENCES public.category(category_id);
 A   ALTER TABLE ONLY public.part DROP CONSTRAINT part_category_fkey;
       public          postgres    false    219    3195    217            �           2606    16475 /   part_supplied part_supplied_parts_supplied_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.part_supplied
    ADD CONSTRAINT part_supplied_parts_supplied_fkey FOREIGN KEY (parts_supplied) REFERENCES public.part(part_id);
 Y   ALTER TABLE ONLY public.part_supplied DROP CONSTRAINT part_supplied_parts_supplied_fkey;
       public          postgres    false    221    3197    219            �           2606    16470 /   part_supplied part_supplied_suplplier_code_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.part_supplied
    ADD CONSTRAINT part_supplied_suplplier_code_fkey FOREIGN KEY (suplplier_code) REFERENCES public.supplier(supplierid);
 Y   ALTER TABLE ONLY public.part_supplied DROP CONSTRAINT part_supplied_suplplier_code_fkey;
       public          postgres    false    3193    221    215                  x������ � �            x������ � �            x������ � �            x������ � �     