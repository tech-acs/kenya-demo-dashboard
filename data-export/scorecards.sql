--
-- PostgreSQL database dump
--

\restrict nksLkCuPnXSh6FJd1wB8IrFSWUmHgfYEMKc87faTtKLjUtIniyzIbWHNFilm5ZX

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
-- Data for Name: scorecards; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.scorecards (id, name, slug, title, data_source, published, linked_indicator, rank, created_at, updated_at, scope) VALUES (1, 'KenyaCensus/AverageHouseholdSize', 'kenya-census.average-household-size', '{"en": "Average Household Size"}', 'kenya-census', true, NULL, NULL, '2026-07-21 06:28:56', '2026-07-21 11:32:49', 'Dashboard only') ON CONFLICT DO NOTHING;
INSERT INTO public.scorecards (id, name, slug, title, data_source, published, linked_indicator, rank, created_at, updated_at, scope) VALUES (2, 'KenyaCensus/AverageInterviewTime', 'kenya-census.average-interview-time', '{"en": "Average Interview Time"}', 'kenya-census', true, NULL, NULL, '2026-07-21 06:28:56', '2026-07-21 11:33:04', 'Dashboard only') ON CONFLICT DO NOTHING;
INSERT INTO public.scorecards (id, name, slug, title, data_source, published, linked_indicator, rank, created_at, updated_at, scope) VALUES (6, 'KenyaCensus/NumberOfHouseholds', 'kenya-census.number-of-households', '{"en": "Number of Households"}', 'kenya-census', true, NULL, NULL, '2026-07-21 06:28:56', '2026-07-21 11:34:42', 'Dashboard only') ON CONFLICT DO NOTHING;
INSERT INTO public.scorecards (id, name, slug, title, data_source, published, linked_indicator, rank, created_at, updated_at, scope) VALUES (7, 'KenyaCensus/PopulationCount', 'kenya-census.population-count', '{"en": "Population Count"}', 'kenya-census', true, NULL, NULL, '2026-07-21 06:28:56', '2026-07-21 11:34:47', 'Dashboard only') ON CONFLICT DO NOTHING;
INSERT INTO public.scorecards (id, name, slug, title, data_source, published, linked_indicator, rank, created_at, updated_at, scope) VALUES (3, 'KenyaCensus/EstimatedDaysToCompleteEnumeration', 'kenya-census.estimated-days-to-complete-enumeration', '{"en": "Estimated Days to Complete"}', 'kenya-census', true, NULL, NULL, '2026-07-21 06:28:56', '2026-07-21 11:35:19', 'Dashboard only') ON CONFLICT DO NOTHING;
INSERT INTO public.scorecards (id, name, slug, title, data_source, published, linked_indicator, rank, created_at, updated_at, scope) VALUES (5, 'KenyaCensus/NumberOfEAsThatStartedEnumeration', 'kenya-census.number-of-e-as-that-started-enumeration', '{"en": "EAs That Started Enumeration"}', 'kenya-census', true, NULL, NULL, '2026-07-21 06:28:56', '2026-07-22 08:18:55', 'Dashboard only') ON CONFLICT DO NOTHING;
INSERT INTO public.scorecards (id, name, slug, title, data_source, published, linked_indicator, rank, created_at, updated_at, scope) VALUES (11, 'KenyaCensus/FarmingHouseholds', 'kenya-census.farming-households', '{"en": "Farming Households"}', 'kenya-census', true, NULL, NULL, '2026-07-22 08:29:46', '2026-07-22 08:33:09', 'Dashboard only') ON CONFLICT DO NOTHING;
INSERT INTO public.scorecards (id, name, slug, title, data_source, published, linked_indicator, rank, created_at, updated_at, scope) VALUES (10, 'KenyaCensus/HudumaRegistration', 'kenya-census.huduma-registration', '{"en": "Huduma Registration"}', 'kenya-census', true, NULL, 1, '2026-07-22 08:22:35', '2026-07-22 08:33:32', 'Dashboard only') ON CONFLICT DO NOTHING;


--
-- Name: scorecards_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.scorecards_id_seq', 11, true);


--
-- PostgreSQL database dump complete
--

\unrestrict nksLkCuPnXSh6FJd1wB8IrFSWUmHgfYEMKc87faTtKLjUtIniyzIbWHNFilm5ZX

