--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.1
-- Dumped by pg_dump version 9.6.1

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: emplay
--

CREATE TABLE auth_group (
    id integer NOT NULL,
    name character varying(80) NOT NULL
);


ALTER TABLE auth_group OWNER TO emplay;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: emplay
--

CREATE SEQUENCE auth_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_group_id_seq OWNER TO emplay;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: emplay
--

ALTER SEQUENCE auth_group_id_seq OWNED BY auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: emplay
--

CREATE TABLE auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE auth_group_permissions OWNER TO emplay;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: emplay
--

CREATE SEQUENCE auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_group_permissions_id_seq OWNER TO emplay;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: emplay
--

ALTER SEQUENCE auth_group_permissions_id_seq OWNED BY auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: emplay
--

CREATE TABLE auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE auth_permission OWNER TO emplay;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: emplay
--

CREATE SEQUENCE auth_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_permission_id_seq OWNER TO emplay;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: emplay
--

ALTER SEQUENCE auth_permission_id_seq OWNED BY auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: emplay
--

CREATE TABLE auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(30) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE auth_user OWNER TO emplay;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: emplay
--

CREATE TABLE auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE auth_user_groups OWNER TO emplay;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: emplay
--

CREATE SEQUENCE auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_user_groups_id_seq OWNER TO emplay;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: emplay
--

ALTER SEQUENCE auth_user_groups_id_seq OWNED BY auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: emplay
--

CREATE SEQUENCE auth_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_user_id_seq OWNER TO emplay;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: emplay
--

ALTER SEQUENCE auth_user_id_seq OWNED BY auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: emplay
--

CREATE TABLE auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE auth_user_user_permissions OWNER TO emplay;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: emplay
--

CREATE SEQUENCE auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_user_user_permissions_id_seq OWNER TO emplay;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: emplay
--

ALTER SEQUENCE auth_user_user_permissions_id_seq OWNED BY auth_user_user_permissions.id;


--
-- Name: dashboard_account; Type: TABLE; Schema: public; Owner: emplay
--

CREATE TABLE dashboard_account (
    id integer NOT NULL,
    potential character varying(2),
    pipeline character varying(2),
    stage character varying(10) NOT NULL,
    created_on timestamp with time zone NOT NULL,
    account_id integer NOT NULL
);


ALTER TABLE dashboard_account OWNER TO emplay;

--
-- Name: dashboard_account_id_seq; Type: SEQUENCE; Schema: public; Owner: emplay
--

CREATE SEQUENCE dashboard_account_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE dashboard_account_id_seq OWNER TO emplay;

--
-- Name: dashboard_account_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: emplay
--

ALTER SEQUENCE dashboard_account_id_seq OWNED BY dashboard_account.id;


--
-- Name: dashboard_accountrisk; Type: TABLE; Schema: public; Owner: emplay
--

CREATE TABLE dashboard_accountrisk (
    id integer NOT NULL,
    account_name character varying(100) NOT NULL,
    customer_name character varying(100) NOT NULL,
    account_risks character varying(255) NOT NULL,
    created_on timestamp with time zone NOT NULL
);


ALTER TABLE dashboard_accountrisk OWNER TO emplay;

--
-- Name: dashboard_accountrisk_id_seq; Type: SEQUENCE; Schema: public; Owner: emplay
--

CREATE SEQUENCE dashboard_accountrisk_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE dashboard_accountrisk_id_seq OWNER TO emplay;

--
-- Name: dashboard_accountrisk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: emplay
--

ALTER SEQUENCE dashboard_accountrisk_id_seq OWNED BY dashboard_accountrisk.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: emplay
--

