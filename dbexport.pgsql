PGDMP                         x         
   chronicles    13.0 (Debian 13.0-4)    13.0 (Debian 13.0-4) �    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    33854 
   chronicles    DATABASE     _   CREATE DATABASE chronicles WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.UTF-8';
    DROP DATABASE chronicles;
                postgres    false            �           0    0    DATABASE chronicles    ACL     ,   GRANT ALL ON DATABASE chronicles TO gaurav;
                   postgres    false    3210            �            1259    33887 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public         heap    gaurav    false            �            1259    33885    auth_group_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public          gaurav    false    207            �           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
          public          gaurav    false    206            �            1259    33897    auth_group_permissions    TABLE     �   CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         heap    gaurav    false            �            1259    33895    auth_group_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public          gaurav    false    209            �           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
          public          gaurav    false    208            �            1259    33879    auth_permission    TABLE     �   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         heap    gaurav    false            �            1259    33877    auth_permission_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public          gaurav    false    205            �           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
          public          gaurav    false    204            �            1259    33905 	   auth_user    TABLE     �  CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);
    DROP TABLE public.auth_user;
       public         heap    gaurav    false            �            1259    33915    auth_user_groups    TABLE        CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public         heap    gaurav    false            �            1259    33913    auth_user_groups_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.auth_user_groups_id_seq;
       public          gaurav    false    213            �           0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;
          public          gaurav    false    212            �            1259    33903    auth_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public          gaurav    false    211            �           0    0    auth_user_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;
          public          gaurav    false    210            �            1259    33923    auth_user_user_permissions    TABLE     �   CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public         heap    gaurav    false            �            1259    33921 !   auth_user_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.auth_user_user_permissions_id_seq;
       public          gaurav    false    215            �           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;
          public          gaurav    false    214            �            1259    34016    chronicles_category    TABLE     r   CREATE TABLE public.chronicles_category (
    id integer NOT NULL,
    category character varying(20) NOT NULL
);
 '   DROP TABLE public.chronicles_category;
       public         heap    gaurav    false            �            1259    34014    chronicles_category_id_seq    SEQUENCE     �   CREATE SEQUENCE public.chronicles_category_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.chronicles_category_id_seq;
       public          gaurav    false    219            �           0    0    chronicles_category_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.chronicles_category_id_seq OWNED BY public.chronicles_category.id;
          public          gaurav    false    218            �            1259    34024    chronicles_post    TABLE     �  CREATE TABLE public.chronicles_post (
    id integer NOT NULL,
    title character varying(200) NOT NULL,
    description character varying(200),
    slug character varying(200) NOT NULL,
    created_on timestamp with time zone NOT NULL,
    blog text NOT NULL,
    cover character varying(200) NOT NULL,
    updated_on timestamp with time zone NOT NULL,
    status integer NOT NULL,
    author_id integer NOT NULL,
    category_id integer NOT NULL
);
 #   DROP TABLE public.chronicles_post;
       public         heap    gaurav    false            �            1259    34022    chronicles_post_id_seq    SEQUENCE     �   CREATE SEQUENCE public.chronicles_post_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.chronicles_post_id_seq;
       public          gaurav    false    221            �           0    0    chronicles_post_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.chronicles_post_id_seq OWNED BY public.chronicles_post.id;
          public          gaurav    false    220            �            1259    33983    django_admin_log    TABLE     �  CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);
 $   DROP TABLE public.django_admin_log;
       public         heap    gaurav    false            �            1259    33981    django_admin_log_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public          gaurav    false    217            �           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
          public          gaurav    false    216            �            1259    33869    django_content_type    TABLE     �   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         heap    gaurav    false            �            1259    33867    django_content_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public          gaurav    false    203            �           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
          public          gaurav    false    202            �            1259    33858    django_migrations    TABLE     �   CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         heap    gaurav    false            �            1259    33856    django_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public          gaurav    false    201            �           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
          public          gaurav    false    200            �            1259    34051    django_session    TABLE     �   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         heap    gaurav    false            �            1259    34064    gallery_image    TABLE     �  CREATE TABLE public.gallery_image (
    id integer NOT NULL,
    image_name character varying(50) NOT NULL,
    created_on timestamp with time zone NOT NULL,
    image_des character varying(100) NOT NULL,
    image_url character varying(1000) NOT NULL,
    image_imgur_suffix character varying(15),
    image_thumbnail character varying(1000),
    "image_dimenX" integer NOT NULL,
    "image_dimenY" integer NOT NULL
);
 !   DROP TABLE public.gallery_image;
       public         heap    gaurav    false            �            1259    34062    gallery_image_id_seq    SEQUENCE     �   CREATE SEQUENCE public.gallery_image_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.gallery_image_id_seq;
       public          gaurav    false    224            �           0    0    gallery_image_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.gallery_image_id_seq OWNED BY public.gallery_image.id;
          public          gaurav    false    223            �           2604    33890    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public          gaurav    false    206    207    207            �           2604    33900    auth_group_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public          gaurav    false    208    209    209            �           2604    33882    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public          gaurav    false    204    205    205            �           2604    33908    auth_user id    DEFAULT     l   ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public          gaurav    false    210    211    211            �           2604    33918    auth_user_groups id    DEFAULT     z   ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public          gaurav    false    213    212    213            �           2604    33926    auth_user_user_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public          gaurav    false    215    214    215            �           2604    34019    chronicles_category id    DEFAULT     �   ALTER TABLE ONLY public.chronicles_category ALTER COLUMN id SET DEFAULT nextval('public.chronicles_category_id_seq'::regclass);
 E   ALTER TABLE public.chronicles_category ALTER COLUMN id DROP DEFAULT;
       public          gaurav    false    218    219    219            �           2604    34027    chronicles_post id    DEFAULT     x   ALTER TABLE ONLY public.chronicles_post ALTER COLUMN id SET DEFAULT nextval('public.chronicles_post_id_seq'::regclass);
 A   ALTER TABLE public.chronicles_post ALTER COLUMN id DROP DEFAULT;
       public          gaurav    false    220    221    221            �           2604    33986    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public          gaurav    false    217    216    217            �           2604    33872    django_content_type id    DEFAULT     �   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public          gaurav    false    202    203    203            �           2604    33861    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public          gaurav    false    200    201    201            �           2604    34067    gallery_image id    DEFAULT     t   ALTER TABLE ONLY public.gallery_image ALTER COLUMN id SET DEFAULT nextval('public.gallery_image_id_seq'::regclass);
 ?   ALTER TABLE public.gallery_image ALTER COLUMN id DROP DEFAULT;
       public          gaurav    false    224    223    224            s          0    33887 
   auth_group 
   TABLE DATA           .   COPY public.auth_group (id, name) FROM stdin;
    public          gaurav    false    207   �       u          0    33897    auth_group_permissions 
   TABLE DATA           M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public          gaurav    false    209   +�       q          0    33879    auth_permission 
   TABLE DATA           N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public          gaurav    false    205   H�       w          0    33905 	   auth_user 
   TABLE DATA           �   COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public          gaurav    false    211   ɫ       y          0    33915    auth_user_groups 
   TABLE DATA           A   COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
    public          gaurav    false    213   }�       {          0    33923    auth_user_user_permissions 
   TABLE DATA           P   COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public          gaurav    false    215   ��                 0    34016    chronicles_category 
   TABLE DATA           ;   COPY public.chronicles_category (id, category) FROM stdin;
    public          gaurav    false    219   ��       �          0    34024    chronicles_post 
   TABLE DATA           �   COPY public.chronicles_post (id, title, description, slug, created_on, blog, cover, updated_on, status, author_id, category_id) FROM stdin;
    public          gaurav    false    221   �       }          0    33983    django_admin_log 
   TABLE DATA           �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public          gaurav    false    217   g�       o          0    33869    django_content_type 
   TABLE DATA           C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public          gaurav    false    203   $�       m          0    33858    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public          gaurav    false    201   ��       �          0    34051    django_session 
   TABLE DATA           P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public          gaurav    false    222   ��       �          0    34064    gallery_image 
   TABLE DATA           �   COPY public.gallery_image (id, image_name, created_on, image_des, image_url, image_imgur_suffix, image_thumbnail, "image_dimenX", "image_dimenY") FROM stdin;
    public          gaurav    false    224   ��       �           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
          public          gaurav    false    206            �           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
          public          gaurav    false    208            �           0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 36, true);
          public          gaurav    false    204            �           0    0    auth_user_groups_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);
          public          gaurav    false    212            �           0    0    auth_user_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.auth_user_id_seq', 1, true);
          public          gaurav    false    210            �           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);
          public          gaurav    false    214            �           0    0    chronicles_category_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.chronicles_category_id_seq', 1, true);
          public          gaurav    false    218            �           0    0    chronicles_post_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.chronicles_post_id_seq', 1, true);
          public          gaurav    false    220            �           0    0    django_admin_log_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 4, true);
          public          gaurav    false    216            �           0    0    django_content_type_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.django_content_type_id_seq', 9, true);
          public          gaurav    false    202            �           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 20, true);
          public          gaurav    false    200            �           0    0    gallery_image_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.gallery_image_id_seq', 1, true);
          public          gaurav    false    223            �           2606    34012    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public            gaurav    false    207            �           2606    33939 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public            gaurav    false    209    209            �           2606    33902 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public            gaurav    false    209            �           2606    33892    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public            gaurav    false    207            �           2606    33930 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public            gaurav    false    205    205            �           2606    33884 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public            gaurav    false    205            �           2606    33920 &   auth_user_groups auth_user_groups_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public            gaurav    false    213            �           2606    33954 @   auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 j   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
       public            gaurav    false    213    213            �           2606    33910    auth_user auth_user_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public            gaurav    false    211            �           2606    33928 :   auth_user_user_permissions auth_user_user_permissions_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public            gaurav    false    215            �           2606    33968 Y   auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
       public            gaurav    false    215    215            �           2606    34006     auth_user auth_user_username_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public            gaurav    false    211            �           2606    34021 ,   chronicles_category chronicles_category_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.chronicles_category
    ADD CONSTRAINT chronicles_category_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.chronicles_category DROP CONSTRAINT chronicles_category_pkey;
       public            gaurav    false    219            �           2606    34032 $   chronicles_post chronicles_post_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.chronicles_post
    ADD CONSTRAINT chronicles_post_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.chronicles_post DROP CONSTRAINT chronicles_post_pkey;
       public            gaurav    false    221            �           2606    34036 (   chronicles_post chronicles_post_slug_key 
   CONSTRAINT     c   ALTER TABLE ONLY public.chronicles_post
    ADD CONSTRAINT chronicles_post_slug_key UNIQUE (slug);
 R   ALTER TABLE ONLY public.chronicles_post DROP CONSTRAINT chronicles_post_slug_key;
       public            gaurav    false    221            �           2606    34034 )   chronicles_post chronicles_post_title_key 
   CONSTRAINT     e   ALTER TABLE ONLY public.chronicles_post
    ADD CONSTRAINT chronicles_post_title_key UNIQUE (title);
 S   ALTER TABLE ONLY public.chronicles_post DROP CONSTRAINT chronicles_post_title_key;
       public            gaurav    false    221            �           2606    33992 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public            gaurav    false    217            �           2606    33876 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public            gaurav    false    203    203            �           2606    33874 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public            gaurav    false    203            �           2606    33866 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public            gaurav    false    201            �           2606    34058 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public            gaurav    false    222            �           2606    34072     gallery_image gallery_image_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.gallery_image
    ADD CONSTRAINT gallery_image_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.gallery_image DROP CONSTRAINT gallery_image_pkey;
       public            gaurav    false    224            �           1259    34013    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public            gaurav    false    207            �           1259    33950 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public            gaurav    false    209            �           1259    33951 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public            gaurav    false    209            �           1259    33936 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public            gaurav    false    205            �           1259    33966 "   auth_user_groups_group_id_97559544    INDEX     c   CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);
 6   DROP INDEX public.auth_user_groups_group_id_97559544;
       public            gaurav    false    213            �           1259    33965 !   auth_user_groups_user_id_6a12ed8b    INDEX     a   CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);
 5   DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
       public            gaurav    false    213            �           1259    33980 1   auth_user_user_permissions_permission_id_1fbb5f2c    INDEX     �   CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);
 E   DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
       public            gaurav    false    215            �           1259    33979 +   auth_user_user_permissions_user_id_a95ead1b    INDEX     u   CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);
 ?   DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
       public            gaurav    false    215            �           1259    34007     auth_user_username_6821ab7c_like    INDEX     n   CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);
 4   DROP INDEX public.auth_user_username_6821ab7c_like;
       public            gaurav    false    211            �           1259    34049 "   chronicles_post_author_id_439141c9    INDEX     c   CREATE INDEX chronicles_post_author_id_439141c9 ON public.chronicles_post USING btree (author_id);
 6   DROP INDEX public.chronicles_post_author_id_439141c9;
       public            gaurav    false    221            �           1259    34050 $   chronicles_post_category_id_ae5b3140    INDEX     g   CREATE INDEX chronicles_post_category_id_ae5b3140 ON public.chronicles_post USING btree (category_id);
 8   DROP INDEX public.chronicles_post_category_id_ae5b3140;
       public            gaurav    false    221            �           1259    34048 "   chronicles_post_slug_8ff5e416_like    INDEX     r   CREATE INDEX chronicles_post_slug_8ff5e416_like ON public.chronicles_post USING btree (slug varchar_pattern_ops);
 6   DROP INDEX public.chronicles_post_slug_8ff5e416_like;
       public            gaurav    false    221            �           1259    34047 #   chronicles_post_title_bf7d29b9_like    INDEX     t   CREATE INDEX chronicles_post_title_bf7d29b9_like ON public.chronicles_post USING btree (title varchar_pattern_ops);
 7   DROP INDEX public.chronicles_post_title_bf7d29b9_like;
       public            gaurav    false    221            �           1259    34003 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public            gaurav    false    217            �           1259    34004 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public            gaurav    false    217            �           1259    34060 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public            gaurav    false    222            �           1259    34059 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public            gaurav    false    222            �           2606    33945 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public          gaurav    false    209    205    2988            �           2606    33940 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public          gaurav    false    209    207    2993            �           2606    33931 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public          gaurav    false    203    205    2983            �           2606    33960 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public          gaurav    false    2993    207    213            �           2606    33955 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public          gaurav    false    3001    211    213            �           2606    33974 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       public          gaurav    false    215    205    2988            �           2606    33969 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public          gaurav    false    215    211    3001            �           2606    34037 B   chronicles_post chronicles_post_author_id_439141c9_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.chronicles_post
    ADD CONSTRAINT chronicles_post_author_id_439141c9_fk_auth_user_id FOREIGN KEY (author_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.chronicles_post DROP CONSTRAINT chronicles_post_author_id_439141c9_fk_auth_user_id;
       public          gaurav    false    221    211    3001            �           2606    34042 N   chronicles_post chronicles_post_category_id_ae5b3140_fk_chronicles_category_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.chronicles_post
    ADD CONSTRAINT chronicles_post_category_id_ae5b3140_fk_chronicles_category_id FOREIGN KEY (category_id) REFERENCES public.chronicles_category(id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY public.chronicles_post DROP CONSTRAINT chronicles_post_category_id_ae5b3140_fk_chronicles_category_id;
       public          gaurav    false    219    3022    221            �           2606    33993 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public          gaurav    false    2983    203    217            �           2606    33998 B   django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
       public          gaurav    false    217    3001    211            s      x������ � �      u      x������ � �      q   q  x�]�[��0E��UdC�G��Fa���$$���$�%�ϒ�`_;smǢ���1����6�l��VSiKB�?��{E��������b�&�w�
�5�l��sX�aMIjܰG)�@�	�$�A��YQ��(�K���5���l�Aʥ9��8�� )Y%d�q�^�_LM�ѺZ���#��� �<Gލ1���S�|�ư�Z޳7��w�;K�B��H�~�/��A��b]�^}|�#	����;3�̘J;c�˘�:Cd�N������p�w�Җ*�J��A�q�[ˠ���ue��=Ok0������T�1M_� �l � r�q�\4�T϶��B��l+��4�r *�	�z "�	 �8�}Yk��J�5      w   �   x�e�A�0����+:x��t�	A�T
�EA,�e9��C��չ����<�/%=�WIw(� ��y�MS s��r�Y�W�N�.۳��CkߦLI�/b�o�*�a�(Pp	u���E~��c>L�P��썴�Jje[|���j/�o���zL~=���/0�      y      x������ � �      {      x������ � �            x�3�,�KN,IM�/ʬJM����� N�a      �   s   x�3��H���W�H-JEag�غ%`������������������������������M��F�;Ό���b+}�L�����"���\}���R���tL-@&� W� ].)/      }   �   x�mλ
�0�9y
�Z�$�v�:X1��`/C�wo�tQ�s��qA@�Ơ#�Vf��	�����q�>ޅ�Ϭt�;f�yY
�Aq���)()Ԫ\|ߏѵ��?0L0����B�u�J����Q��Ь
�;߻G�9;�o?���-�XP\HeD�·��^ea|��/��G+      o   v   x�M�K
1C��a
��w�&�&H�`;�ܾ����	=t��Q���u�Da�B��f�,�I*���0V\)J�U������l��).*-����$��c�v1ǓR(�uR�!1^ ��9      m   �  x���M��0F���uT��,#YqK�Z�ۏ��I�0Coؘ�Q��6mf7��utS h��goCC���7࿀��<Qu�T"�����|�K�#p�K�6���a?�QU%�bB�r��j���3�����������La��>9gl;�8��`;�^�o��M�Z��/��w5�SN�`{��R��ښ\�c��]��4��J����7t��-�Ԍ�ZQ�Z��p��a�B%�P�Jaϔ���q�փ�
^wae�gF��\����6�^(���q��,�c�i�[���l����u���^ɧ�l瘦:|�RL�w�d�̝ g�F��Ԧ��D�7El%�E?AQ���5�oԥ��?�Fo��JA��Y�3c�_קuܶC�漮2���乧w�~��/le����8�6���rP��y�n&w/w'�G����?���!�t�_����]�ʟ��p� 5s�      �     x���n�0  ���{_0-�By�T`:e�B���R
((h�~��Q���J!����X�ۈƇ��eQ�	�c4s7&U^�S����DV�p��w������zj{l&�v���P���fn�޽O�SOVO'��R�e�����(�Ƕd1�s2�@�i���x�c���4��K��~z�qW�nG��&�:�n�0�x��FV����h��F�a���.9~�.�qA%6�8�)�Ya��ZO�6�n���_4�j*į�tt����4,�o (?EQ�9>^F      �   g   x�3���I�4202�54�50U00�25�20�346656�60�LT +�())(�������M/-�K����N��p+(��*H焲�++4�42�4420������ T�$�     