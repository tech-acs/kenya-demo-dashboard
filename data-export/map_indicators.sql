--
-- PostgreSQL database dump
--

\restrict WDxWMcsrcxvyW1atlxWmIsEblKrWxz6fCBV3DH4NF6POf9p7FZZzWugspC6SeZo

-- Dumped from database version 16.2 (Debian 16.2-1.pgdg110+2)
-- Dumped by pg_dump version 16.12 (Ubuntu 16.12-1.pgdg22.04+1)

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

INSERT INTO public.map_indicators (id, name, slug, title, description, data_source, published, rank, created_at, updated_at) VALUES (1, 'Households/TotalHH', 'households.total-h-h', '{"en": "Total households"}', '{"en": "Total households"}', 'households', true, NULL, '2024-10-14 07:03:28', '2026-01-23 06:35:50') ON CONFLICT DO NOTHING;


--
-- Name: map_indicators_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.map_indicators_id_seq', 1, true);


--
-- PostgreSQL database dump complete
--

\unrestrict WDxWMcsrcxvyW1atlxWmIsEblKrWxz6fCBV3DH4NF6POf9p7FZZzWugspC6SeZo

