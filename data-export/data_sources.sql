--
-- PostgreSQL database dump
--

\restrict 7AFsS1j4M2SNhUBONJuLwLlPfn4TZB8gVHaeDWJgc9zZigzc1bLAUAWtRoPXsv6

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
-- Data for Name: data_sources; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.data_sources (id, name, title, start_date, end_date, case_stats_component, show_on_home_page, rank, host, port, database, username, password, connection_active, driver, created_at, updated_at) VALUES (1, 'households', '{"en": "Households"}', '2024-09-01 00:00:00', '2024-09-15 00:00:00', 'case-stats', true, NULL, '127.0.0.1', '3306', 'kenya_dashboard', 'root', 'eyJpdiI6IlQ2SDJKTUYra1lrQ2FCYjhNS1AwVGc9PSIsInZhbHVlIjoiU2hRYlpsZjk2SU1ydXJSUVhTZ0lPZz09IiwibWFjIjoiNGY5Y2FlOWNhNmM5OGQ5ODBlZWY4NDQyY2M4ZTgzZTEyZDc4MTAwNWE1MzViZTdiYWNiY2E1NDFkMGM3YjQyNiIsInRhZyI6IiJ9', true, 'mysql', '2024-09-08 08:54:33', '2026-01-26 17:56:18') ON CONFLICT DO NOTHING;


--
-- Name: data_sources_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.data_sources_id_seq', 1, true);


--
-- PostgreSQL database dump complete
--

\unrestrict 7AFsS1j4M2SNhUBONJuLwLlPfn4TZB8gVHaeDWJgc9zZigzc1bLAUAWtRoPXsv6

