--
-- PostgreSQL database cluster dump
--

\restrict Zlsoc649ziJah3qNT9CvQqPl1s4Tw76e9qH37sATJKEvTmxbYBDXvh9Kqhv8uAC

SET default_transaction_read_only = off;

SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;

--
-- Roles
--

CREATE ROLE boo;
ALTER ROLE boo WITH NOSUPERUSER INHERIT NOCREATEROLE NOCREATEDB LOGIN NOREPLICATION NOBYPASSRLS PASSWORD 'SCRAM-SHA-256$4096:NXRxTqiXeLR/mpKQoJtfIQ==$vBb9sYDAi1i3XGrHIeQ1tHcEYIKcWNXP5Alk8TCs6/w=:E/TV+8Mb42bmqcCxrB7cOxiIrFzZ0MrqjbdP8Dp7ufw=';
CREATE ROLE postgres;
ALTER ROLE postgres WITH SUPERUSER INHERIT CREATEROLE CREATEDB LOGIN REPLICATION BYPASSRLS PASSWORD 'SCRAM-SHA-256$4096:N4DkH8fJC44lVqYIXJMHGg==$Ed6xYnTM2MryP09FlcJkokdzgCeIyL9KZmp0T5vd/d4=:j2GlERFCKSMerhqWpahVyGgBdN1W6LJVHtSgvKSnf+A=';
CREATE ROLE scott;
ALTER ROLE scott WITH NOSUPERUSER INHERIT NOCREATEROLE NOCREATEDB LOGIN NOREPLICATION NOBYPASSRLS PASSWORD 'SCRAM-SHA-256$4096:1wUsvbuOYc5KcIzrgCS1qA==$artVZwxlgyKBd91+NUKKGP1y6OIh9QRSEa3KsOqUXxk=:o/bVom/QjHiKtBYy+RBuGRyKPacUXUsbOp296wVac1E=';
CREATE ROLE scott2;
ALTER ROLE scott2 WITH NOSUPERUSER INHERIT NOCREATEROLE NOCREATEDB LOGIN NOREPLICATION NOBYPASSRLS PASSWORD 'SCRAM-SHA-256$4096:femQ0WKE2LA2dLOOhzLPhA==$jIvxWyo+5L8mr9MmTSmVkmDZ9/vOTHKozksBnxmeHik=:VzLjfY4HvE5vXb3jUinXosJ3v5MEtoHtH85m7MFnUGE=';

--
-- User Configurations
--








\unrestrict Zlsoc649ziJah3qNT9CvQqPl1s4Tw76e9qH37sATJKEvTmxbYBDXvh9Kqhv8uAC

--
-- Databases
--

--
-- Database "template1" dump
--

\connect template1

--
-- PostgreSQL database dump
--

\restrict BD7rpA2aVhbfaMdK9YKpGRpXwPpkCgvUTmjI2ldQqf4ke0cNf7w7dEtHXD1zOQ4

-- Dumped from database version 15.17
-- Dumped by pg_dump version 15.17

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- PostgreSQL database dump complete
--

\unrestrict BD7rpA2aVhbfaMdK9YKpGRpXwPpkCgvUTmjI2ldQqf4ke0cNf7w7dEtHXD1zOQ4

--
-- Database "boo_db" dump
--

--
-- PostgreSQL database dump
--

\restrict 6cbSyjFm37wgC8ZMN9lbngted6cldZw49KdUensupLHLJnXtMeAvyF5DNYJLKtG

-- Dumped from database version 15.17
-- Dumped by pg_dump version 15.17

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: boo_db; Type: DATABASE; Schema: -; Owner: boo
--

CREATE DATABASE boo_db WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.UTF-8';


ALTER DATABASE boo_db OWNER TO boo;

\unrestrict 6cbSyjFm37wgC8ZMN9lbngted6cldZw49KdUensupLHLJnXtMeAvyF5DNYJLKtG
\connect boo_db
\restrict 6cbSyjFm37wgC8ZMN9lbngted6cldZw49KdUensupLHLJnXtMeAvyF5DNYJLKtG

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: member; Type: TABLE; Schema: public; Owner: boo
--

CREATE TABLE public.member (
    num integer NOT NULL,
    name text NOT NULL,
    addr text
);


ALTER TABLE public.member OWNER TO boo;

--
-- Name: member_seq; Type: SEQUENCE; Schema: public; Owner: boo
--

CREATE SEQUENCE public.member_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.member_seq OWNER TO boo;

--
-- Name: post; Type: TABLE; Schema: public; Owner: boo
--

CREATE TABLE public.post (
    num integer NOT NULL,
    writer text NOT NULL,
    title text NOT NULL,
    content text,
    created_at timestamp without time zone
);


ALTER TABLE public.post OWNER TO boo;

