--
-- PostgreSQL database dump
--

\restrict Y6odetMvteq0tSEHolcguWC82Oa6Hj2A1SMOWsqm7S0Msh2HkXTDWEM02iURY48

-- Dumped from database version 17.10 (Debian 17.10-1.pgdg13+1)
-- Dumped by pg_dump version 18.4 (Ubuntu 18.4-0ubuntu0.26.04.1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
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

INSERT INTO public.map_indicators (id, name, slug, title, description, data_source, published, rank, created_at, updated_at) VALUES (1, 'KenyaCensus/PopulationEnumerated', 'kenya-census.population-enumerated', '{"en": "Population Enumerated"}', '{"en": "Total population enumerated by area"}', 'kenya-census', true, NULL, '2026-07-22 07:56:16', '2026-07-22 07:56:48') ON CONFLICT DO NOTHING;
INSERT INTO public.map_indicators (id, name, slug, title, description, data_source, published, rank, created_at, updated_at) VALUES (2, 'KenyaCensus/ImprovedWaterAccess', 'kenya-census.improved-water-access', '{"en": "Improved Water Access"}', '{"en": "Percentage of households with an improved drinking water source"}', 'kenya-census', true, 1, '2026-07-22 08:02:26', '2026-07-22 08:09:56') ON CONFLICT DO NOTHING;


--
-- Name: map_indicators_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.map_indicators_id_seq', 2, true);


--
-- PostgreSQL database dump complete
--

\unrestrict Y6odetMvteq0tSEHolcguWC82Oa6Hj2A1SMOWsqm7S0Msh2HkXTDWEM02iURY48

