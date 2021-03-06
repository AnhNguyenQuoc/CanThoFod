PGDMP                      
    v            LuanVanBackUp_development    9.5.15    9.5.15 �    Y	           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            Z	           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            [	           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            \	           1262    16385    LuanVanBackUp_development    DATABASE     �   CREATE DATABASE "LuanVanBackUp_development" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_US.UTF-8' LC_CTYPE = 'en_US.UTF-8';
 +   DROP DATABASE "LuanVanBackUp_development";
             anh    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            ]	           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    6            ^	           0    0    SCHEMA public    ACL     �   REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;
                  postgres    false    6                        3079    12397    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false            _	           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    1            �            1259    16461    active_storage_attachments    TABLE       CREATE TABLE public.active_storage_attachments (
    id bigint NOT NULL,
    name character varying NOT NULL,
    record_type character varying NOT NULL,
    record_id bigint NOT NULL,
    blob_id bigint NOT NULL,
    created_at timestamp without time zone NOT NULL
);
 .   DROP TABLE public.active_storage_attachments;
       public         anh    false    6            �            1259    16459 !   active_storage_attachments_id_seq    SEQUENCE     �   CREATE SEQUENCE public.active_storage_attachments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.active_storage_attachments_id_seq;
       public       anh    false    6    192            `	           0    0 !   active_storage_attachments_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.active_storage_attachments_id_seq OWNED BY public.active_storage_attachments.id;
            public       anh    false    191            �            1259    16449    active_storage_blobs    TABLE     F  CREATE TABLE public.active_storage_blobs (
    id bigint NOT NULL,
    key character varying NOT NULL,
    filename character varying NOT NULL,
    content_type character varying,
    metadata text,
    byte_size bigint NOT NULL,
    checksum character varying NOT NULL,
    created_at timestamp without time zone NOT NULL
);
 (   DROP TABLE public.active_storage_blobs;
       public         anh    false    6            �            1259    16447    active_storage_blobs_id_seq    SEQUENCE     �   CREATE SEQUENCE public.active_storage_blobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.active_storage_blobs_id_seq;
       public       anh    false    6    190            a	           0    0    active_storage_blobs_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.active_storage_blobs_id_seq OWNED BY public.active_storage_blobs.id;
            public       anh    false    189            �            1259    16395    ar_internal_metadata    TABLE     �   CREATE TABLE public.ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);
 (   DROP TABLE public.ar_internal_metadata;
       public         anh    false    6            �            1259    16503    carts    TABLE     �   CREATE TABLE public.carts (
    id bigint NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);
    DROP TABLE public.carts;
       public         anh    false    6            �            1259    16501    carts_id_seq    SEQUENCE     u   CREATE SEQUENCE public.carts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.carts_id_seq;
       public       anh    false    6    196            b	           0    0    carts_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.carts_id_seq OWNED BY public.carts.id;
            public       anh    false    195            �            1259    16608    comments    TABLE     0  CREATE TABLE public.comments (
    id bigint NOT NULL,
    description character varying DEFAULT ''::character varying,
    rating integer DEFAULT 0,
    user_id bigint,
    restaurant_id bigint,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);
    DROP TABLE public.comments;
       public         anh    false    6            �            1259    16606    comments_id_seq    SEQUENCE     x   CREATE SEQUENCE public.comments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.comments_id_seq;
       public       anh    false    208    6            c	           0    0    comments_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.comments_id_seq OWNED BY public.comments.id;
            public       anh    false    207            �            1259    16666    coupons    TABLE     �   CREATE TABLE public.coupons (
    id bigint NOT NULL,
    code character varying,
    amount integer DEFAULT 0,
    expiration date,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);
    DROP TABLE public.coupons;
       public         anh    false    6            �            1259    16664    coupons_id_seq    SEQUENCE     w   CREATE SEQUENCE public.coupons_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.coupons_id_seq;
       public       anh    false    212    6            d	           0    0    coupons_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.coupons_id_seq OWNED BY public.coupons.id;
            public       anh    false    211            �            1259    16720    delayed_jobs    TABLE     �  CREATE TABLE public.delayed_jobs (
    id bigint NOT NULL,
    priority integer DEFAULT 0 NOT NULL,
    attempts integer DEFAULT 0 NOT NULL,
    handler text NOT NULL,
    last_error text,
    run_at timestamp without time zone,
    locked_at timestamp without time zone,
    failed_at timestamp without time zone,
    locked_by character varying,
    queue character varying,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);
     DROP TABLE public.delayed_jobs;
       public         anh    false    6            �            1259    16718    delayed_jobs_id_seq    SEQUENCE     |   CREATE SEQUENCE public.delayed_jobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.delayed_jobs_id_seq;
       public       anh    false    216    6            e	           0    0    delayed_jobs_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.delayed_jobs_id_seq OWNED BY public.delayed_jobs.id;
            public       anh    false    215            �            1259    16405 	   districts    TABLE     �   CREATE TABLE public.districts (
    id bigint NOT NULL,
    name character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);
    DROP TABLE public.districts;
       public         anh    false    6            �            1259    16403    districts_id_seq    SEQUENCE     y   CREATE SEQUENCE public.districts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.districts_id_seq;
       public       anh    false    6    184            f	           0    0    districts_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.districts_id_seq OWNED BY public.districts.id;
            public       anh    false    183            �            1259    16511 
   line_items    TABLE       CREATE TABLE public.line_items (
    id bigint NOT NULL,
    product_id bigint,
    cart_id bigint,
    quantity integer DEFAULT 1 NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    order_id bigint
);
    DROP TABLE public.line_items;
       public         anh    false    6            �            1259    16509    line_items_id_seq    SEQUENCE     z   CREATE SEQUENCE public.line_items_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.line_items_id_seq;
       public       anh    false    6    198            g	           0    0    line_items_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.line_items_id_seq OWNED BY public.line_items.id;
            public       anh    false    197            �            1259    16583    order_types    TABLE     �   CREATE TABLE public.order_types (
    id bigint NOT NULL,
    name character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);
    DROP TABLE public.order_types;
       public         anh    false    6            �            1259    16581    order_types_id_seq    SEQUENCE     {   CREATE SEQUENCE public.order_types_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.order_types_id_seq;
       public       anh    false    206    6            h	           0    0    order_types_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.order_types_id_seq OWNED BY public.order_types.id;
            public       anh    false    205            �            1259    16532    orders    TABLE     o  CREATE TABLE public.orders (
    id bigint NOT NULL,
    total integer,
    note character varying,
    feeship integer,
    buyer_id integer,
    shipper_id integer,
    payments integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    order_type_id bigint DEFAULT 1,
    card_token character varying
);
    DROP TABLE public.orders;
       public         anh    false    6            �            1259    16530    orders_id_seq    SEQUENCE     v   CREATE SEQUENCE public.orders_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.orders_id_seq;
       public       anh    false    200    6            i	           0    0    orders_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.orders_id_seq OWNED BY public.orders.id;
            public       anh    false    199            �            1259    16549    product_types    TABLE     �   CREATE TABLE public.product_types (
    id bigint NOT NULL,
    name character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);
 !   DROP TABLE public.product_types;
       public         anh    false    6            �            1259    16547    product_types_id_seq    SEQUENCE     }   CREATE SEQUENCE public.product_types_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.product_types_id_seq;
       public       anh    false    202    6            j	           0    0    product_types_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.product_types_id_seq OWNED BY public.product_types.id;
            public       anh    false    201            �            1259    16486    products    TABLE     :  CREATE TABLE public.products (
    id bigint NOT NULL,
    name character varying NOT NULL,
    description character varying,
    price numeric(10,2),
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    restaurant_id bigint,
    product_type_id bigint
);
    DROP TABLE public.products;
       public         anh    false    6            �            1259    16484    products_id_seq    SEQUENCE     x   CREATE SEQUENCE public.products_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.products_id_seq;
       public       anh    false    194    6            k	           0    0    products_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.products_id_seq OWNED BY public.products.id;
            public       anh    false    193            �            1259    16690    restaurant_favorites    TABLE     �   CREATE TABLE public.restaurant_favorites (
    id bigint NOT NULL,
    restaurant_id bigint,
    user_id bigint,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);
 (   DROP TABLE public.restaurant_favorites;
       public         anh    false    6            �            1259    16688    restaurant_favorites_id_seq    SEQUENCE     �   CREATE SEQUENCE public.restaurant_favorites_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.restaurant_favorites_id_seq;
       public       anh    false    214    6            l	           0    0    restaurant_favorites_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.restaurant_favorites_id_seq OWNED BY public.restaurant_favorites.id;
            public       anh    false    213            �            1259    16560    restaurant_types    TABLE     �   CREATE TABLE public.restaurant_types (
    id bigint NOT NULL,
    name character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);
 $   DROP TABLE public.restaurant_types;
       public         anh    false    6            �            1259    16558    restaurant_types_id_seq    SEQUENCE     �   CREATE SEQUENCE public.restaurant_types_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.restaurant_types_id_seq;
       public       anh    false    204    6            m	           0    0    restaurant_types_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.restaurant_types_id_seq OWNED BY public.restaurant_types.id;
            public       anh    false    203            �            1259    16438    restaurants    TABLE     �  CREATE TABLE public.restaurants (
    id bigint NOT NULL,
    name character varying NOT NULL,
    phone character varying NOT NULL,
    address character varying NOT NULL,
    description character varying NOT NULL,
    timeopen time without time zone NOT NULL,
    timeclose time without time zone NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    user_id bigint,
    district_id bigint,
    restaurant_type_id bigint
);
    DROP TABLE public.restaurants;
       public         anh    false    6            �            1259    16436    restaurants_id_seq    SEQUENCE     {   CREATE SEQUENCE public.restaurants_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.restaurants_id_seq;
       public       anh    false    188    6            n	           0    0    restaurants_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.restaurants_id_seq OWNED BY public.restaurants.id;
            public       anh    false    187            �            1259    16633    roles    TABLE     �   CREATE TABLE public.roles (
    id bigint NOT NULL,
    name character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);
    DROP TABLE public.roles;
       public         anh    false    6            �            1259    16631    roles_id_seq    SEQUENCE     u   CREATE SEQUENCE public.roles_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.roles_id_seq;
       public       anh    false    210    6            o	           0    0    roles_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.roles_id_seq OWNED BY public.roles.id;
            public       anh    false    209            �            1259    16387    schema_migrations    TABLE     R   CREATE TABLE public.schema_migrations (
    version character varying NOT NULL
);
 %   DROP TABLE public.schema_migrations;
       public         anh    false    6            �            1259    16416    users    TABLE        CREATE TABLE public.users (
    id bigint NOT NULL,
    email character varying DEFAULT ''::character varying NOT NULL,
    password_digest character varying,
    username character varying DEFAULT ''::character varying,
    address character varying DEFAULT ''::character varying,
    phone character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    role_id bigint,
    district_id bigint,
    uid character varying,
    provider character varying,
    remember_digest character varying,
    activation_digest character varying,
    activated boolean DEFAULT false,
    activated_at timestamp without time zone,
    reset_digest character varying,
    reset_sent_at timestamp without time zone
);
    DROP TABLE public.users;
       public         anh    false    6            �            1259    16414    users_id_seq    SEQUENCE     u   CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public       anh    false    186    6            p	           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
            public       anh    false    185            e           2604    16464    id    DEFAULT     �   ALTER TABLE ONLY public.active_storage_attachments ALTER COLUMN id SET DEFAULT nextval('public.active_storage_attachments_id_seq'::regclass);
 L   ALTER TABLE public.active_storage_attachments ALTER COLUMN id DROP DEFAULT;
       public       anh    false    192    191    192            d           2604    16452    id    DEFAULT     �   ALTER TABLE ONLY public.active_storage_blobs ALTER COLUMN id SET DEFAULT nextval('public.active_storage_blobs_id_seq'::regclass);
 F   ALTER TABLE public.active_storage_blobs ALTER COLUMN id DROP DEFAULT;
       public       anh    false    190    189    190            g           2604    16506    id    DEFAULT     d   ALTER TABLE ONLY public.carts ALTER COLUMN id SET DEFAULT nextval('public.carts_id_seq'::regclass);
 7   ALTER TABLE public.carts ALTER COLUMN id DROP DEFAULT;
       public       anh    false    195    196    196            o           2604    16611    id    DEFAULT     j   ALTER TABLE ONLY public.comments ALTER COLUMN id SET DEFAULT nextval('public.comments_id_seq'::regclass);
 :   ALTER TABLE public.comments ALTER COLUMN id DROP DEFAULT;
       public       anh    false    208    207    208            s           2604    16669    id    DEFAULT     h   ALTER TABLE ONLY public.coupons ALTER COLUMN id SET DEFAULT nextval('public.coupons_id_seq'::regclass);
 9   ALTER TABLE public.coupons ALTER COLUMN id DROP DEFAULT;
       public       anh    false    211    212    212            v           2604    16723    id    DEFAULT     r   ALTER TABLE ONLY public.delayed_jobs ALTER COLUMN id SET DEFAULT nextval('public.delayed_jobs_id_seq'::regclass);
 >   ALTER TABLE public.delayed_jobs ALTER COLUMN id DROP DEFAULT;
       public       anh    false    215    216    216            ]           2604    16408    id    DEFAULT     l   ALTER TABLE ONLY public.districts ALTER COLUMN id SET DEFAULT nextval('public.districts_id_seq'::regclass);
 ;   ALTER TABLE public.districts ALTER COLUMN id DROP DEFAULT;
       public       anh    false    183    184    184            h           2604    16514    id    DEFAULT     n   ALTER TABLE ONLY public.line_items ALTER COLUMN id SET DEFAULT nextval('public.line_items_id_seq'::regclass);
 <   ALTER TABLE public.line_items ALTER COLUMN id DROP DEFAULT;
       public       anh    false    197    198    198            n           2604    16586    id    DEFAULT     p   ALTER TABLE ONLY public.order_types ALTER COLUMN id SET DEFAULT nextval('public.order_types_id_seq'::regclass);
 =   ALTER TABLE public.order_types ALTER COLUMN id DROP DEFAULT;
       public       anh    false    206    205    206            j           2604    16535    id    DEFAULT     f   ALTER TABLE ONLY public.orders ALTER COLUMN id SET DEFAULT nextval('public.orders_id_seq'::regclass);
 8   ALTER TABLE public.orders ALTER COLUMN id DROP DEFAULT;
       public       anh    false    200    199    200            l           2604    16552    id    DEFAULT     t   ALTER TABLE ONLY public.product_types ALTER COLUMN id SET DEFAULT nextval('public.product_types_id_seq'::regclass);
 ?   ALTER TABLE public.product_types ALTER COLUMN id DROP DEFAULT;
       public       anh    false    202    201    202            f           2604    16489    id    DEFAULT     j   ALTER TABLE ONLY public.products ALTER COLUMN id SET DEFAULT nextval('public.products_id_seq'::regclass);
 :   ALTER TABLE public.products ALTER COLUMN id DROP DEFAULT;
       public       anh    false    194    193    194            u           2604    16693    id    DEFAULT     �   ALTER TABLE ONLY public.restaurant_favorites ALTER COLUMN id SET DEFAULT nextval('public.restaurant_favorites_id_seq'::regclass);
 F   ALTER TABLE public.restaurant_favorites ALTER COLUMN id DROP DEFAULT;
       public       anh    false    214    213    214            m           2604    16563    id    DEFAULT     z   ALTER TABLE ONLY public.restaurant_types ALTER COLUMN id SET DEFAULT nextval('public.restaurant_types_id_seq'::regclass);
 B   ALTER TABLE public.restaurant_types ALTER COLUMN id DROP DEFAULT;
       public       anh    false    204    203    204            c           2604    16441    id    DEFAULT     p   ALTER TABLE ONLY public.restaurants ALTER COLUMN id SET DEFAULT nextval('public.restaurants_id_seq'::regclass);
 =   ALTER TABLE public.restaurants ALTER COLUMN id DROP DEFAULT;
       public       anh    false    188    187    188            r           2604    16636    id    DEFAULT     d   ALTER TABLE ONLY public.roles ALTER COLUMN id SET DEFAULT nextval('public.roles_id_seq'::regclass);
 7   ALTER TABLE public.roles ALTER COLUMN id DROP DEFAULT;
       public       anh    false    209    210    210            ^           2604    16419    id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public       anh    false    185    186    186            >	          0    16461    active_storage_attachments 
   TABLE DATA               k   COPY public.active_storage_attachments (id, name, record_type, record_id, blob_id, created_at) FROM stdin;
    public       anh    false    192   N�       q	           0    0 !   active_storage_attachments_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.active_storage_attachments_id_seq', 54, true);
            public       anh    false    191            <	          0    16449    active_storage_blobs 
   TABLE DATA               z   COPY public.active_storage_blobs (id, key, filename, content_type, metadata, byte_size, checksum, created_at) FROM stdin;
    public       anh    false    190   ��       r	           0    0    active_storage_blobs_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.active_storage_blobs_id_seq', 78, true);
            public       anh    false    189            4	          0    16395    ar_internal_metadata 
   TABLE DATA               R   COPY public.ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
    public       anh    false    182   ��       B	          0    16503    carts 
   TABLE DATA               ;   COPY public.carts (id, created_at, updated_at) FROM stdin;
    public       anh    false    196   6�       s	           0    0    carts_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.carts_id_seq', 40, true);
            public       anh    false    195            N	          0    16608    comments 
   TABLE DATA               k   COPY public.comments (id, description, rating, user_id, restaurant_id, created_at, updated_at) FROM stdin;
    public       anh    false    208   ��       t	           0    0    comments_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.comments_id_seq', 39, true);
            public       anh    false    207            R	          0    16666    coupons 
   TABLE DATA               W   COPY public.coupons (id, code, amount, expiration, created_at, updated_at) FROM stdin;
    public       anh    false    212   ��       u	           0    0    coupons_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.coupons_id_seq', 4, true);
            public       anh    false    211            V	          0    16720    delayed_jobs 
   TABLE DATA               �   COPY public.delayed_jobs (id, priority, attempts, handler, last_error, run_at, locked_at, failed_at, locked_by, queue, created_at, updated_at) FROM stdin;
    public       anh    false    216   ��       v	           0    0    delayed_jobs_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.delayed_jobs_id_seq', 2, true);
            public       anh    false    215            6	          0    16405 	   districts 
   TABLE DATA               E   COPY public.districts (id, name, created_at, updated_at) FROM stdin;
    public       anh    false    184   ��       w	           0    0    districts_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.districts_id_seq', 10, true);
            public       anh    false    183            D	          0    16511 
   line_items 
   TABLE DATA               i   COPY public.line_items (id, product_id, cart_id, quantity, created_at, updated_at, order_id) FROM stdin;
    public       anh    false    198   G�       x	           0    0    line_items_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.line_items_id_seq', 40, true);
            public       anh    false    197            L	          0    16583    order_types 
   TABLE DATA               G   COPY public.order_types (id, name, created_at, updated_at) FROM stdin;
    public       anh    false    206   ��       y	           0    0    order_types_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.order_types_id_seq', 4, true);
            public       anh    false    205            F	          0    16532    orders 
   TABLE DATA               �   COPY public.orders (id, total, note, feeship, buyer_id, shipper_id, payments, created_at, updated_at, order_type_id, card_token) FROM stdin;
    public       anh    false    200   G�       z	           0    0    orders_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.orders_id_seq', 13, true);
            public       anh    false    199            H	          0    16549    product_types 
   TABLE DATA               I   COPY public.product_types (id, name, created_at, updated_at) FROM stdin;
    public       anh    false    202   i�       {	           0    0    product_types_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.product_types_id_seq', 8, true);
            public       anh    false    201            @	          0    16486    products 
   TABLE DATA               x   COPY public.products (id, name, description, price, created_at, updated_at, restaurant_id, product_type_id) FROM stdin;
    public       anh    false    194   U�       |	           0    0    products_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.products_id_seq', 11, true);
            public       anh    false    193            T	          0    16690    restaurant_favorites 
   TABLE DATA               b   COPY public.restaurant_favorites (id, restaurant_id, user_id, created_at, updated_at) FROM stdin;
    public       anh    false    214   ��       }	           0    0    restaurant_favorites_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.restaurant_favorites_id_seq', 8, true);
            public       anh    false    213            J	          0    16560    restaurant_types 
   TABLE DATA               L   COPY public.restaurant_types (id, name, created_at, updated_at) FROM stdin;
    public       anh    false    204   3�       ~	           0    0    restaurant_types_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.restaurant_types_id_seq', 5, true);
            public       anh    false    203            :	          0    16438    restaurants 
   TABLE DATA               �   COPY public.restaurants (id, name, phone, address, description, timeopen, timeclose, created_at, updated_at, user_id, district_id, restaurant_type_id) FROM stdin;
    public       anh    false    188   ��       	           0    0    restaurants_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.restaurants_id_seq', 4, true);
            public       anh    false    187            P	          0    16633    roles 
   TABLE DATA               A   COPY public.roles (id, name, created_at, updated_at) FROM stdin;
    public       anh    false    210   %�       �	           0    0    roles_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.roles_id_seq', 4, true);
            public       anh    false    209            3	          0    16387    schema_migrations 
   TABLE DATA               4   COPY public.schema_migrations (version) FROM stdin;
    public       anh    false    181   ��       8	          0    16416    users 
   TABLE DATA               �   COPY public.users (id, email, password_digest, username, address, phone, created_at, updated_at, role_id, district_id, uid, provider, remember_digest, activation_digest, activated, activated_at, reset_digest, reset_sent_at) FROM stdin;
    public       anh    false    186   l�       �	           0    0    users_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.users_id_seq', 42, true);
            public       anh    false    185            �           2606    16469    active_storage_attachments_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.active_storage_attachments
    ADD CONSTRAINT active_storage_attachments_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.active_storage_attachments DROP CONSTRAINT active_storage_attachments_pkey;
       public         anh    false    192    192            �           2606    16457    active_storage_blobs_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.active_storage_blobs
    ADD CONSTRAINT active_storage_blobs_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.active_storage_blobs DROP CONSTRAINT active_storage_blobs_pkey;
       public         anh    false    190    190            |           2606    16402    ar_internal_metadata_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY public.ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);
 X   ALTER TABLE ONLY public.ar_internal_metadata DROP CONSTRAINT ar_internal_metadata_pkey;
       public         anh    false    182    182            �           2606    16508 
   carts_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.carts
    ADD CONSTRAINT carts_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.carts DROP CONSTRAINT carts_pkey;
       public         anh    false    196    196            �           2606    16618    comments_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.comments
    ADD CONSTRAINT comments_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.comments DROP CONSTRAINT comments_pkey;
       public         anh    false    208    208            �           2606    16675    coupons_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.coupons
    ADD CONSTRAINT coupons_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.coupons DROP CONSTRAINT coupons_pkey;
       public         anh    false    212    212            �           2606    16730    delayed_jobs_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.delayed_jobs
    ADD CONSTRAINT delayed_jobs_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.delayed_jobs DROP CONSTRAINT delayed_jobs_pkey;
       public         anh    false    216    216            ~           2606    16413    districts_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.districts
    ADD CONSTRAINT districts_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.districts DROP CONSTRAINT districts_pkey;
       public         anh    false    184    184            �           2606    16517    line_items_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.line_items
    ADD CONSTRAINT line_items_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.line_items DROP CONSTRAINT line_items_pkey;
       public         anh    false    198    198            �           2606    16591    order_types_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.order_types
    ADD CONSTRAINT order_types_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.order_types DROP CONSTRAINT order_types_pkey;
       public         anh    false    206    206            �           2606    16540    orders_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.orders DROP CONSTRAINT orders_pkey;
       public         anh    false    200    200            �           2606    16557    product_types_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.product_types
    ADD CONSTRAINT product_types_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.product_types DROP CONSTRAINT product_types_pkey;
       public         anh    false    202    202            �           2606    16494    products_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.products DROP CONSTRAINT products_pkey;
       public         anh    false    194    194            �           2606    16695    restaurant_favorites_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.restaurant_favorites
    ADD CONSTRAINT restaurant_favorites_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.restaurant_favorites DROP CONSTRAINT restaurant_favorites_pkey;
       public         anh    false    214    214            �           2606    16568    restaurant_types_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.restaurant_types
    ADD CONSTRAINT restaurant_types_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.restaurant_types DROP CONSTRAINT restaurant_types_pkey;
       public         anh    false    204    204            �           2606    16446    restaurants_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.restaurants
    ADD CONSTRAINT restaurants_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.restaurants DROP CONSTRAINT restaurants_pkey;
       public         anh    false    188    188            �           2606    16641 
   roles_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.roles DROP CONSTRAINT roles_pkey;
       public         anh    false    210    210            z           2606    16394    schema_migrations_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY public.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);
 R   ALTER TABLE ONLY public.schema_migrations DROP CONSTRAINT schema_migrations_pkey;
       public         anh    false    181    181            �           2606    16427 
   users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public         anh    false    186    186            �           1259    16731    delayed_jobs_priority    INDEX     Z   CREATE INDEX delayed_jobs_priority ON public.delayed_jobs USING btree (priority, run_at);
 )   DROP INDEX public.delayed_jobs_priority;
       public         anh    false    216    216            �           1259    16470 +   index_active_storage_attachments_on_blob_id    INDEX     u   CREATE INDEX index_active_storage_attachments_on_blob_id ON public.active_storage_attachments USING btree (blob_id);
 ?   DROP INDEX public.index_active_storage_attachments_on_blob_id;
       public         anh    false    192            �           1259    16471 +   index_active_storage_attachments_uniqueness    INDEX     �   CREATE UNIQUE INDEX index_active_storage_attachments_uniqueness ON public.active_storage_attachments USING btree (record_type, record_id, name, blob_id);
 ?   DROP INDEX public.index_active_storage_attachments_uniqueness;
       public         anh    false    192    192    192    192            �           1259    16458 !   index_active_storage_blobs_on_key    INDEX     h   CREATE UNIQUE INDEX index_active_storage_blobs_on_key ON public.active_storage_blobs USING btree (key);
 5   DROP INDEX public.index_active_storage_blobs_on_key;
       public         anh    false    190            �           1259    16630    index_comments_on_restaurant_id    INDEX     ]   CREATE INDEX index_comments_on_restaurant_id ON public.comments USING btree (restaurant_id);
 3   DROP INDEX public.index_comments_on_restaurant_id;
       public         anh    false    208            �           1259    16629    index_comments_on_user_id    INDEX     Q   CREATE INDEX index_comments_on_user_id ON public.comments USING btree (user_id);
 -   DROP INDEX public.index_comments_on_user_id;
       public         anh    false    208            �           1259    16529    index_line_items_on_cart_id    INDEX     U   CREATE INDEX index_line_items_on_cart_id ON public.line_items USING btree (cart_id);
 /   DROP INDEX public.index_line_items_on_cart_id;
       public         anh    false    198            �           1259    16541    index_line_items_on_order_id    INDEX     W   CREATE INDEX index_line_items_on_order_id ON public.line_items USING btree (order_id);
 0   DROP INDEX public.index_line_items_on_order_id;
       public         anh    false    198            �           1259    16528    index_line_items_on_product_id    INDEX     [   CREATE INDEX index_line_items_on_product_id ON public.line_items USING btree (product_id);
 2   DROP INDEX public.index_line_items_on_product_id;
       public         anh    false    198            �           1259    16600    index_orders_on_order_type_id    INDEX     Y   CREATE INDEX index_orders_on_order_type_id ON public.orders USING btree (order_type_id);
 1   DROP INDEX public.index_orders_on_order_type_id;
       public         anh    false    200            �           1259    16575 !   index_products_on_product_type_id    INDEX     a   CREATE INDEX index_products_on_product_type_id ON public.products USING btree (product_type_id);
 5   DROP INDEX public.index_products_on_product_type_id;
       public         anh    false    194            �           1259    16495    index_products_on_restaurant_id    INDEX     ]   CREATE INDEX index_products_on_restaurant_id ON public.products USING btree (restaurant_id);
 3   DROP INDEX public.index_products_on_restaurant_id;
       public         anh    false    194            �           1259    16706 +   index_restaurant_favorites_on_restaurant_id    INDEX     u   CREATE INDEX index_restaurant_favorites_on_restaurant_id ON public.restaurant_favorites USING btree (restaurant_id);
 ?   DROP INDEX public.index_restaurant_favorites_on_restaurant_id;
       public         anh    false    214            �           1259    16707 %   index_restaurant_favorites_on_user_id    INDEX     i   CREATE INDEX index_restaurant_favorites_on_user_id ON public.restaurant_favorites USING btree (user_id);
 9   DROP INDEX public.index_restaurant_favorites_on_user_id;
       public         anh    false    214            �           1259    16478     index_restaurants_on_district_id    INDEX     _   CREATE INDEX index_restaurants_on_district_id ON public.restaurants USING btree (district_id);
 4   DROP INDEX public.index_restaurants_on_district_id;
       public         anh    false    188            �           1259    16569 '   index_restaurants_on_restaurant_type_id    INDEX     m   CREATE INDEX index_restaurants_on_restaurant_type_id ON public.restaurants USING btree (restaurant_type_id);
 ;   DROP INDEX public.index_restaurants_on_restaurant_type_id;
       public         anh    false    188            �           1259    16472    index_restaurants_on_user_id    INDEX     W   CREATE INDEX index_restaurants_on_user_id ON public.restaurants USING btree (user_id);
 0   DROP INDEX public.index_restaurants_on_user_id;
       public         anh    false    188                       1259    16649    index_users_on_district_id    INDEX     S   CREATE INDEX index_users_on_district_id ON public.users USING btree (district_id);
 .   DROP INDEX public.index_users_on_district_id;
       public         anh    false    186            �           1259    16642    index_users_on_role_id    INDEX     K   CREATE INDEX index_users_on_role_id ON public.users USING btree (role_id);
 *   DROP INDEX public.index_users_on_role_id;
       public         anh    false    186            �           2606    16496    fk_rails_009fa2d872    FK CONSTRAINT     �   ALTER TABLE ONLY public.products
    ADD CONSTRAINT fk_rails_009fa2d872 FOREIGN KEY (restaurant_id) REFERENCES public.restaurants(id);
 F   ALTER TABLE ONLY public.products DROP CONSTRAINT fk_rails_009fa2d872;
       public       anh    false    2183    194    188            �           2606    16619    fk_rails_03de2dc08c    FK CONSTRAINT     {   ALTER TABLE ONLY public.comments
    ADD CONSTRAINT fk_rails_03de2dc08c FOREIGN KEY (user_id) REFERENCES public.users(id);
 F   ALTER TABLE ONLY public.comments DROP CONSTRAINT fk_rails_03de2dc08c;
       public       anh    false    208    186    2178            �           2606    16696    fk_rails_0e17f6ab93    FK CONSTRAINT     �   ALTER TABLE ONLY public.restaurant_favorites
    ADD CONSTRAINT fk_rails_0e17f6ab93 FOREIGN KEY (restaurant_id) REFERENCES public.restaurants(id);
 R   ALTER TABLE ONLY public.restaurant_favorites DROP CONSTRAINT fk_rails_0e17f6ab93;
       public       anh    false    2183    214    188            �           2606    16518    fk_rails_11e15d5c6b    FK CONSTRAINT     �   ALTER TABLE ONLY public.line_items
    ADD CONSTRAINT fk_rails_11e15d5c6b FOREIGN KEY (product_id) REFERENCES public.products(id);
 H   ALTER TABLE ONLY public.line_items DROP CONSTRAINT fk_rails_11e15d5c6b;
       public       anh    false    2194    194    198            �           2606    16624    fk_rails_1b0c29f17e    FK CONSTRAINT     �   ALTER TABLE ONLY public.comments
    ADD CONSTRAINT fk_rails_1b0c29f17e FOREIGN KEY (restaurant_id) REFERENCES public.restaurants(id);
 F   ALTER TABLE ONLY public.comments DROP CONSTRAINT fk_rails_1b0c29f17e;
       public       anh    false    188    2183    208            �           2606    16542    fk_rails_2dc2e5c22c    FK CONSTRAINT        ALTER TABLE ONLY public.line_items
    ADD CONSTRAINT fk_rails_2dc2e5c22c FOREIGN KEY (order_id) REFERENCES public.orders(id);
 H   ALTER TABLE ONLY public.line_items DROP CONSTRAINT fk_rails_2dc2e5c22c;
       public       anh    false    2204    198    200            �           2606    16570    fk_rails_464fdadd08    FK CONSTRAINT     �   ALTER TABLE ONLY public.restaurants
    ADD CONSTRAINT fk_rails_464fdadd08 FOREIGN KEY (restaurant_type_id) REFERENCES public.restaurant_types(id);
 I   ALTER TABLE ONLY public.restaurants DROP CONSTRAINT fk_rails_464fdadd08;
       public       anh    false    2208    188    204            �           2606    16643    fk_rails_642f17018b    FK CONSTRAINT     x   ALTER TABLE ONLY public.users
    ADD CONSTRAINT fk_rails_642f17018b FOREIGN KEY (role_id) REFERENCES public.roles(id);
 C   ALTER TABLE ONLY public.users DROP CONSTRAINT fk_rails_642f17018b;
       public       anh    false    210    186    2216            �           2606    16576    fk_rails_8464b8e5d7    FK CONSTRAINT     �   ALTER TABLE ONLY public.products
    ADD CONSTRAINT fk_rails_8464b8e5d7 FOREIGN KEY (product_type_id) REFERENCES public.product_types(id);
 F   ALTER TABLE ONLY public.products DROP CONSTRAINT fk_rails_8464b8e5d7;
       public       anh    false    194    2206    202            �           2606    16601    fk_rails_aea2044a0b    FK CONSTRAINT     �   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT fk_rails_aea2044a0b FOREIGN KEY (order_type_id) REFERENCES public.order_types(id);
 D   ALTER TABLE ONLY public.orders DROP CONSTRAINT fk_rails_aea2044a0b;
       public       anh    false    200    206    2210            �           2606    16473    fk_rails_aef57e41ec    FK CONSTRAINT     ~   ALTER TABLE ONLY public.restaurants
    ADD CONSTRAINT fk_rails_aef57e41ec FOREIGN KEY (user_id) REFERENCES public.users(id);
 I   ALTER TABLE ONLY public.restaurants DROP CONSTRAINT fk_rails_aef57e41ec;
       public       anh    false    186    2178    188            �           2606    16523    fk_rails_af645e8e5f    FK CONSTRAINT     }   ALTER TABLE ONLY public.line_items
    ADD CONSTRAINT fk_rails_af645e8e5f FOREIGN KEY (cart_id) REFERENCES public.carts(id);
 H   ALTER TABLE ONLY public.line_items DROP CONSTRAINT fk_rails_af645e8e5f;
       public       anh    false    2196    198    196            �           2606    16701    fk_rails_c1a45eec9f    FK CONSTRAINT     �   ALTER TABLE ONLY public.restaurant_favorites
    ADD CONSTRAINT fk_rails_c1a45eec9f FOREIGN KEY (user_id) REFERENCES public.users(id);
 R   ALTER TABLE ONLY public.restaurant_favorites DROP CONSTRAINT fk_rails_c1a45eec9f;
       public       anh    false    214    186    2178            �           2606    16650    fk_rails_c49b9ab796    FK CONSTRAINT     �   ALTER TABLE ONLY public.users
    ADD CONSTRAINT fk_rails_c49b9ab796 FOREIGN KEY (district_id) REFERENCES public.districts(id);
 C   ALTER TABLE ONLY public.users DROP CONSTRAINT fk_rails_c49b9ab796;
       public       anh    false    184    186    2174            �           2606    16479    fk_rails_fb56ca7446    FK CONSTRAINT     �   ALTER TABLE ONLY public.restaurants
    ADD CONSTRAINT fk_rails_fb56ca7446 FOREIGN KEY (district_id) REFERENCES public.districts(id);
 I   ALTER TABLE ONLY public.restaurants DROP CONSTRAINT fk_rails_fb56ca7446;
       public       anh    false    188    184    2174            >	   �  x�u�ˊ�0Eת��Q�Ry�Yg�$MȢ30����4S��W�\WW����[�q{}���\��5�#�'�'���bC쨤.��������v�θ�tw	)47�4m���x�Z�i�H�$�qxnV�oW��^>��+��8b�n�G\��i�1��{�M���P�,x���nt>W��W�\��n���E��|b4��mF}X�.�v�Q�W>vH�h
��9Պ�!ٓ���j�s"�5�<q�3��>�gϯ����~�8�_j&ٍ9�H�4 _�4���baĉ����jH�Gr���ی�gf`��Ѕ1:�0-x;���������C� ��c�-�Y.��%��SC��ɳ�#:�lC�(��19�1�Tl�������'���b;ƟJ�(��h�RƉ�?; �xGBy      <	   �  x�͚M��H��׮S��6J��f� �|Il6�($��֋9��`n0�e��n�NVMUfg�Mu�X����0���{���?AP�V{��E�vJ{�<�"��#������]�E��C����ۄY�����Oeq��/�^�����7���:��2�_o�X�V���8�h����t(6t�AO�=QٔPr�5�X��EkóUA��5Z��-�`Q���>�~�鿽�S����C���f�[�.�مipz)�����5X����-#ҟ nR!i��ǋ֗]�28�܂��ߟAYx���k�^�o�D(���˧���r����D~t/�b�'H�P�RH�(����N
�e�M�h�!jſa� "H�[^R}��z9+du�[׏�א�h�\5
�0*�0���t��vG�ɶZ�Z�/��&Em��0G��&�E�P��W"�I0e�h$Nu�-�X���;�UY�������Y�A�t�Hv�k��� F)�S�t�.y��NVN^Ad�3�:�kxm��xx
�P��^�s�l��1����c��'/{(���^�<��K���ە韸�<�
�i�I�ؗQ���t:a����K�U�M~�)��{���ș�?w����,/(Bc�^��O�+!�T���F���*�����"�W����78(�hD*#��q�s������	w�o�#g��Q�^�
e�+&r�l"�]h�����F��W۫KBku4����S�+$�@XR����1��V�;�Q�~+&w�e:�1� � _۵u�*>��[]'�"Y��qu�B����H���HG�=���T^�K� ��t�{g6�V:L�(lr�R��������A�ۦ�����*���)�w�@��W�S�/o��h4��K�Fk}��oFōʏ��~�fu
*P6�I.����'�2�I��f�����k�y5�6�'U��@�'�&u����/��3���s�[�V�X6b@\+9�������E�^wU���5l#*�0k��ʞ"��&���M�*�� �ӈ�)=�U��̋��n�--�qS�9� �5��h����q.&���0L���;�
�Xu*~�kɶ.�wH>�\[m6;��7|pn�F*0S[��(���̝��6L�'����f;F����Y!Xŀ "	�e�=��F�m��V}�f(��˩�v� ߄�K^$����;^v�W����<(òq*�q�X!��߲���R�"�����q�Ϥ�	�'J��Uc�����t���ͳmd��c�������_#S��7)U�Ӑ�<��b���_��֤��3�^=��>a���jH�#��]�5���>'G#��U��@ƞt�D�4C@��voXZEP:�}��n�Q�!��I�*�jz�`�z� {�6\y5��,���b/��E�w���v�a�9|,V>�>���j��O��?�gU�C�H�>?�S4�,�mۄ�N<^B�6��T���Z@�8�Z=�/ӌn	|��^\��`L1Q"P�������l'�lKgUUx�?��!g�`(��|���.X]�μ�ݦ֫�p�|��{J1pX�^U�Tc��=K�L��XWpM�I��� ��d0HFE77o�e�����I�P�r�a�"F5$ �摷��U��d�Ɨ(�� ��a�I��g	,I2�M�˂�,��ͷ�y ��@��~�k*<��.�A(,y)HY��W���!d�5��!�0(W>٭�t��ө��V6ˇ�Q�D�J5�@va���������s|v��w-*���{�)�DH�&�Ѹc������Qp�p�؃��_!��l
5y)s���Mwò;ޟ��~�Ό�,���\�|ɨ&�~�L�9����:��SyY�9I��j�+:�
4�0�j#�������ŷ�=�����H)US��9(���5�i��j�[�ú����;���~���,��ӷA��f�wb�b�v£�9����x%k~�d�4jXO����I.6���v(N,���'�TB
�K0�����l��83;�s��E�Tt�,5�@�ѭy��4vv��n�п̊G3ԛP�*4�c��#Rc�a������^7����%��j��yZ��ò\�r?5���Qr�<�&���\#�>���ݞ[o���,�����NI%ThD��r�_��`�{�Z���z�8���I� �(�_���o��v��t�R8����IJ��T�:0/EE��8��Ί��%]����#Օ�p�"��ͼ4��Y�k�]���ý�>�H]B�@p+�-��<JQqwA�N�]V�ǉ�M]����0w�싀�Y�݃���ML�9�`(����r�Ű�N�d?Mڇ��'����6��S:r
��=5G���c/��).�w�jX�iT����Z�p�%~r�����}^.�ԡ2!�g;�v����ͬc\��##R0$����� �9W9�=����}ýMo��;#��~���-I��b�t�ܛ�[o-w�K�A�ЫQ.���boc#]��k����O�A�H��J3w�f��٧�aWױ�a�yx���N�6��6m�F�:Y�z��Mֶ,f�]/)�}�B�������J%���ȷ��U&�9��<�Z�?y������M�	ֱ� �������щ�	��x��t��e��L�G�ј�o*�k���|Y�	ټ{��\~E�c��#C`5Y_段Y-ׁ�`n<�l�l/�~�
�
¤�0.��4�\7�U��-���D�����W@\ܗm��cf��F�~�i��|���݃��ؿ��W�T���T�al+�_ϫAeD̟]�	���������@qo!�U5�ZƁ
:�l�^i.��} ��L6�`����(l�,�>�ue9���}�˹�
L r:��z����@Ɇ�]�u�+�|"���X���ekǌ�͊�^$.ز��z��<�ԍ4�w/acs�5Tv��e"10���ޞ�tn���K!�:��o���V��*�D�:�͸GEe�n�����M��P���Úʎ)E��E漻����)3;rt�&Y�6�
ěj��*�9�������zyj�oxh�3W� ��`z�N�u�	ܢ���p�{;�+&�/��C"5N�՝�Ū���#[ RE}i;���Q!r_	�כ���.��e`���I��4�]���iw�&���=��DP�b������b5����?X>�E������9H�tF���bȪd����){d��%�d�R�`�7����\W�r)����V�G������{SӴ '�B      4	   ?   x�K�+�,���M�+�LI-K��/ ��-tu�,�ͬL��,��L���Hq��qqq ���      B	   �   x�}��1�3�"`y�M\��{a9?i�ϛ
����Fv,^��!�|h����L�⭐�j���W�ˎ��^�&���TAڍk����-6p@��4I���Ґg�g����~*C�E[��0cG��+ԏ�-��y��G��D�#G_�      N	   �   x�}��QAEcmۀw�%�I��B�$DNf��*iWs�pv c|s��{�����k����r����r�|!0����Y�C}�Z��&J6)JO71_[���`o���(Kg��վ���{˘Rre����#�*:�x�ɓ�Tԉ�����2Ҹ�@;�h������a}]�nm]��hOZ����jxXn      R	   8   x�3�t����4�420��54�56�3��L�L���,-�p�p��qqq c�      V	   �  x��\_������^�Wu6 0`�n+����檒��2)E��f#N��T�{Zx0��c��٩ڝ1BR���Z�jyЍu�n&���;^G�E�h\���U��?�(�RӚ~������hF64�WM[��_8)
�o�O,�	�Hx��x�3R��!&d��I��0	L�70��&�1���x�Ibϝ��$
�lb���B�'���ӄr���
�8'++I�T}S��j�:��W4�J�ob�\R�@�gǬ�+L�D@V��s��0���H&�/��if5�'k���~R���t1��F�Z���DC�b�T
n~bguEx/ii�'$R`�}��&i��7F���,�и��}�`^'t��%t�<b���j���&�}����+�4ʨQ�vb ���$R2�}�y��K��&ɗ�G4_� �RP5�ԝ�f�F���]�6K}TlB �)�ڲ�j�IZ�����<��q ��H8��47���9夢��P@�/�o�KZ	��^
v(�$��g4u�w$X<م��8�-D�C�����f��4&�.�):Z�\��hy_�����{�S�#������ ���'n�S�P�5�.�ܨ��l��j�M���s��@,��@�?��b�홍,o�B���]�Ʈ��qݙe��:_�ӾxE�Y�U��b�g�D��yB�6�5-�`��AX�*�3gUz��ʅK(�%���	˽J����#��p�K�B��FϒU$��[��m���{p���$���W; ]w�z���WY�\󑴒r^\�H��v���9��y�k^aO"��;�i�Đ��|Ii�.�+��i��Ox��ȣ����C)}K��{��`WG,�"�^�1!ޅ1��U,��G�����9�X@�ζ,�-�g��ZJ��TDII��2��H��������=@�(hԐf'����]7��Mm�����rfϕ�+8�iYb5��A�+��E��fX<GĴ;h�Jݼ���2�/���u8;�1�z���$�hg�뛄^��ڗ$O2��o1-d֣Y�����AZ�ߚ�g����-��Lr�����j�+ B7���d9O�*M�QB�Vn�!n|��u�V*�<G�����IBA�(	��Na��5
��,+�w�АB��T��/H\�v�O�Ϣ�x�αI��і�M�(v��2#�໼�bI���o�>hׅ��I���Ɨ1�A����-����Փ���>��:t�{\>�8�n���{g\�9���JEX��R�b��;p|{������a��s�
�Z��mO�;���8��\GG��n<<L@zeԻZ�^^K<��08$(UJ;����G�r���c�n����[y��D��f�$���K�5A�6)�)e����J�I�� W��4��`�� Uu�4�';���~��)`p��!0q��t&�6���1͓�Ҥ�O��^C���x�ڄ� �R���>K'� ��2��65��,�4���+_��߷�u��h}RaRQ��e�� >���ͫ��l��b�aD�Z�@�x�"�^�VS��$�ha�[��Aα{�NK����<�b���͡�9�}�k�y���~��0���Cm����u2i����&D�����N��݃���<�����]�;��A��Z�PK8c쬴�Tz[��"��f��k�E�V���A�7G�?��g��`���B/I�:���<��;������{��G^})�[��TsHz޵N���FS�9oϒ�:�Y� �=��w��#263�p�9&�a���x	�;=�Z1p,�	"U�M��@$���y��Y��y{��\VN#���ɐ�Ț���gu� F'i{y�
,u�e�=˰V.�oq��!��ZB����sǱ�*m��＞w�t����yBx�xQ˛�i���mP0%�'�s[�4h����:�4����7J�f
�I�1�Y�+(�0��7)����7�l� �Oe�G���)��qVN3��(
�����p�s�q�H��4O7�%���C�V+X|���x�>	@�]��uw��F<�)�g\�#-Ğ�}[�r=o���en���Д�VMa����/��D�m0�qUyG�������ޔ�_�	�����l��d��Ķ'�2�%���>���onj�5_���E�̛��2��i,�qܙ��v��ݻ�2���      6	   �   x�3�t:�&/C!$���啜F������
�V&&V��z���Ffx���8�/�T:Ҝ��]�����9).cN�L�3�3�n,Ū��������	��)
����aWdhf`n�G�˔
K�@$v�F��8������ �0O`      D	   f  x�u�ٍ�0D��(��6�>�D���ئǻ�1E@�O�����W�)��󠸬.���_J^�����'���ey�@%��(��FC'��@A���@��j�g�Ӆ�2ݔ�� ��r�d���H`A�8��A�,��Ҋ�v����#'�!C�+��"D�,�V���v�r#%��q���"��@NrS�(��w7 ��mۥn������x
5 #��/G�BkQ��[���!EKsM��A�S�$m]�a���8�2�r�*����N!��R�nU�Zl�eu�<EU��A¥�]�i/�v��}}�!�d�Ւ�~���ސL9,s�z�f�)�!J�F��I�ۜ      L	   z   x�3�t�8�!Q����d�������qZ��X*XX�ZZ�����2� d�����)).cN����J2�dv���f�x��L8=�^^���pw?vu���&�x��b���� �%D�      F	     x����Q1Fco��i�k�Nɩ�
 ����
h�N�����8�5z�>�Z󔻇ǧ���i�x9���
ϯQ����Bq :�T�E��Z-�K4�w�5����.$b�������3�V��I�H�[2�L��C���M�;r�I�-��� b"�����0J� �v29���}�9��]�׊�5��x����:1�s�׼��ZL���5F�"� �#�m���h���
���7r~� ��N��R��x�a>cn��      H	   �   x�}�1N1Ek�)|�X3�g�2U*$���&��Ҹ�	(�"%��=.7�M���������!u;�|ѷ���^K��+F�D��.Z1D}h �*(�4ܗ��l��0����B^��'Щ�n�귒�7�B�A��pU��xM��P��er�.:gD��ϩxuw	Kd6��}�@ U���L6���n�Ez�?ӠӶ����Ib,9dj x6 �Y���      @	   {  x����j�@���)�.;;�1�h�xj���A��F�)�c��
^�ғ}��IW�E4�������l�曏��^���?/��k�VE�~+G J�GH_�{�=�Sə����H��5l- �DW����C��j��:s��sJ�\:v�b�OC5�DDt
;"�9����3}O�;N�o �v�nOE�%���h�����E�Z���W��LFhF��#����n�:��ut�2r���Y�M�%�Xl��*�5�tVL��� ��~-�tG�4Ƃ�	C?Ty҇����0�̠��1��ȓ4@qWnw��Û��r�B�N�z�,z��Q�u�~/G�9�M�O^x�s{�Ċ���⟺�$	�k<D�۽��E�$�̜�E      T	   C   x�}˱�0E�ڞ"$��8��Y�Z�O'���&Lr@}r%:������i�U�
ŷ����a0>      J	   �   x�3���8�@�����tN#C]CC]K+S+c3=KKs3S<R\F�aww&*d^�E��������).c�������R��3557�-�e5�H3А��J�J��ML��Hq�r�$f�*$�c�`aeb�ghjhfi�G�+F��� [�L�      :	   >  x�u�1j�0�g�� ��{O��l�2�L]�44�֡�9A/�tH�N�,]��!��M�dp�� 	�?������r�,����
��F��5�[���g�L����Wl&pד�'����VD��`!�L�l�.j�lC��{��b�2T�u��B$fF��P�v�W��}�����m�`�Ẃ�m�!?E�u�ĵa�H'����1y͹36��@�e��*(���<�zd)D?�����N��Bb�`<k@V���bNP�^+�YuSʻ�J�㰔w0k`vx��H��%2i���
� Nҍ%�P�#ֱ�Էp��,����      P	   �   x�3��K?���
.�w�sZ��X*�[��Xꙙ�����2�t�O��P�K��|��� �ZKc3C<R\�פg&�+d^��I���x��Lf�>ܵ8O!��^�͍,�Hq��qqq S�L�      3	   �   x�MϱD!Оa�l'���?�A��	p��IPt���8��&㡡�c<�2��a�K:�feƍZ�ȰBv�ɱK��x�ӺT9���H��]�r������J�O(��\�\���,�/�vW����(}Ƽ��&-�Z�a�|�<N�z���������]Z      8	   .  x��Vˎ��S_��N�����(P��0��1j)2�66�׬e)��HI&���Vf�W�������nU�肪t+�%��t�^k���&���Nv����oܵ�`�����0v�:L�]o*�˃%��Pӫɴ�'͝���%٪v�-�$��D�{���O|����8��wQ�R��}��}Vy�� �$dL
"����J��K�(+2��H���˓������Y\�Q���x3��P����/zwjn�6��v�eVk&\�ms_`����O�X����+�9q�eBn��d  �����h���5��:�A��V{M��}�j��	7��j�d:V�94�T�ܴQ��B�>�m>���C#��� Y��P�WJX Đ�(�����֊�m�֍
U&�YK:�*�b4_y�H�֍��Z��8��}�&�FK�qI|z_x��|�C�˅�������>�9�H�Ds\�˄���\��9 ��"�mT��5+dv�x��0 �A9"V����f7α&��h��+J�GPՂ{5>�ר*����h$B�s&`�1f������C�H&���u;ݯ��f���~=�!�f�*N*>��O��7��	�C~��#�~�� {���E����ON�W�m��/���
��t�7b%�K������!�B��P�뒠��WƇz�=�3�v���XO{
��Dv��)�Q�ˁ:�F~ց��r^F%������]������H�1,Q\B9�6$�g_c�ͩg��F8�Vg6��������Fin��b�j�ra�D����&���t�1{TB�D�y��~V��ϵiC����6P��֚�Ùk�+����s����L��sY:v��(q^�}��vv�I*�;�%RR��i/@��A��,)	�A��f�]@-�u�Rc���=���]�z���͆�S|#��"�7�hYu�<�y͘k>n�f<q ���ꪅ��o����j�2>/�	�ryܾ�1�|�]���^Ǒ�E����'������1��-H����e$ЖM�����V��m[s����R�Y��r[�d]l -1�����ѯ6�7 P�PN�2�#X�˘RE��c-�y,��2+��d������$�l63�MfG�fF�\�Չ���ӯڥ�2�-��}�Ǧ<��"gV�D=K+c{ˢ�p~J��;.�]dy�
4S3n��q���ҵ�0|,'�%� e�3z�P��ҷ�>6]��Gc>�e{��$����V�[Z�I[�<���A�F�//]h�.��k(��"�qT\����r菏�6�e4ɦCQ��1-5A�[,D���Ԯ��	6���ٯ�@O#��$	 D.��a�x�|A)1B�ۣ������O�r`������^��4�ܞf]�Hٔ�d,�ON�q�U�//�y��7hn*�(|r�5O�ۊ�3h�c|�y�`b,�Zo̱�U�<�J���s�4g�����5O��h����ud�^薒zH�wLT���P:�?jjs;=�}Í�p�ϴtB��ԡ���������n��^k_3�����ݱ՛V%Yi�)���;�[�C�$�:+ I2���ӫN=���/�ǘ��Җ�u�nF�N���^��t$IՂ[��j�Pט���V���	�N혶�-�IN������ Ϸ�':�,^<�]y�Q�5/�ix���XUO}�1F���v�9N��9+/���{+�ޗ�����cSy�z��
���-Y<�dBN�6/e�H��b�@BI^)*
n������R_���6s*׳��D�'&i�]��'C�k�a0< V�w�~iWL9 ٥��www�V�@(     