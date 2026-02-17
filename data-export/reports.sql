--
-- PostgreSQL database dump
--

\restrict 3HkE7ofsdnYNQYln2DdrE68sN1GlMBA4peEnoLR3mdObMCu0JF2ULEODTfj5ACc

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
-- Data for Name: reports; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.reports (id, name, slug, title, description, data_source, enabled, last_generated_at, run_at, run_every, published, rank, created_at, updated_at) VALUES (1, 'Households/PartialCasesByEa', 'households.partial-cases-by-ea', '{"en": "Partial cases by EA"}', '{"en": "Partial cases by EA"}', 'households', true, '2026-01-23 06:42:03', '06:00:00', 24, true, NULL, '2024-09-10 11:16:46', '2026-01-23 06:42:03') ON CONFLICT DO NOTHING;


--
-- Name: reports_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.reports_id_seq', 1, true);


--
-- PostgreSQL database dump complete
--

\unrestrict 3HkE7ofsdnYNQYln2DdrE68sN1GlMBA4peEnoLR3mdObMCu0JF2ULEODTfj5ACc