--
-- Name: post_seq; Type: SEQUENCE; Schema: public; Owner: boo
--

CREATE SEQUENCE public.post_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.post_seq OWNER TO boo;

--
-- Name: test_seq; Type: SEQUENCE; Schema: public; Owner: boo
--

CREATE SEQUENCE public.test_seq
    START WITH 10
    INCREMENT BY 10
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.test_seq OWNER TO boo;

--
-- Name: todo; Type: TABLE; Schema: public; Owner: boo
--

CREATE TABLE public.todo (
    num integer NOT NULL,
    content character varying(20),
    created_at timestamp without time zone DEFAULT now()
);


ALTER TABLE public.todo OWNER TO boo;

--
-- Name: todo_num_seq; Type: SEQUENCE; Schema: public; Owner: boo
--

CREATE SEQUENCE public.todo_num_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.todo_num_seq OWNER TO boo;

--
-- Name: todo_num_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: boo
--

ALTER SEQUENCE public.todo_num_seq OWNED BY public.todo.num;


--
-- Name: todo num; Type: DEFAULT; Schema: public; Owner: boo
--

ALTER TABLE ONLY public.todo ALTER COLUMN num SET DEFAULT nextval('public.todo_num_seq'::regclass);


--
-- Data for Name: member; Type: TABLE DATA; Schema: public; Owner: boo
--

COPY public.member (num, name, addr) FROM stdin;
1	김구라	노량진
2	해골	행신동
3	원숭이	동물원
\.


--
-- Data for Name: post; Type: TABLE DATA; Schema: public; Owner: boo
--

COPY public.post (num, writer, title, content, created_at) FROM stdin;
1	kim	hello	어쩌구..저쩌구..	2026-04-02 16:08:59.955525
2	lee	hello2	어쩌구2..저쩌구2..	2026-04-02 16:09:59.389857
3	park	hello3	어쩌구3..저쩌구3..	2026-04-02 16:10:10.269207
\.


--
-- Data for Name: todo; Type: TABLE DATA; Schema: public; Owner: boo
--

COPY public.todo (num, content, created_at) FROM stdin;
1	python 공부하기	2026-04-02 17:06:40.135439
2	linux 공부하기	2026-04-02 17:07:23.2839
3	docker 공부하기	2026-04-02 17:07:27.492993
\.


--
-- Name: member_seq; Type: SEQUENCE SET; Schema: public; Owner: boo
--

SELECT pg_catalog.setval('public.member_seq', 3, true);


--
-- Name: post_seq; Type: SEQUENCE SET; Schema: public; Owner: boo
--

SELECT pg_catalog.setval('public.post_seq', 3, true);


--
-- Name: test_seq; Type: SEQUENCE SET; Schema: public; Owner: boo
--

SELECT pg_catalog.setval('public.test_seq', 40, true);


--
-- Name: todo_num_seq; Type: SEQUENCE SET; Schema: public; Owner: boo
--

SELECT pg_catalog.setval('public.todo_num_seq', 3, true);


--
-- Name: member member_pkey; Type: CONSTRAINT; Schema: public; Owner: boo
--

ALTER TABLE ONLY public.member
    ADD CONSTRAINT member_pkey PRIMARY KEY (num);


--
-- Name: post post_pkey; Type: CONSTRAINT; Schema: public; Owner: boo
--

ALTER TABLE ONLY public.post
    ADD CONSTRAINT post_pkey PRIMARY KEY (num);


--
-- Name: todo todo_pkey; Type: CONSTRAINT; Schema: public; Owner: boo
--

ALTER TABLE ONLY public.todo
    ADD CONSTRAINT todo_pkey PRIMARY KEY (num);


--
-- PostgreSQL database dump complete
--

\unrestrict 6cbSyjFm37wgC8ZMN9lbngted6cldZw49KdUensupLHLJnXtMeAvyF5DNYJLKtG

--
-- Database "postgres" dump
--

\connect postgres

--
-- PostgreSQL database dump
--

\restrict IAotTItpA4j9zJfabBVFYHRwTpS4pDgbmwxENnKQ16RXmc81HfGyQOHWCe21baV

-- Dumped from database version 15.17
-- Dumped by pg_dump version 15.17

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- PostgreSQL database dump complete
--

\unrestrict IAotTItpA4j9zJfabBVFYHRwTpS4pDgbmwxENnKQ16RXmc81HfGyQOHWCe21baV

--
-- Database "scott2_db" dump
--

--
-- PostgreSQL database dump
--

\restrict EJZxqs7ODGQEq9UqkXkFJjtinjrA69hZimYsVUtr6MkwEXQS0XNl471s7D0zcSA

-- Dumped from database version 15.17
-- Dumped by pg_dump version 15.17

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: scott2_db; Type: DATABASE; Schema: -; Owner: scott2
--

