--
-- PostgreSQL database dump
--

-- Dumped from database version 15.0
-- Dumped by pg_dump version 15.0

-- Started on 2022-12-15 19:44:01

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
-- TOC entry 214 (class 1259 OID 16517)
-- Name: funcionario; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.funcionario (
    nome character varying,
    id_func integer NOT NULL,
    carteirat integer,
    contrato integer,
    id_gerente integer,
    id_supervisor integer
);


ALTER TABLE public.funcionario OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 16524)
-- Name: veiculo; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.veiculo (
    cod_veic integer NOT NULL,
    n_doc integer,
    id_func integer,
    modelo character varying,
    placa character varying,
    cor character varying,
    data_retirada character varying,
    data_devolucao character varying
);


ALTER TABLE public.veiculo OWNER TO postgres;

--
-- TOC entry 3320 (class 0 OID 16517)
-- Dependencies: 214
-- Data for Name: funcionario; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.funcionario VALUES ('a', 1, 1, 1, 1, 1);
INSERT INTO public.funcionario VALUES ('danton', 123, 123, 123, 123, 123);


--
-- TOC entry 3321 (class 0 OID 16524)
-- Dependencies: 215
-- Data for Name: veiculo; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.veiculo VALUES (1, 1, 1, 'a', 'a', 'a', 'a', 'a');
INSERT INTO public.veiculo VALUES (123, 123, 123, 'a', 'a', 'a', '26/02/2008', '27/02/2009');


--
-- TOC entry 3177 (class 2606 OID 16523)
-- Name: funcionario funcionario_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.funcionario
    ADD CONSTRAINT funcionario_pkey PRIMARY KEY (id_func);


-- Completed on 2022-12-15 19:44:01

--
-- PostgreSQL database dump complete
--

