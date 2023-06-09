PGDMP             	            {            coba    15.2    15.2 9    =           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            >           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            ?           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            @           1262    18454    coba    DATABASE     {   CREATE DATABASE coba WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_Indonesia.1252';
    DROP DATABASE coba;
                postgres    false            �            1259    18944    film    TABLE     |   CREATE TABLE public.film (
    film_code bigint NOT NULL,
    film_name character varying(255),
    is_premiered boolean
);
    DROP TABLE public.film;
       public         heap    postgres    false            �            1259    18943    film_film_code_seq    SEQUENCE     {   CREATE SEQUENCE public.film_film_code_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.film_film_code_seq;
       public          postgres    false    215            A           0    0    film_film_code_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.film_film_code_seq OWNED BY public.film.film_code;
          public          postgres    false    214            �            1259    18951    invoice    TABLE     �   CREATE TABLE public.invoice (
    invoice_id bigint NOT NULL,
    film_code bigint,
    schedule_id bigint,
    seat_id bigint
);
    DROP TABLE public.invoice;
       public         heap    postgres    false            �            1259    18950    invoice_invoice_id_seq    SEQUENCE        CREATE SEQUENCE public.invoice_invoice_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.invoice_invoice_id_seq;
       public          postgres    false    217            B           0    0    invoice_invoice_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.invoice_invoice_id_seq OWNED BY public.invoice.invoice_id;
          public          postgres    false    216            �            1259    19027    roles    TABLE     W   CREATE TABLE public.roles (
    id integer NOT NULL,
    name character varying(20)
);
    DROP TABLE public.roles;
       public         heap    postgres    false            �            1259    19026    roles_id_seq    SEQUENCE     �   CREATE SEQUENCE public.roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.roles_id_seq;
       public          postgres    false    223            C           0    0    roles_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.roles_id_seq OWNED BY public.roles.id;
          public          postgres    false    222            �            1259    18965    schedule    TABLE     �   CREATE TABLE public.schedule (
    schedule_id bigint NOT NULL,
    end_hour time without time zone,
    premiered_date date,
    price numeric(19,2),
    start_hour time without time zone,
    film_code bigint
);
    DROP TABLE public.schedule;
       public         heap    postgres    false            �            1259    18964    schedule_schedule_id_seq    SEQUENCE     �   CREATE SEQUENCE public.schedule_schedule_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.schedule_schedule_id_seq;
       public          postgres    false    219            D           0    0    schedule_schedule_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.schedule_schedule_id_seq OWNED BY public.schedule.schedule_id;
          public          postgres    false    218            �            1259    18972    seat    TABLE     �   CREATE TABLE public.seat (
    seat_id bigint NOT NULL,
    is_available boolean,
    seat_number character varying(255),
    studio character varying(255)
);
    DROP TABLE public.seat;
       public         heap    postgres    false            �            1259    18971    seat_seat_id_seq    SEQUENCE     y   CREATE SEQUENCE public.seat_seat_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.seat_seat_id_seq;
       public          postgres    false    221            E           0    0    seat_seat_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.seat_seat_id_seq OWNED BY public.seat.seat_id;
          public          postgres    false    220            �            1259    19033 
   user_roles    TABLE     ^   CREATE TABLE public.user_roles (
    user_id bigint NOT NULL,
    role_id integer NOT NULL
);
    DROP TABLE public.user_roles;
       public         heap    postgres    false            �            1259    19039    users    TABLE     �   CREATE TABLE public.users (
    id bigint NOT NULL,
    email character varying(50),
    password character varying(120),
    username character varying(20)
);
    DROP TABLE public.users;
       public         heap    postgres    false            �            1259    19038    users_id_seq    SEQUENCE     u   CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          postgres    false    226            F           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public          postgres    false    225            �           2604    18947    film film_code    DEFAULT     p   ALTER TABLE ONLY public.film ALTER COLUMN film_code SET DEFAULT nextval('public.film_film_code_seq'::regclass);
 =   ALTER TABLE public.film ALTER COLUMN film_code DROP DEFAULT;
       public          postgres    false    215    214    215            �           2604    18954    invoice invoice_id    DEFAULT     x   ALTER TABLE ONLY public.invoice ALTER COLUMN invoice_id SET DEFAULT nextval('public.invoice_invoice_id_seq'::regclass);
 A   ALTER TABLE public.invoice ALTER COLUMN invoice_id DROP DEFAULT;
       public          postgres    false    217    216    217            �           2604    19030    roles id    DEFAULT     d   ALTER TABLE ONLY public.roles ALTER COLUMN id SET DEFAULT nextval('public.roles_id_seq'::regclass);
 7   ALTER TABLE public.roles ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    222    223            �           2604    18968    schedule schedule_id    DEFAULT     |   ALTER TABLE ONLY public.schedule ALTER COLUMN schedule_id SET DEFAULT nextval('public.schedule_schedule_id_seq'::regclass);
 C   ALTER TABLE public.schedule ALTER COLUMN schedule_id DROP DEFAULT;
       public          postgres    false    218    219    219            �           2604    18975    seat seat_id    DEFAULT     l   ALTER TABLE ONLY public.seat ALTER COLUMN seat_id SET DEFAULT nextval('public.seat_seat_id_seq'::regclass);
 ;   ALTER TABLE public.seat ALTER COLUMN seat_id DROP DEFAULT;
       public          postgres    false    220    221    221            �           2604    19042    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    226    225    226            /          0    18944    film 
   TABLE DATA           B   COPY public.film (film_code, film_name, is_premiered) FROM stdin;
    public          postgres    false    215   �>       1          0    18951    invoice 
   TABLE DATA           N   COPY public.invoice (invoice_id, film_code, schedule_id, seat_id) FROM stdin;
    public          postgres    false    217   ?       7          0    19027    roles 
   TABLE DATA           )   COPY public.roles (id, name) FROM stdin;
    public          postgres    false    223   .?       3          0    18965    schedule 
   TABLE DATA           g   COPY public.schedule (schedule_id, end_hour, premiered_date, price, start_hour, film_code) FROM stdin;
    public          postgres    false    219   _?       5          0    18972    seat 
   TABLE DATA           J   COPY public.seat (seat_id, is_available, seat_number, studio) FROM stdin;
    public          postgres    false    221   �?       8          0    19033 
   user_roles 
   TABLE DATA           6   COPY public.user_roles (user_id, role_id) FROM stdin;
    public          postgres    false    224   �?       :          0    19039    users 
   TABLE DATA           >   COPY public.users (id, email, password, username) FROM stdin;
    public          postgres    false    226   �?       G           0    0    film_film_code_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.film_film_code_seq', 2, true);
          public          postgres    false    214            H           0    0    invoice_invoice_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.invoice_invoice_id_seq', 2, true);
          public          postgres    false    216            I           0    0    roles_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.roles_id_seq', 1, false);
          public          postgres    false    222            J           0    0    schedule_schedule_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.schedule_schedule_id_seq', 1, true);
          public          postgres    false    218            K           0    0    seat_seat_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.seat_seat_id_seq', 3, true);
          public          postgres    false    220            L           0    0    users_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.users_id_seq', 3, true);
          public          postgres    false    225            �           2606    18949    film film_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.film
    ADD CONSTRAINT film_pkey PRIMARY KEY (film_code);
 8   ALTER TABLE ONLY public.film DROP CONSTRAINT film_pkey;
       public            postgres    false    215            �           2606    18956    invoice invoice_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.invoice
    ADD CONSTRAINT invoice_pkey PRIMARY KEY (invoice_id);
 >   ALTER TABLE ONLY public.invoice DROP CONSTRAINT invoice_pkey;
       public            postgres    false    217            �           2606    19032    roles roles_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.roles DROP CONSTRAINT roles_pkey;
       public            postgres    false    223            �           2606    18970    schedule schedule_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.schedule
    ADD CONSTRAINT schedule_pkey PRIMARY KEY (schedule_id);
 @   ALTER TABLE ONLY public.schedule DROP CONSTRAINT schedule_pkey;
       public            postgres    false    219            �           2606    18979    seat seat_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY public.seat
    ADD CONSTRAINT seat_pkey PRIMARY KEY (seat_id);
 8   ALTER TABLE ONLY public.seat DROP CONSTRAINT seat_pkey;
       public            postgres    false    221            �           2606    19048 !   users uk6dotkott2kjsp8vw4d0m25fb7 
   CONSTRAINT     ]   ALTER TABLE ONLY public.users
    ADD CONSTRAINT uk6dotkott2kjsp8vw4d0m25fb7 UNIQUE (email);
 K   ALTER TABLE ONLY public.users DROP CONSTRAINT uk6dotkott2kjsp8vw4d0m25fb7;
       public            postgres    false    226            �           2606    19046 !   users ukr43af9ap4edm43mmtq01oddj6 
   CONSTRAINT     `   ALTER TABLE ONLY public.users
    ADD CONSTRAINT ukr43af9ap4edm43mmtq01oddj6 UNIQUE (username);
 K   ALTER TABLE ONLY public.users DROP CONSTRAINT ukr43af9ap4edm43mmtq01oddj6;
       public            postgres    false    226            �           2606    19037    user_roles user_roles_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.user_roles
    ADD CONSTRAINT user_roles_pkey PRIMARY KEY (user_id, role_id);
 D   ALTER TABLE ONLY public.user_roles DROP CONSTRAINT user_roles_pkey;
       public            postgres    false    224    224            �           2606    19044    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    226            �           2606    19006 #   invoice fk4fs9qdtdyh5og6q0j4stqp069    FK CONSTRAINT     �   ALTER TABLE ONLY public.invoice
    ADD CONSTRAINT fk4fs9qdtdyh5og6q0j4stqp069 FOREIGN KEY (seat_id) REFERENCES public.seat(seat_id);
 M   ALTER TABLE ONLY public.invoice DROP CONSTRAINT fk4fs9qdtdyh5og6q0j4stqp069;
       public          postgres    false    217    3215    221            �           2606    18996 #   invoice fkcu0v7f81t9hs3mwenmuthtj4x    FK CONSTRAINT     �   ALTER TABLE ONLY public.invoice
    ADD CONSTRAINT fkcu0v7f81t9hs3mwenmuthtj4x FOREIGN KEY (film_code) REFERENCES public.film(film_code);
 M   ALTER TABLE ONLY public.invoice DROP CONSTRAINT fkcu0v7f81t9hs3mwenmuthtj4x;
       public          postgres    false    217    3209    215            �           2606    19001 #   invoice fkgreabgftjtgq2qbq8wt9x7gdy    FK CONSTRAINT     �   ALTER TABLE ONLY public.invoice
    ADD CONSTRAINT fkgreabgftjtgq2qbq8wt9x7gdy FOREIGN KEY (schedule_id) REFERENCES public.schedule(schedule_id);
 M   ALTER TABLE ONLY public.invoice DROP CONSTRAINT fkgreabgftjtgq2qbq8wt9x7gdy;
       public          postgres    false    219    3213    217            �           2606    19049 &   user_roles fkh8ciramu9cc9q3qcqiv4ue8a6    FK CONSTRAINT     �   ALTER TABLE ONLY public.user_roles
    ADD CONSTRAINT fkh8ciramu9cc9q3qcqiv4ue8a6 FOREIGN KEY (role_id) REFERENCES public.roles(id);
 P   ALTER TABLE ONLY public.user_roles DROP CONSTRAINT fkh8ciramu9cc9q3qcqiv4ue8a6;
       public          postgres    false    224    3217    223            �           2606    19054 &   user_roles fkhfh9dx7w3ubf1co1vdev94g3f    FK CONSTRAINT     �   ALTER TABLE ONLY public.user_roles
    ADD CONSTRAINT fkhfh9dx7w3ubf1co1vdev94g3f FOREIGN KEY (user_id) REFERENCES public.users(id);
 P   ALTER TABLE ONLY public.user_roles DROP CONSTRAINT fkhfh9dx7w3ubf1co1vdev94g3f;
       public          postgres    false    224    3225    226            �           2606    19011 $   schedule fkkheidstqtjyr64dhrg5yajujy    FK CONSTRAINT     �   ALTER TABLE ONLY public.schedule
    ADD CONSTRAINT fkkheidstqtjyr64dhrg5yajujy FOREIGN KEY (film_code) REFERENCES public.film(film_code);
 N   ALTER TABLE ONLY public.schedule DROP CONSTRAINT fkkheidstqtjyr64dhrg5yajujy;
       public          postgres    false    219    215    3209            /   <   x�3�L���MJ,*�,�2�tr��J2r�3�b���̔�l����ļt�h� <�      1      x�3�4�4�4��@:F��� !}      7   !   x�3���q�wt����2�pB�]��b���� s��      3   ,   x�3�44�20 "N##c]S]CKNc ���$�b���� �j�      5   !   x�3�,�4t�4�22�@c �Ĉ���� V��      8      x�3�4�2�4�2�1z\\\ 3      :   �   x�e�Kr�0  �59�$�Dw-�VK����045���:v�;�s,ʕ�^ZE���W��R����R5���u²5�T-D9�ثp*���?��%�$O��?�et3<�K�;�bFp؞��UňȍI~�u�vG|%��Ss�=,�|\���b|.;�IV��.�ws��#�C��7^5�3,�ߤ�: ����o��? p��O�     