CREATE TABLE django_admin_log (
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


ALTER TABLE django_admin_log OWNER TO emplay;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: emplay
--

CREATE SEQUENCE django_admin_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE django_admin_log_id_seq OWNER TO emplay;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: emplay
--

ALTER SEQUENCE django_admin_log_id_seq OWNED BY django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: emplay
--

CREATE TABLE django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE django_content_type OWNER TO emplay;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: emplay
--

CREATE SEQUENCE django_content_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE django_content_type_id_seq OWNER TO emplay;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: emplay
--

ALTER SEQUENCE django_content_type_id_seq OWNED BY django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: emplay
--

CREATE TABLE django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE django_migrations OWNER TO emplay;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: emplay
--

CREATE SEQUENCE django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE django_migrations_id_seq OWNER TO emplay;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: emplay
--

ALTER SEQUENCE django_migrations_id_seq OWNED BY django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: emplay
--

CREATE TABLE django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE django_session OWNER TO emplay;

--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: emplay
--

ALTER TABLE ONLY auth_group ALTER COLUMN id SET DEFAULT nextval('auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: emplay
--

ALTER TABLE ONLY auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: emplay
--

ALTER TABLE ONLY auth_permission ALTER COLUMN id SET DEFAULT nextval('auth_permission_id_seq'::regclass);


--
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: emplay
--

ALTER TABLE ONLY auth_user ALTER COLUMN id SET DEFAULT nextval('auth_user_id_seq'::regclass);


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: emplay
--

ALTER TABLE ONLY auth_user_groups ALTER COLUMN id SET DEFAULT nextval('auth_user_groups_id_seq'::regclass);


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: emplay
--

ALTER TABLE ONLY auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('auth_user_user_permissions_id_seq'::regclass);


--
-- Name: dashboard_account id; Type: DEFAULT; Schema: public; Owner: emplay
--

ALTER TABLE ONLY dashboard_account ALTER COLUMN id SET DEFAULT nextval('dashboard_account_id_seq'::regclass);


--
-- Name: dashboard_accountrisk id; Type: DEFAULT; Schema: public; Owner: emplay
--

ALTER TABLE ONLY dashboard_accountrisk ALTER COLUMN id SET DEFAULT nextval('dashboard_accountrisk_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: emplay
--

ALTER TABLE ONLY django_admin_log ALTER COLUMN id SET DEFAULT nextval('django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: emplay
--

ALTER TABLE ONLY django_content_type ALTER COLUMN id SET DEFAULT nextval('django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: emplay
--

ALTER TABLE ONLY django_migrations ALTER COLUMN id SET DEFAULT nextval('django_migrations_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: emplay
--

COPY auth_group (id, name) FROM stdin;
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: emplay
--

SELECT pg_catalog.setval('auth_group_id_seq', 1, false);


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: emplay
--

COPY auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: emplay
--

SELECT pg_catalog.setval('auth_group_permissions_id_seq', 1, false);


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: emplay
--

COPY auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can add permission	2	add_permission
5	Can change permission	2	change_permission
6	Can delete permission	2	delete_permission
7	Can add group	3	add_group
8	Can change group	3	change_group
9	Can delete group	3	delete_group
10	Can add user	4	add_user
11	Can change user	4	change_user
12	Can delete user	4	delete_user
13	Can add content type	5	add_contenttype
14	Can change content type	5	change_contenttype
15	Can delete content type	5	delete_contenttype
16	Can add session	6	add_session
17	Can change session	6	change_session
18	Can delete session	6	delete_session
19	Can add account risk	7	add_accountrisk
20	Can change account risk	7	change_accountrisk
21	Can delete account risk	7	delete_accountrisk
22	Can add account	8	add_account
23	Can change account	8	change_account
24	Can delete account	8	delete_account
\.


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: emplay
--

SELECT pg_catalog.setval('auth_permission_id_seq', 24, true);


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: emplay
--

COPY auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$36000$1vEMcdGTbKXj$EQk+9AUr8ljcMv1bX6myXwf/I5GilnssS6RwMn/w870=	2018-04-09 19:52:04.276928+05:30	t	admin				t	t	2018-04-09 16:37:59.759498+05:30
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: emplay
--

COPY auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: emplay
--

SELECT pg_catalog.setval('auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: emplay
--

SELECT pg_catalog.setval('auth_user_id_seq', 1, true);


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: emplay
--

COPY auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: emplay
--

SELECT pg_catalog.setval('auth_user_user_permissions_id_seq', 1, false);


--
-- Data for Name: dashboard_account; Type: TABLE DATA; Schema: public; Owner: emplay
--

COPY dashboard_account (id, potential, pipeline, stage, created_on, account_id) FROM stdin;
1	HP	LP	won	2018-04-09 17:50:43+05:30	1
2	HP	LP	won	2018-04-09 17:51:04+05:30	1
3	HP	LP	won	2018-04-09 17:51:12+05:30	1
4	LP	LP	lost	2018-04-09 17:51:18+05:30	2
5	LP	LP	lost	2018-04-09 17:51:33+05:30	2
6	HP	HP	lost	2018-04-09 17:51:42+05:30	3
7	HP	HP	lost	2018-04-09 17:51:59+05:30	3
8	HP	HP	lost	2018-04-09 17:52:09+05:30	3
\.


--
-- Name: dashboard_account_id_seq; Type: SEQUENCE SET; Schema: public; Owner: emplay
--

SELECT pg_catalog.setval('dashboard_account_id_seq', 8, true);


--
-- Data for Name: dashboard_accountrisk; Type: TABLE DATA; Schema: public; Owner: emplay
--

COPY dashboard_accountrisk (id, account_name, customer_name, account_risks, created_on) FROM stdin;
3	acc_name 3	customer 3	26% of the pipe is ageing@Accounts margin are lower than average of similar accounts@Annual Revenue from the accounts are declining	2018-04-09 17:50:24+05:30
2	acc_name 2	customer 2	48% of the pipe is ageing@Accounts margin are lower than average of similar accounts@Annual Revenue from the accounts are declining	2018-04-09 17:50:17+05:30
1	acc_name 1	customer 1	16% of the pipe is ageing@Accounts margin are lower than average of similar accounts@Annual Revenue from the accounts are declining	2018-04-09 17:50:06+05:30
\.


--
-- Name: dashboard_accountrisk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: emplay
--

SELECT pg_catalog.setval('dashboard_accountrisk_id_seq', 3, true);


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: emplay
--

COPY django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2018-04-09 17:50:17.681662+05:30	1	acc_name 1	1	[{"added": {}}]	7	1
2	2018-04-09 17:50:24.845309+05:30	2	acc_name 2	1	[{"added": {}}]	7	1
3	2018-04-09 17:50:32.749855+05:30	3	acc_name 3	1	[{"added": {}}]	7	1
4	2018-04-09 17:51:04.182503+05:30	1	acc_name 1	1	[{"added": {}}]	8	1
5	2018-04-09 17:51:12.10782+05:30	2	acc_name 1	1	[{"added": {}}]	8	1
6	2018-04-09 17:51:18.887895+05:30	3	acc_name 1	1	[{"added": {}}]	8	1
7	2018-04-09 17:51:33.306779+05:30	4	acc_name 2	1	[{"added": {}}]	8	1
8	2018-04-09 17:51:42.65108+05:30	5	acc_name 2	1	[{"added": {}}]	8	1
9	2018-04-09 17:51:59.175707+05:30	6	acc_name 3	1	[{"added": {}}]	8	1
10	2018-04-09 17:52:09.646752+05:30	7	acc_name 3	1	[{"added": {}}]	8	1
11	2018-04-09 17:52:16.420512+05:30	8	acc_name 3	1	[{"added": {}}]	8	1
12	2018-04-09 19:53:33.658531+05:30	3	acc_name 3	2	[{"changed": {"fields": ["account_risks"]}}]	7	1
13	2018-04-09 19:53:43.24812+05:30	2	acc_name 2	2	[{"changed": {"fields": ["account_risks"]}}]	7	1
14	2018-04-09 19:53:53.549368+05:30	1	acc_name 1	2	[{"changed": {"fields": ["account_risks"]}}]	7	1
\.


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: emplay
--

SELECT pg_catalog.setval('django_admin_log_id_seq', 14, true);


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: emplay
--

COPY django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	dashboard	accountrisk
8	dashboard	account
\.


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: emplay
--

SELECT pg_catalog.setval('django_content_type_id_seq', 8, true);


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: emplay
--

COPY django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2018-04-09 16:37:11.6408+05:30
2	auth	0001_initial	2018-04-09 16:37:11.752642+05:30
3	admin	0001_initial	2018-04-09 16:37:11.792153+05:30
4	admin	0002_logentry_remove_auto_add	2018-04-09 16:37:11.814925+05:30
5	contenttypes	0002_remove_content_type_name	2018-04-09 16:37:11.863154+05:30
6	auth	0002_alter_permission_name_max_length	2018-04-09 16:37:11.874832+05:30
7	auth	0003_alter_user_email_max_length	2018-04-09 16:37:11.892357+05:30
8	auth	0004_alter_user_username_opts	2018-04-09 16:37:11.905819+05:30
9	auth	0005_alter_user_last_login_null	2018-04-09 16:37:11.921652+05:30
10	auth	0006_require_contenttypes_0002	2018-04-09 16:37:11.927424+05:30
11	auth	0007_alter_validators_add_error_messages	2018-04-09 16:37:11.944476+05:30
12	auth	0008_alter_user_username_max_length	2018-04-09 16:37:11.966559+05:30
13	sessions	0001_initial	2018-04-09 16:37:11.987236+05:30
14	dashboard	0001_initial	2018-04-09 17:43:57.208659+05:30
\.


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: emplay
--

SELECT pg_catalog.setval('django_migrations_id_seq', 14, true);


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: emplay
--

COPY django_session (session_key, session_data, expire_date) FROM stdin;
fzgw6icsdm472mr7874fpkertiz2gxph	ZGVkNTc4MDUwNmQ0MTg5OTY5NTZlODg1NjBmYWQ5OGI0ZjE3NWQ1OTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzNmIwZWIxNGEwZGEyNTJiYjE5MzdkODkzZjU5MGNlZjE2MmIwNjg1In0=	2018-04-23 16:38:27.838171+05:30
taulknuwiqgja6ezwbgcm3j501aa30z3	ZGVkNTc4MDUwNmQ0MTg5OTY5NTZlODg1NjBmYWQ5OGI0ZjE3NWQ1OTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzNmIwZWIxNGEwZGEyNTJiYjE5MzdkODkzZjU5MGNlZjE2MmIwNjg1In0=	2018-04-23 19:52:04.286883+05:30
\.


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: emplay
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: emplay
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: emplay
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: emplay
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: emplay
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: emplay
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: emplay
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: emplay
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: emplay
--

ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: emplay
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: emplay
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: emplay
--

ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: dashboard_account dashboard_account_pkey; Type: CONSTRAINT; Schema: public; Owner: emplay
--

ALTER TABLE ONLY dashboard_account
    ADD CONSTRAINT dashboard_account_pkey PRIMARY KEY (id);


--
-- Name: dashboard_accountrisk dashboard_accountrisk_pkey; Type: CONSTRAINT; Schema: public; Owner: emplay
--

ALTER TABLE ONLY dashboard_accountrisk
    ADD CONSTRAINT dashboard_accountrisk_pkey PRIMARY KEY (id);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: emplay
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: emplay
--

ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: emplay
--

ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: emplay
--

ALTER TABLE ONLY django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: emplay
--

ALTER TABLE ONLY django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: emplay
--

CREATE INDEX auth_group_name_a6ea08ec_like ON auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: emplay
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: emplay
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: emplay
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: emplay
--

CREATE INDEX auth_user_groups_group_id_97559544 ON auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: emplay
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: emplay
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: emplay
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: emplay
--

CREATE INDEX auth_user_username_6821ab7c_like ON auth_user USING btree (username varchar_pattern_ops);


--
-- Name: dashboard_account_account_id_b8a4174c; Type: INDEX; Schema: public; Owner: emplay
--

CREATE INDEX dashboard_account_account_id_b8a4174c ON dashboard_account USING btree (account_id);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: emplay
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: emplay
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: emplay
--

CREATE INDEX django_session_expire_date_a5c62663 ON django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: emplay
--

CREATE INDEX django_session_session_key_c0390e0f_like ON django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: emplay
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: emplay
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: emplay
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: emplay
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: emplay
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: emplay
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: emplay
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: dashboard_account dashboard_account_account_id_b8a4174c_fk_dashboard; Type: FK CONSTRAINT; Schema: public; Owner: emplay
--

ALTER TABLE ONLY dashboard_account
    ADD CONSTRAINT dashboard_account_account_id_b8a4174c_fk_dashboard FOREIGN KEY (account_id) REFERENCES dashboard_accountrisk(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: emplay
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: emplay
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

