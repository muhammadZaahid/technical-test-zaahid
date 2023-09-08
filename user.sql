--
-- PostgreSQL database dump
--

-- Dumped from database version 11.20
-- Dumped by pg_dump version 11.20

-- Started on 2023-09-08 10:56:44

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
-- TOC entry 3 (class 2615 OID 2200)
-- Name: public; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA public;


ALTER SCHEMA public OWNER TO postgres;

--
-- TOC entry 2817 (class 0 OID 0)
-- Dependencies: 3
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA public IS 'standard public schema';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 197 (class 1259 OID 20704)
-- Name: profile; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.profile (
    id integer NOT NULL,
    first_name character varying(50),
    last_name character varying(50),
    address text,
    birthday date,
    email character varying(100),
    city character varying(45),
    country character varying(45),
    birth_day character varying(255)
);


ALTER TABLE public.profile OWNER TO postgres;

--
-- TOC entry 196 (class 1259 OID 20702)
-- Name: profile_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.profile_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.profile_id_seq OWNER TO postgres;

--
-- TOC entry 2818 (class 0 OID 0)
-- Dependencies: 196
-- Name: profile_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.profile_id_seq OWNED BY public.profile.id;


--
-- TOC entry 2686 (class 2604 OID 20707)
-- Name: profile id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.profile ALTER COLUMN id SET DEFAULT nextval('public.profile_id_seq'::regclass);


--
-- TOC entry 2811 (class 0 OID 20704)
-- Dependencies: 197
-- Data for Name: profile; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.profile (id, first_name, last_name, address, birthday, email, city, country, birth_day) FROM stdin;
1	Zaahid	Rahmatulloh	Jakarta	\N	muhmammadZaahid@gmail.com	Jakarta	Indonesia	\N
\.


--
-- TOC entry 2819 (class 0 OID 0)
-- Dependencies: 196
-- Name: profile_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.profile_id_seq', 1, true);


--
-- TOC entry 2688 (class 2606 OID 20712)
-- Name: profile profile_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.profile
    ADD CONSTRAINT profile_pkey PRIMARY KEY (id);


-- Completed on 2023-09-08 10:56:44

--
-- PostgreSQL database dump complete
--

