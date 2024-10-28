--
-- PostgreSQL database dump
--

-- Dumped from database version 16.2 (Debian 16.2-1.pgdg110+2)
-- Dumped by pg_dump version 16.4 (Ubuntu 16.4-1.pgdg22.04+2)

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
-- Data for Name: map_indicators; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.map_indicators (id, name, slug, title, description, data_source, published, rank, created_at, updated_at) VALUES (1, 'Households/TotalHH', 'households.total-h-h', '{"en": "Total households"}', '{"en": "Total households"}', 'households', true, NULL, '2024-10-14 07:03:28', '2024-10-14 07:11:04') ON CONFLICT DO NOTHING;


--
-- Name: map_indicators_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.map_indicators_id_seq', 1, true);


--
-- PostgreSQL database dump complete
--

