--
-- PostgreSQL database dump
--

\restrict ioWfg0454Ncsd97gWUIc3vvuDD9mGzO9Jh94tZOqFqdE4BimY1q7JFnDmP3iB6D

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
-- Data for Name: scorecards; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.scorecards (id, name, slug, title, data_source, published, linked_indicator, rank, created_at, updated_at, scope) VALUES (2, 'Households/AverageInterviewTime', 'households.average-interview-time', '{"en": "Average interview time"}', 'households', true, NULL, NULL, '2024-09-10 11:30:49', '2024-09-10 11:41:21', 'Dashboard only') ON CONFLICT DO NOTHING;
INSERT INTO public.scorecards (id, name, slug, title, data_source, published, linked_indicator, rank, created_at, updated_at, scope) VALUES (4, 'Households/DeathRate', 'households.death-rate', '{"en": "Death rate"}', 'households', true, NULL, NULL, '2024-09-10 11:31:31', '2024-09-10 11:41:30', 'Dashboard only') ON CONFLICT DO NOTHING;
INSERT INTO public.scorecards (id, name, slug, title, data_source, published, linked_indicator, rank, created_at, updated_at, scope) VALUES (5, 'Households/MaternalMortalityRatio', 'households.maternal-mortality-ratio', '{"en": "Maternal mortaility ratio"}', 'households', true, NULL, NULL, '2024-09-10 11:31:51', '2024-09-10 11:41:34', 'Dashboard only') ON CONFLICT DO NOTHING;
INSERT INTO public.scorecards (id, name, slug, title, data_source, published, linked_indicator, rank, created_at, updated_at, scope) VALUES (7, 'Households/TotalHouseholds', 'households.total-households', '{"en": "Total households"}', 'households', true, NULL, NULL, '2024-09-10 11:32:51', '2024-09-10 11:49:42', 'Dashboard only') ON CONFLICT DO NOTHING;
INSERT INTO public.scorecards (id, name, slug, title, data_source, published, linked_indicator, rank, created_at, updated_at, scope) VALUES (8, 'Households/TotalPopulation', 'households.total-population', '{"en": "Total population"}', 'households', true, NULL, NULL, '2024-09-10 11:33:01', '2024-09-10 11:49:47', 'Dashboard only') ON CONFLICT DO NOTHING;
INSERT INTO public.scorecards (id, name, slug, title, data_source, published, linked_indicator, rank, created_at, updated_at, scope) VALUES (6, 'Households/NumberOfDaysLeft', 'households.number-of-days-left', '{"en": "Projected days to completion"}', 'households', true, NULL, NULL, '2024-09-10 11:32:35', '2024-09-10 11:51:37', 'Dashboard only') ON CONFLICT DO NOTHING;
INSERT INTO public.scorecards (id, name, slug, title, data_source, published, linked_indicator, rank, created_at, updated_at, scope) VALUES (1, 'Households/AverageHouseholdSize', 'households.average-household-size', '{"en": "Average household size"}', 'households', true, 'households.average-household-size', NULL, '2024-09-10 11:24:09', '2024-09-23 06:46:40', 'Dashboard only') ON CONFLICT DO NOTHING;
INSERT INTO public.scorecards (id, name, slug, title, data_source, published, linked_indicator, rank, created_at, updated_at, scope) VALUES (3, 'Households/BirthRate', 'households.birth-rate', '{"en": "Birth rate"}', 'households', true, 'households.birth-rate', NULL, '2024-09-10 11:31:09', '2024-09-23 06:53:47', 'Dashboard only') ON CONFLICT DO NOTHING;


--
-- Name: scorecards_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.scorecards_id_seq', 8, true);


--
-- PostgreSQL database dump complete
--

\unrestrict ioWfg0454Ncsd97gWUIc3vvuDD9mGzO9Jh94tZOqFqdE4BimY1q7JFnDmP3iB6D

