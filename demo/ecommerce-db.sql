PGDMP                       |         	   ecommerce    16.1    16.1 Z    F           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            G           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            H           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            I           1262    16447 	   ecommerce    DATABASE     �   CREATE DATABASE ecommerce WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';
    DROP DATABASE ecommerce;
                postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
                pg_database_owner    false            J           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                   pg_database_owner    false    4            �            1259    16490 
   categories    TABLE     w   CREATE TABLE public.categories (
    category_id integer NOT NULL,
    category_name character varying(30) NOT NULL
);
    DROP TABLE public.categories;
       public         heap    postgres    false    4            �            1259    16489    categories_category_id_seq    SEQUENCE     �   CREATE SEQUENCE public.categories_category_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.categories_category_id_seq;
       public          postgres    false    4    224            K           0    0    categories_category_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.categories_category_id_seq OWNED BY public.categories.category_id;
          public          postgres    false    223            �            1259    16946 
   contact_us    TABLE     �   CREATE TABLE public.contact_us (
    form_id integer NOT NULL,
    name character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    comment text NOT NULL
);
    DROP TABLE public.contact_us;
       public         heap    postgres    false    4            �            1259    16945    contact_us_form_id_seq    SEQUENCE     �   CREATE SEQUENCE public.contact_us_form_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.contact_us_form_id_seq;
       public          postgres    false    236    4            L           0    0    contact_us_form_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.contact_us_form_id_seq OWNED BY public.contact_us.form_id;
          public          postgres    false    235            �            1259    16515    order_items    TABLE     �   CREATE TABLE public.order_items (
    order_item_id integer NOT NULL,
    order_id integer NOT NULL,
    product_id integer NOT NULL,
    quantity integer NOT NULL,
    subtotal numeric NOT NULL
);
    DROP TABLE public.order_items;
       public         heap    postgres    false    4            �            1259    16513    order_items_order_id_seq    SEQUENCE     �   CREATE SEQUENCE public.order_items_order_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.order_items_order_id_seq;
       public          postgres    false    4    231            M           0    0    order_items_order_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.order_items_order_id_seq OWNED BY public.order_items.order_id;
          public          postgres    false    229            �            1259    16512    order_items_order_item_id_seq    SEQUENCE     �   CREATE SEQUENCE public.order_items_order_item_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.order_items_order_item_id_seq;
       public          postgres    false    231    4            N           0    0    order_items_order_item_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.order_items_order_item_id_seq OWNED BY public.order_items.order_item_id;
          public          postgres    false    228            �            1259    16514    order_items_product_id_seq    SEQUENCE     �   CREATE SEQUENCE public.order_items_product_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.order_items_product_id_seq;
       public          postgres    false    4    231            O           0    0    order_items_product_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.order_items_product_id_seq OWNED BY public.order_items.product_id;
          public          postgres    false    230            �            1259    16475    orders    TABLE     �   CREATE TABLE public.orders (
    order_id integer NOT NULL,
    user_id integer,
    order_date date NOT NULL,
    order_total numeric NOT NULL
);
    DROP TABLE public.orders;
       public         heap    postgres    false    4            �            1259    16473    orders_order_id_seq    SEQUENCE     �   CREATE SEQUENCE public.orders_order_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.orders_order_id_seq;
       public          postgres    false    222    4            P           0    0    orders_order_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.orders_order_id_seq OWNED BY public.orders.order_id;
          public          postgres    false    220            �            1259    16474    orders_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.orders_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.orders_user_id_seq;
       public          postgres    false    222    4            Q           0    0    orders_user_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.orders_user_id_seq OWNED BY public.orders.user_id;
          public          postgres    false    221            �            1259    16498    products    TABLE     0  CREATE TABLE public.products (
    product_id integer NOT NULL,
    category_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description character varying(255) NOT NULL,
    price numeric NOT NULL,
    stock_quantity integer NOT NULL,
    volume integer NOT NULL,
    image_url text
);
    DROP TABLE public.products;
       public         heap    postgres    false    4            �            1259    16497    products_category_id_seq    SEQUENCE     �   CREATE SEQUENCE public.products_category_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.products_category_id_seq;
       public          postgres    false    4    227            R           0    0    products_category_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.products_category_id_seq OWNED BY public.products.category_id;
          public          postgres    false    226            �            1259    16496    products_product_id_seq    SEQUENCE     �   CREATE SEQUENCE public.products_product_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.products_product_id_seq;
       public          postgres    false    227    4            S           0    0    products_product_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.products_product_id_seq OWNED BY public.products.product_id;
          public          postgres    false    225            �            1259    16633    products_seq    SEQUENCE     v   CREATE SEQUENCE public.products_seq
    START WITH 1
    INCREMENT BY 50
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.products_seq;
       public          postgres    false    4            �            1259    16914    recipes    TABLE     *  CREATE TABLE public.recipes (
    recipe_id integer NOT NULL,
    product_id integer,
    name character varying NOT NULL,
    description character varying NOT NULL,
    ingredients character varying[] NOT NULL,
    steps character varying[] NOT NULL,
    image_path character varying NOT NULL
);
    DROP TABLE public.recipes;
       public         heap    postgres    false    4            �            1259    16944    recipes_recipe_id_seq    SEQUENCE     �   ALTER TABLE public.recipes ALTER COLUMN recipe_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.recipes_recipe_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    4    233            �            1259    16449    user_login_info    TABLE     �   CREATE TABLE public.user_login_info (
    user_login_id integer NOT NULL,
    email character varying(255) NOT NULL,
    password character varying(255) NOT NULL
);
 #   DROP TABLE public.user_login_info;
       public         heap    postgres    false    4            �            1259    16448 !   user_login_info_user_login_id_seq    SEQUENCE     �   CREATE SEQUENCE public.user_login_info_user_login_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.user_login_info_user_login_id_seq;
       public          postgres    false    216    4            T           0    0 !   user_login_info_user_login_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.user_login_info_user_login_id_seq OWNED BY public.user_login_info.user_login_id;
          public          postgres    false    215            �            1259    16459    users    TABLE     �   CREATE TABLE public.users (
    user_id integer NOT NULL,
    user_login_info integer NOT NULL,
    first_name character varying NOT NULL,
    last_name character varying NOT NULL,
    address character varying,
    role character varying NOT NULL
);
    DROP TABLE public.users;
       public         heap    postgres    false    4            �            1259    16457    users_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.users_user_id_seq;
       public          postgres    false    219    4            U           0    0    users_user_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;
          public          postgres    false    217            �            1259    16458    users_user_login_info_seq    SEQUENCE     �   CREATE SEQUENCE public.users_user_login_info_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.users_user_login_info_seq;
       public          postgres    false    219    4            V           0    0    users_user_login_info_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.users_user_login_info_seq OWNED BY public.users.user_login_info;
          public          postgres    false    218            ~           2604    16493    categories category_id    DEFAULT     �   ALTER TABLE ONLY public.categories ALTER COLUMN category_id SET DEFAULT nextval('public.categories_category_id_seq'::regclass);
 E   ALTER TABLE public.categories ALTER COLUMN category_id DROP DEFAULT;
       public          postgres    false    223    224    224            �           2604    16949    contact_us form_id    DEFAULT     x   ALTER TABLE ONLY public.contact_us ALTER COLUMN form_id SET DEFAULT nextval('public.contact_us_form_id_seq'::regclass);
 A   ALTER TABLE public.contact_us ALTER COLUMN form_id DROP DEFAULT;
       public          postgres    false    236    235    236            �           2604    16518    order_items order_item_id    DEFAULT     �   ALTER TABLE ONLY public.order_items ALTER COLUMN order_item_id SET DEFAULT nextval('public.order_items_order_item_id_seq'::regclass);
 H   ALTER TABLE public.order_items ALTER COLUMN order_item_id DROP DEFAULT;
       public          postgres    false    228    231    231            �           2604    16519    order_items order_id    DEFAULT     |   ALTER TABLE ONLY public.order_items ALTER COLUMN order_id SET DEFAULT nextval('public.order_items_order_id_seq'::regclass);
 C   ALTER TABLE public.order_items ALTER COLUMN order_id DROP DEFAULT;
       public          postgres    false    229    231    231            �           2604    16520    order_items product_id    DEFAULT     �   ALTER TABLE ONLY public.order_items ALTER COLUMN product_id SET DEFAULT nextval('public.order_items_product_id_seq'::regclass);
 E   ALTER TABLE public.order_items ALTER COLUMN product_id DROP DEFAULT;
       public          postgres    false    230    231    231            |           2604    16478    orders order_id    DEFAULT     r   ALTER TABLE ONLY public.orders ALTER COLUMN order_id SET DEFAULT nextval('public.orders_order_id_seq'::regclass);
 >   ALTER TABLE public.orders ALTER COLUMN order_id DROP DEFAULT;
       public          postgres    false    220    222    222            }           2604    16479    orders user_id    DEFAULT     p   ALTER TABLE ONLY public.orders ALTER COLUMN user_id SET DEFAULT nextval('public.orders_user_id_seq'::regclass);
 =   ALTER TABLE public.orders ALTER COLUMN user_id DROP DEFAULT;
       public          postgres    false    222    221    222                       2604    16501    products product_id    DEFAULT     z   ALTER TABLE ONLY public.products ALTER COLUMN product_id SET DEFAULT nextval('public.products_product_id_seq'::regclass);
 B   ALTER TABLE public.products ALTER COLUMN product_id DROP DEFAULT;
       public          postgres    false    225    227    227            �           2604    16502    products category_id    DEFAULT     |   ALTER TABLE ONLY public.products ALTER COLUMN category_id SET DEFAULT nextval('public.products_category_id_seq'::regclass);
 C   ALTER TABLE public.products ALTER COLUMN category_id DROP DEFAULT;
       public          postgres    false    227    226    227            y           2604    16452    user_login_info user_login_id    DEFAULT     �   ALTER TABLE ONLY public.user_login_info ALTER COLUMN user_login_id SET DEFAULT nextval('public.user_login_info_user_login_id_seq'::regclass);
 L   ALTER TABLE public.user_login_info ALTER COLUMN user_login_id DROP DEFAULT;
       public          postgres    false    216    215    216            z           2604    16462    users user_id    DEFAULT     n   ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);
 <   ALTER TABLE public.users ALTER COLUMN user_id DROP DEFAULT;
       public          postgres    false    217    219    219            {           2604    16463    users user_login_info    DEFAULT     ~   ALTER TABLE ONLY public.users ALTER COLUMN user_login_info SET DEFAULT nextval('public.users_user_login_info_seq'::regclass);
 D   ALTER TABLE public.users ALTER COLUMN user_login_info DROP DEFAULT;
       public          postgres    false    218    219    219            7          0    16490 
   categories 
   TABLE DATA           @   COPY public.categories (category_id, category_name) FROM stdin;
    public          postgres    false    224   j       C          0    16946 
   contact_us 
   TABLE DATA           C   COPY public.contact_us (form_id, name, email, comment) FROM stdin;
    public          postgres    false    236   zj       >          0    16515    order_items 
   TABLE DATA           ^   COPY public.order_items (order_item_id, order_id, product_id, quantity, subtotal) FROM stdin;
    public          postgres    false    231   �k       5          0    16475    orders 
   TABLE DATA           L   COPY public.orders (order_id, user_id, order_date, order_total) FROM stdin;
    public          postgres    false    222   �k       :          0    16498    products 
   TABLE DATA           x   COPY public.products (product_id, category_id, name, description, price, stock_quantity, volume, image_url) FROM stdin;
    public          postgres    false    227   l       @          0    16914    recipes 
   TABLE DATA           k   COPY public.recipes (recipe_id, product_id, name, description, ingredients, steps, image_path) FROM stdin;
    public          postgres    false    233   {q       /          0    16449    user_login_info 
   TABLE DATA           I   COPY public.user_login_info (user_login_id, email, password) FROM stdin;
    public          postgres    false    216   �x       2          0    16459    users 
   TABLE DATA           _   COPY public.users (user_id, user_login_info, first_name, last_name, address, role) FROM stdin;
    public          postgres    false    219   py       W           0    0    categories_category_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.categories_category_id_seq', 1, false);
          public          postgres    false    223            X           0    0    contact_us_form_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.contact_us_form_id_seq', 7, true);
          public          postgres    false    235            Y           0    0    order_items_order_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.order_items_order_id_seq', 1, false);
          public          postgres    false    229            Z           0    0    order_items_order_item_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.order_items_order_item_id_seq', 6, true);
          public          postgres    false    228            [           0    0    order_items_product_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.order_items_product_id_seq', 1, false);
          public          postgres    false    230            \           0    0    orders_order_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.orders_order_id_seq', 3, true);
          public          postgres    false    220            ]           0    0    orders_user_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.orders_user_id_seq', 1, false);
          public          postgres    false    221            ^           0    0    products_category_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.products_category_id_seq', 1, false);
          public          postgres    false    226            _           0    0    products_product_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.products_product_id_seq', 34, true);
          public          postgres    false    225            `           0    0    products_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.products_seq', 1, false);
          public          postgres    false    232            a           0    0    recipes_recipe_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.recipes_recipe_id_seq', 11, true);
          public          postgres    false    234            b           0    0 !   user_login_info_user_login_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.user_login_info_user_login_id_seq', 14, true);
          public          postgres    false    215            c           0    0    users_user_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.users_user_id_seq', 13, true);
          public          postgres    false    217            d           0    0    users_user_login_info_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.users_user_login_info_seq', 1, true);
          public          postgres    false    218            �           2606    16495    categories Categories_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.categories
    ADD CONSTRAINT "Categories_pkey" PRIMARY KEY (category_id);
 F   ALTER TABLE ONLY public.categories DROP CONSTRAINT "Categories_pkey";
       public            postgres    false    224            �           2606    16524    order_items OrderItems_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.order_items
    ADD CONSTRAINT "OrderItems_pkey" PRIMARY KEY (order_item_id);
 G   ALTER TABLE ONLY public.order_items DROP CONSTRAINT "OrderItems_pkey";
       public            postgres    false    231            �           2606    16483    orders Orders_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT "Orders_pkey" PRIMARY KEY (order_id);
 >   ALTER TABLE ONLY public.orders DROP CONSTRAINT "Orders_pkey";
       public            postgres    false    222            �           2606    16506    products Products_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.products
    ADD CONSTRAINT "Products_pkey" PRIMARY KEY (product_id);
 B   ALTER TABLE ONLY public.products DROP CONSTRAINT "Products_pkey";
       public            postgres    false    227            �           2606    16456 "   user_login_info UserLoginInfo_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY public.user_login_info
    ADD CONSTRAINT "UserLoginInfo_pkey" PRIMARY KEY (user_login_id);
 N   ALTER TABLE ONLY public.user_login_info DROP CONSTRAINT "UserLoginInfo_pkey";
       public            postgres    false    216            �           2606    16536    users Users_User_Login_Info_key 
   CONSTRAINT     g   ALTER TABLE ONLY public.users
    ADD CONSTRAINT "Users_User_Login_Info_key" UNIQUE (user_login_info);
 K   ALTER TABLE ONLY public.users DROP CONSTRAINT "Users_User_Login_Info_key";
       public            postgres    false    219            �           2606    16467    users Users_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY public.users
    ADD CONSTRAINT "Users_pkey" PRIMARY KEY (user_id);
 <   ALTER TABLE ONLY public.users DROP CONSTRAINT "Users_pkey";
       public            postgres    false    219            �           2606    16953    contact_us contact_us_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.contact_us
    ADD CONSTRAINT contact_us_pkey PRIMARY KEY (form_id);
 D   ALTER TABLE ONLY public.contact_us DROP CONSTRAINT contact_us_pkey;
       public            postgres    false    236            �           2606    16591    user_login_info email 
   CONSTRAINT     Q   ALTER TABLE ONLY public.user_login_info
    ADD CONSTRAINT email UNIQUE (email);
 ?   ALTER TABLE ONLY public.user_login_info DROP CONSTRAINT email;
       public            postgres    false    216            �           2606    16920    recipes recipe_id 
   CONSTRAINT     j   ALTER TABLE ONLY public.recipes
    ADD CONSTRAINT recipe_id PRIMARY KEY (recipe_id) INCLUDE (recipe_id);
 ;   ALTER TABLE ONLY public.recipes DROP CONSTRAINT recipe_id;
       public            postgres    false    233            �           2606    16525 $   order_items OrderItems_Order_ID_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.order_items
    ADD CONSTRAINT "OrderItems_Order_ID_fkey" FOREIGN KEY (order_id) REFERENCES public.orders(order_id) ON UPDATE CASCADE ON DELETE CASCADE;
 P   ALTER TABLE ONLY public.order_items DROP CONSTRAINT "OrderItems_Order_ID_fkey";
       public          postgres    false    231    222    4750            �           2606    16530 &   order_items OrderItems_Product_ID_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.order_items
    ADD CONSTRAINT "OrderItems_Product_ID_fkey" FOREIGN KEY (product_id) REFERENCES public.products(product_id) ON UPDATE CASCADE ON DELETE CASCADE;
 R   ALTER TABLE ONLY public.order_items DROP CONSTRAINT "OrderItems_Product_ID_fkey";
       public          postgres    false    231    227    4754            �           2606    16484    orders Orders_User_ID_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT "Orders_User_ID_fkey" FOREIGN KEY (user_id) REFERENCES public.users(user_id) ON UPDATE CASCADE ON DELETE CASCADE;
 F   ALTER TABLE ONLY public.orders DROP CONSTRAINT "Orders_User_ID_fkey";
       public          postgres    false    219    4748    222            �           2606    16507 "   products Products_Category_ID_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.products
    ADD CONSTRAINT "Products_Category_ID_fkey" FOREIGN KEY (category_id) REFERENCES public.categories(category_id) ON UPDATE CASCADE ON DELETE CASCADE;
 N   ALTER TABLE ONLY public.products DROP CONSTRAINT "Products_Category_ID_fkey";
       public          postgres    false    227    4752    224            �           2606    16468     users Users_User_Login_Info_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.users
    ADD CONSTRAINT "Users_User_Login_Info_fkey" FOREIGN KEY (user_login_info) REFERENCES public.user_login_info(user_login_id) ON UPDATE CASCADE ON DELETE CASCADE;
 L   ALTER TABLE ONLY public.users DROP CONSTRAINT "Users_User_Login_Info_fkey";
       public          postgres    false    219    216    4742            �           2606    16923    recipes product_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.recipes
    ADD CONSTRAINT product_id FOREIGN KEY (product_id) REFERENCES public.products(product_id) ON UPDATE CASCADE ON DELETE CASCADE;
 <   ALTER TABLE ONLY public.recipes DROP CONSTRAINT product_id;
       public          postgres    false    227    4754    233            7   c   x�340�t��/.I-*�240�t��IQ(J-.NMQ�*�LN��p�����%��y�����f�N�y)9`q#N��ܤ��D� �*�@�1'�+F��� ͬ,      C   �   x�e�1S� �k�{��R8������BK��d�pG�$1�zb�X�cx�{�Z�;[<"�0�M��{��atdjT�gj ��}Gpp�&1��]�[�3X0�m}g�z��}d�H�9m�O~�7��La-	��{���`",�(�&���[��co��b��?�B�h��0I�U,�ƭ���'9�U''uz�T��c>�.���Sy<2�<i�h]a<���j�Gh��Ų�~g���Z� ���i      >   B   x����@B�PL�|XM/�_��f���#m}3&�(��an����f�?�����g����k$?���      5   (   x�3�4�4202�54�5��440�2�4B2
��qqq �D�      :   Z  x���KS�8���S���;�H��]��;[���nۚȒK�	��O�e;�ÂS5����K��,��d�褶l��u`���2�	,Kt��O��Z%Nh��L���ќeܹ��D��q��\�}�Y,��9^<�l�3�O&�x�%��ւ�_��W*?[���x���eo�oYy\��qy�X�ϡ�e�Phw���b��O\�/�"c.z�,R�w�|à����E[W�6-�I8^
e��9�:'c������w͢[�r01Ӱ�u�I��]%�Ƈ���Xޯ3V�gH�?!�F���o���3��{������y,	�Be�E��%b��8���$�V�|�r+�+ }
��H�f�C/� �S�j��+�>��=֦#�#�_�L-\OuW=�u',n��@׸k�R9����F_�a�d�k��=�p�oW<)B̈́"�U%!Z{W���-�Q�a���~�h�7D��pn%�.�.b�K��c\9g	7F����b]a����y�*�N���*E�/�>���D1I�c�t�\]���~�/
�h���b�,�{+t;q���R��-���A�2\J	)G1�x�ymcP ��{gY�����9���N�����d:��+,P	 �㏨�����`�ȢEޜ>&B1W���� ��d�ŧMI��ʲF�nz��VG+0�^���7D�M�l�;�7�Ů�^�J��@ў�Z�ɛw$�)�O��t4@��^'����R���s2��1��IuV�B��6�KÖ�}a�c��H��@���|Jp��0�.�w*�e>�o���2ɟ�i���yI���7#�.Q�X��}�x�L�j�w��.^:�&���#,��7�pv�f�kq���Bk�↗ ٮ�{���I�F���������L;�vA"���]����+�֢bv�Q�r����
HɃ�I(��v�8Qئ���A��{Em;m
H���(��Mt�U��i�i���"}ٽEF؈��k��������vXQX�.�����$���o�ۊ��F�Ӑ�/.�+lL��>?<-O��&F�G�S-�=�^h�)@.�C59�a��1���a��3�&��7�@���6��#�+�ï.�?�� 56��*n��Jz��xyi����hp�O����)H?3#j`gSB��������ŧ�H��'�jT=5�R�ˑ�b'qظ[�y�u�t��^\�vW��� i��	��+!%g[�%!Pv%V^�^6��a}�� ?�,���ME�tC�?1�#<�<Z�Y���W�o����gM��T�Qœ��_8�#�������$A�\�i�Kر�ۑo��|ԫ�*;7!��u�=�g���L�?�6�]چD������O�	�n      @   <  x�mWK�E]�Oxݍ�f��Xƒ��g�%o����ҝ�Qdfuу�|�p�n��"�z��i����ϋ/^D�[}�z8���#�8�K6)�^�.�ս���u�Uњ]�đR0��2�l}̓�KɄ�ro���ĭ>$k�/��eiK?�wo��c������W4�4��S���T/��z���gKc䑓�.tr�@�����]mA��T ��eA�с'����~&Ϧ%����n�Q]��ܺ���^�~H���h�9L���5�B����8��zZ ��@)x|{F�¹��8I@:�i��sl�)Q#0z&�,<��ОJ�i`i缷y��+!�fM.��$�[\i7�[����EvQ�)Bz#����+�_�Fͼ�)d�ڱol��T?�B���h䔑ܲS2d��0���qm���?����3��9^�)�Cw�luvu�h�8��ox�&\F���E�ل�I��;��S6�s5eH8�}�P�w;+"�wCr�1�lvx)��~g���?|�x���M#9�9˒=7;#\u`k���������-}�ߣV�&��=J�qL�7�4$�Q<E��gM�9#�7č׏�0j��*�
;�K=��tm}�/�*�}�cv����z!XN h Y�輤%�/5�;���v<IY�#��©�Lf6�R��穑�����.�����_�}�z���+まњ�ҧ�)fz:%��tY���:ڛ�8���	�����{���|��Ĳ&c*���FkBF+�� � -�g����u}֋KU��k�m�p H9�K񵓔󌛷�����YS�ˁ2;�k����7x!��$��uU���dSږ��N��AΔ��p6�%�^LB��t�n/�h-ݿ{w�v�]���WXk�]�!{0��L��\#t�	����ΧcyNf�$$��]���Şa���{S\�<w%���~��� �r�x��64&��N3^�:��ņ����^����<!X�6W �^H�-���@�T�甄(�\��A:x*MO�MÊ{K�3>OU>��4�RR�;���:�&_�d����k��((d�*e��Z�ٹ�~�ٳ� �R���ZX�ܤ�#z��P�ԖK���q�*�5r��`QM�E"���8���p:��WVL�:��$��  5��9Gބ�t�ϣöv��e���J5{���sFϾ�O7\u-����%I�u��/ex[9���l-P~L�$��e�.�R�I� �r^&	S1Fl7�2E,EJR���TcZp�X��B(#�k��G+G&�T�7�Q�n�H`�#��M�iN�`p�n%�0��Kz�>A�zV�e�S-5���ƖcK�k��*Nc��h��N�bW��
����Qb�
��	z�4HI�KF�ta�,&к8�!,վ
Y��uy#�*,	�NU�>���NUqSSQ�]���qG%'Z��u�Er�䫒��$!��,�N�:/Sё�Ө�5�S��N��ƃ�9-2�A?���^��K<�A?_��~��͏�=����'���0�N(�K��ajø�`�4A�b��(��m�`b����9K
��jQ���y����Q�!b�z�j�;'J��d���(�7��;��0�5�R#��g�d�v��Q
&3�EN1��E���4���Q����I�M/~��9s����B�Tey��Q�,S�����*c�� �^@UW��؏�ߣ�kSa�X!�nm�:]�60!��QgEs�5�7u3�wo��X:6�١?C��0�:=$�>�X~J�/C�6ԇ�?���B�6%���^+�6z/��\�����N��� ����j:.j���9��&��T��z{�֭���/K      /   �   x�E�;�0  Й��siK*+�Db@�R)�X>������G.ڦs~��oH9$.�+��m��:���$�Hע�B~b�US��:��EғsnS�B5�TΗ���ff,����-�4��v�c�=V�F�����.V&gxw � 2�2m      2   5   x�3�4��������,�����K�tt����2�4�ȸ�B�C�]��b���� ��      