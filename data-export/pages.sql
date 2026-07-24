--
-- PostgreSQL database dump
--

\restrict lemJcFPHdmaJLEJX2vGZtdiMDjglYbZuzRFDi2XuaoVcyxiGs7BwU4bVyS1P6oO

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
-- Data for Name: pages; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.pages (id, title, slug, description, published, rank, created_at, updated_at, "for") VALUES (1, '{"en": "Enumeration"}', 'enumeration-indicators', '{"en": null}', true, NULL, '2026-07-21 06:55:08', '2026-07-22 07:53:43', 'Indicators') ON CONFLICT DO NOTHING;
INSERT INTO public.pages (id, title, slug, description, published, rank, created_at, updated_at, "for") VALUES (2, '{"en": "Enumeration"}', 'enumeration-reports', '{"en": "These are excel reports you can download and are generated on a set schedule."}', true, NULL, '2026-07-21 06:55:19', '2026-07-22 08:08:46', 'Reports') ON CONFLICT DO NOTHING;
INSERT INTO public.pages (id, title, slug, description, published, rank, created_at, updated_at, "for") VALUES (3, '{"en": "Enumeration"}', 'enumeration-mapindicators', '{"en": "Some indicators are best visualized on a choropleth map."}', true, NULL, '2026-07-21 06:55:30', '2026-07-22 08:09:33', 'Map indicators') ON CONFLICT DO NOTHING;


--
-- Name: pages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.pages_id_seq', 3, true);


--
-- PostgreSQL database dump complete
--

\unrestrict lemJcFPHdmaJLEJX2vGZtdiMDjglYbZuzRFDi2XuaoVcyxiGs7BwU4bVyS1P6oO

