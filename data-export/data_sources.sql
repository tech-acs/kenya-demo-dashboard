--
-- PostgreSQL database dump
--

\restrict a3bvl6FVubVukW2xZe4F55zxbkWGw4ipTji8fhoGgtcaKKMCudY3sjccu98J4gl

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
-- Data for Name: data_sources; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.data_sources (id, name, title, start_date, end_date, case_stats_component, show_on_home_page, rank, host, port, database, username, password, connection_active, driver, created_at, updated_at) VALUES (1, 'kenya-census', '{"en": "Kenya Census"}', '2026-07-01 00:00:00', '2026-07-31 00:00:00', 'case-stats', true, NULL, '127.0.0.1', '3306', 'my-dashboard', 'root', 'eyJpdiI6IlB2Vjc3NHd2UkV4NzNLSndITUJmRVE9PSIsInZhbHVlIjoiQXpIaldlYmIyYlJBL1BCM2hsVTVFQT09IiwibWFjIjoiYTE3MTczMWRkZDA3MzQ1Y2U2NzRjNWVjZDc0YWFkMTAyZWI1OTE0ZWQyMmY0ZmJkMzYyNzdkNDQ1NTRlMGUwZSIsInRhZyI6IiJ9', true, 'mysql', '2026-07-20 11:42:20', '2026-07-20 11:42:20') ON CONFLICT DO NOTHING;


--
-- Name: data_sources_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.data_sources_id_seq', 1, true);


--
-- PostgreSQL database dump complete
--

\unrestrict a3bvl6FVubVukW2xZe4F55zxbkWGw4ipTji8fhoGgtcaKKMCudY3sjccu98J4gl

