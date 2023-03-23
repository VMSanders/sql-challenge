--
-- PostgreSQL database dump
--

-- Dumped from database version 14.7
-- Dumped by pg_dump version 14.7

-- Started on 2023-03-23 12:57:09

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
-- TOC entry 209 (class 1259 OID 16750)
-- Name: titles; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.titles (
    title_id character varying NOT NULL,
    title character varying
);


ALTER TABLE public.titles OWNER TO postgres;

--
-- TOC entry 3318 (class 0 OID 16750)
-- Dependencies: 209
-- Data for Name: titles; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.titles VALUES ('s0001', 'Staff');
INSERT INTO public.titles VALUES ('s0002', 'Senior Staff');
INSERT INTO public.titles VALUES ('e0001', 'Assistant Engineer');
INSERT INTO public.titles VALUES ('e0002', 'Engineer');
INSERT INTO public.titles VALUES ('e0003', 'Senior Engineer');
INSERT INTO public.titles VALUES ('e0004', 'Technique Leader');
INSERT INTO public.titles VALUES ('m0001', 'Manager');


--
-- TOC entry 3178 (class 2606 OID 16756)
-- Name: titles titles_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.titles
    ADD CONSTRAINT titles_pkey PRIMARY KEY (title_id);


-- Completed on 2023-03-23 12:57:09

--
-- PostgreSQL database dump complete
--

