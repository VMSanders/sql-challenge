--
-- PostgreSQL database dump
--

-- Dumped from database version 14.7
-- Dumped by pg_dump version 14.7

-- Started on 2023-03-23 12:55:55

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
-- TOC entry 212 (class 1259 OID 16776)
-- Name: dept_manager; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.dept_manager (
    dept_no character varying,
    emp_no integer
);


ALTER TABLE public.dept_manager OWNER TO postgres;

--
-- TOC entry 3318 (class 0 OID 16776)
-- Dependencies: 212
-- Data for Name: dept_manager; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.dept_manager VALUES ('d001', 110022);
INSERT INTO public.dept_manager VALUES ('d001', 110039);
INSERT INTO public.dept_manager VALUES ('d002', 110085);
INSERT INTO public.dept_manager VALUES ('d002', 110114);
INSERT INTO public.dept_manager VALUES ('d003', 110183);
INSERT INTO public.dept_manager VALUES ('d003', 110228);
INSERT INTO public.dept_manager VALUES ('d004', 110303);
INSERT INTO public.dept_manager VALUES ('d004', 110344);
INSERT INTO public.dept_manager VALUES ('d004', 110386);
INSERT INTO public.dept_manager VALUES ('d004', 110420);
INSERT INTO public.dept_manager VALUES ('d005', 110511);
INSERT INTO public.dept_manager VALUES ('d005', 110567);
INSERT INTO public.dept_manager VALUES ('d006', 110725);
INSERT INTO public.dept_manager VALUES ('d006', 110765);
INSERT INTO public.dept_manager VALUES ('d006', 110800);
INSERT INTO public.dept_manager VALUES ('d006', 110854);
INSERT INTO public.dept_manager VALUES ('d007', 111035);
INSERT INTO public.dept_manager VALUES ('d007', 111133);
INSERT INTO public.dept_manager VALUES ('d008', 111400);
INSERT INTO public.dept_manager VALUES ('d008', 111534);
INSERT INTO public.dept_manager VALUES ('d009', 111692);
INSERT INTO public.dept_manager VALUES ('d009', 111784);
INSERT INTO public.dept_manager VALUES ('d009', 111877);
INSERT INTO public.dept_manager VALUES ('d009', 111939);


--
-- TOC entry 3177 (class 2606 OID 16781)
-- Name: dept_manager dept_manager_dept_no_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dept_manager
    ADD CONSTRAINT dept_manager_dept_no_fkey FOREIGN KEY (dept_no) REFERENCES public.departments(dept_no);


--
-- TOC entry 3178 (class 2606 OID 16786)
-- Name: dept_manager dept_manager_emp_no_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dept_manager
    ADD CONSTRAINT dept_manager_emp_no_fkey FOREIGN KEY (emp_no) REFERENCES public.employees(emp_no);


-- Completed on 2023-03-23 12:55:55

--
-- PostgreSQL database dump complete
--

