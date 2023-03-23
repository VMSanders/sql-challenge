--
-- PostgreSQL database dump
--

-- Dumped from database version 14.7
-- Dumped by pg_dump version 14.7

-- Started on 2023-03-23 12:52:20

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
-- TOC entry 211 (class 1259 OID 16769)
-- Name: departments; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.departments (
    dept_no character varying NOT NULL,
    dept_name character varying
);


ALTER TABLE public.departments OWNER TO postgres;

--
-- TOC entry 3318 (class 0 OID 16769)
-- Dependencies: 211
-- Data for Name: departments; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.departments VALUES ('d001', 'Marketing');
INSERT INTO public.departments VALUES ('d002', 'Finance');
INSERT INTO public.departments VALUES ('d003', 'Human Resources');
INSERT INTO public.departments VALUES ('d004', 'Production');
INSERT INTO public.departments VALUES ('d005', 'Development');
INSERT INTO public.departments VALUES ('d006', 'Quality Management');
INSERT INTO public.departments VALUES ('d007', 'Sales');
INSERT INTO public.departments VALUES ('d008', 'Research');
INSERT INTO public.departments VALUES ('d009', 'Customer Service');


--
-- TOC entry 3178 (class 2606 OID 16775)
-- Name: departments departments_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.departments
    ADD CONSTRAINT departments_pkey PRIMARY KEY (dept_no);


-- Completed on 2023-03-23 12:52:20

--
-- PostgreSQL database dump complete
--