CREATE DATABASE scott2_db WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.UTF-8';


ALTER DATABASE scott2_db OWNER TO scott2;

\unrestrict EJZxqs7ODGQEq9UqkXkFJjtinjrA69hZimYsVUtr6MkwEXQS0XNl471s7D0zcSA
\connect scott2_db
\restrict EJZxqs7ODGQEq9UqkXkFJjtinjrA69hZimYsVUtr6MkwEXQS0XNl471s7D0zcSA

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- PostgreSQL database dump complete
--

\unrestrict EJZxqs7ODGQEq9UqkXkFJjtinjrA69hZimYsVUtr6MkwEXQS0XNl471s7D0zcSA

--
-- Database "scott_db" dump
--

--
-- PostgreSQL database dump
--

\restrict Q9wzNE9RgB6ypGh2F59NbC8YQVUzY0smSG4XyItvvCPqcnQei5X8FrXWfiPt4OW

-- Dumped from database version 15.17
-- Dumped by pg_dump version 15.17

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: scott_db; Type: DATABASE; Schema: -; Owner: scott
--

CREATE DATABASE scott_db WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.UTF-8';


ALTER DATABASE scott_db OWNER TO scott;

\unrestrict Q9wzNE9RgB6ypGh2F59NbC8YQVUzY0smSG4XyItvvCPqcnQei5X8FrXWfiPt4OW
\connect scott_db
\restrict Q9wzNE9RgB6ypGh2F59NbC8YQVUzY0smSG4XyItvvCPqcnQei5X8FrXWfiPt4OW

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: dept; Type: TABLE; Schema: public; Owner: scott
--

CREATE TABLE public.dept (
    deptno integer NOT NULL,
    dname character varying(14),
    loc character varying(13)
);


ALTER TABLE public.dept OWNER TO scott;

--
-- Name: emp; Type: TABLE; Schema: public; Owner: scott
--

CREATE TABLE public.emp (
    empno integer NOT NULL,
    ename character varying(10),
    job character varying(9),
    mgr integer,
    hiredate date,
    sal numeric(7,2),
    comm numeric(7,2),
    deptno integer
);


ALTER TABLE public.emp OWNER TO scott;

--
-- Name: member; Type: TABLE; Schema: public; Owner: scott
--

CREATE TABLE public.member (
    num integer NOT NULL,
    name text NOT NULL,
    addr text
);


ALTER TABLE public.member OWNER TO scott;

--
-- Name: member_num_seq; Type: SEQUENCE; Schema: public; Owner: scott
--

CREATE SEQUENCE public.member_num_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.member_num_seq OWNER TO scott;

--
-- Name: member_num_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: scott
--

ALTER SEQUENCE public.member_num_seq OWNED BY public.member.num;


--
-- Name: notice; Type: TABLE; Schema: public; Owner: scott
--

CREATE TABLE public.notice (
    num integer NOT NULL,
    content text
);


ALTER TABLE public.notice OWNER TO scott;

--
-- Name: notice_num_seq; Type: SEQUENCE; Schema: public; Owner: scott
--

CREATE SEQUENCE public.notice_num_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.notice_num_seq OWNER TO scott;

--
-- Name: notice_num_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: scott
--

ALTER SEQUENCE public.notice_num_seq OWNED BY public.notice.num;


--
-- Name: post; Type: TABLE; Schema: public; Owner: scott
--

CREATE TABLE public.post (
    num integer NOT NULL,
    writer character varying(50) NOT NULL,
    title character varying(100),
    content text,
    created_at timestamp without time zone DEFAULT now() NOT NULL
);


ALTER TABLE public.post OWNER TO scott;

--
-- Name: post_num_seq; Type: SEQUENCE; Schema: public; Owner: scott
--

CREATE SEQUENCE public.post_num_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.post_num_seq OWNER TO scott;

--
-- Name: post_num_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: scott
--

ALTER SEQUENCE public.post_num_seq OWNED BY public.post.num;


--
-- Name: member num; Type: DEFAULT; Schema: public; Owner: scott
--

ALTER TABLE ONLY public.member ALTER COLUMN num SET DEFAULT nextval('public.member_num_seq'::regclass);


--
-- Name: notice num; Type: DEFAULT; Schema: public; Owner: scott
--

ALTER TABLE ONLY public.notice ALTER COLUMN num SET DEFAULT nextval('public.notice_num_seq'::regclass);


--
-- Name: post num; Type: DEFAULT; Schema: public; Owner: scott
--

ALTER TABLE ONLY public.post ALTER COLUMN num SET DEFAULT nextval('public.post_num_seq'::regclass);


--
-- Data for Name: dept; Type: TABLE DATA; Schema: public; Owner: scott
--

