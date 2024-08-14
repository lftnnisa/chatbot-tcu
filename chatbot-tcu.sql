--
-- PostgreSQL database dump
--

-- Dumped from database version 15.7
-- Dumped by pg_dump version 16.3

-- Started on 2024-08-14 23:44:38

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
-- TOC entry 214 (class 1259 OID 19119)
-- Name: trx_chat; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.trx_chat (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    question text,
    answer text
);


ALTER TABLE public.trx_chat OWNER TO postgres;

--
-- TOC entry 3317 (class 0 OID 19119)
-- Dependencies: 214
-- Data for Name: trx_chat; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.trx_chat (id, question, answer) FROM stdin;
b2596644-996b-4747-8071-669970fe6e3a	hafid	ali mustaqim
236641b1-5a9d-43b5-8395-ffe2fd116ecd	lifta	anisa
20907594-1ac8-4738-9e07-e02a546dc96a	apa itu jsx?	JSX adalah sintaks ekstensi JavaScript yang digunakan dalam React untuk menulis elemen UI. JSX mirip dengan HTML, tetapi memiliki kemampuan untuk menulis JavaScript di dalamnya.
30c89752-2f96-4bcb-80d8-c25092333457	bagaimana cara memulai proyek react native?	Gunakan perintah npx react-native init ProjectName untuk membuat proyek baru.
e28b1417-39e9-4ce4-ac17-8fc39fd196dd	apa itu react native?	React Native adalah framework open-source yang digunakan untuk membangun aplikasi mobile dengan menggunakan JavaScript dan React.
\.


--
-- TOC entry 3174 (class 2606 OID 19126)
-- Name: trx_chat trx_chat_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.trx_chat
    ADD CONSTRAINT trx_chat_pkey PRIMARY KEY (id);


-- Completed on 2024-08-14 23:44:39

--
-- PostgreSQL database dump complete
--