COPY public.dept (deptno, dname, loc) FROM stdin;
10	ACCOUNTING	NEW YORK
20	RESEARCH	DALLAS
30	SALES	CHICAGO
40	OPERATIONS	BOSTON
\.


--
-- Data for Name: emp; Type: TABLE DATA; Schema: public; Owner: scott
--

COPY public.emp (empno, ename, job, mgr, hiredate, sal, comm, deptno) FROM stdin;
7369	SMITH	CLERK	7902	1980-12-17	800.00	\N	20
7499	ALLEN	SALESMAN	7698	1981-02-20	1600.00	300.00	30
7521	WARD	SALESMAN	7698	1981-02-22	1250.00	500.00	30
7566	JONES	MANAGER	7839	1981-04-02	2975.00	\N	20
7654	MARTIN	SALESMAN	7698	1981-09-28	1250.00	1400.00	30
7698	BLAKE	MANAGER	7839	1981-05-01	2850.00	\N	30
7782	CLARK	MANAGER	7839	1981-06-09	2450.00	\N	10
7788	SCOTT	ANALYST	7566	1987-07-13	3000.00	\N	20
7839	KING	PRESIDENT	\N	1981-11-17	5000.00	\N	10
7844	TURNER	SALESMAN	7698	1981-09-08	1500.00	0.00	30
7876	ADAMS	CLERK	7788	1987-07-13	1100.00	\N	20
7900	JAMES	CLERK	7698	1981-12-03	950.00	\N	30
7902	FORD	ANALYST	7566	1981-12-03	3000.00	\N	20
7934	MILLER	CLERK	7782	1982-01-23	1300.00	\N	10
\.


--
-- Data for Name: member; Type: TABLE DATA; Schema: public; Owner: scott
--

COPY public.member (num, name, addr) FROM stdin;
1	김구라	노량진
3	김구라3	노량진3
\.


--
-- Data for Name: notice; Type: TABLE DATA; Schema: public; Owner: scott
--

COPY public.notice (num, content) FROM stdin;
1	오늘은 불금입니다
2	즐거운 주말 보내세요
3	푹 쉬시고 월요일에 뵐께요...
4	월요일 입니다. linux가 곧 시작됩니다
5	ansible 도 배워야 합니다
\.


--
-- Data for Name: post; Type: TABLE DATA; Schema: public; Owner: scott
--

COPY public.post (num, writer, title, content, created_at) FROM stdin;
1	kim	hello	...bye	2026-04-20 10:40:24.880509
2	lee	helloworld	...bye!!	2026-04-20 10:40:47.786234
7	김구라	진짜야	진짜야~~	2026-04-21 09:39:19.908436
\.


--
-- Name: member_num_seq; Type: SEQUENCE SET; Schema: public; Owner: scott
--

SELECT pg_catalog.setval('public.member_num_seq', 3, true);


--
-- Name: notice_num_seq; Type: SEQUENCE SET; Schema: public; Owner: scott
--

SELECT pg_catalog.setval('public.notice_num_seq', 5, true);


--
-- Name: post_num_seq; Type: SEQUENCE SET; Schema: public; Owner: scott
--

SELECT pg_catalog.setval('public.post_num_seq', 8, true);


--
-- Name: dept dept_pkey; Type: CONSTRAINT; Schema: public; Owner: scott
--

ALTER TABLE ONLY public.dept
    ADD CONSTRAINT dept_pkey PRIMARY KEY (deptno);


--
-- Name: emp emp_pkey; Type: CONSTRAINT; Schema: public; Owner: scott
--

ALTER TABLE ONLY public.emp
    ADD CONSTRAINT emp_pkey PRIMARY KEY (empno);


--
-- Name: member member_pkey; Type: CONSTRAINT; Schema: public; Owner: scott
--

ALTER TABLE ONLY public.member
    ADD CONSTRAINT member_pkey PRIMARY KEY (num);


--
-- Name: notice notice_pkey; Type: CONSTRAINT; Schema: public; Owner: scott
--

ALTER TABLE ONLY public.notice
    ADD CONSTRAINT notice_pkey PRIMARY KEY (num);


--
-- Name: post post_pkey; Type: CONSTRAINT; Schema: public; Owner: scott
--

ALTER TABLE ONLY public.post
    ADD CONSTRAINT post_pkey PRIMARY KEY (num);


--
-- Name: emp emp_deptno_fkey; Type: FK CONSTRAINT; Schema: public; Owner: scott
--

ALTER TABLE ONLY public.emp
    ADD CONSTRAINT emp_deptno_fkey FOREIGN KEY (deptno) REFERENCES public.dept(deptno);


--
-- PostgreSQL database dump complete
--

\unrestrict Q9wzNE9RgB6ypGh2F59NbC8YQVUzY0smSG4XyItvvCPqcnQei5X8FrXWfiPt4OW

--
-- PostgreSQL database cluster dump complete
--

