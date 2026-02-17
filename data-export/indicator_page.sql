--
-- PostgreSQL database dump
--

\restrict Zbs1C1q3Q4vu2x7lcRBBdboqXnQO84f0GC63DR0BLkgy48hrcYDLblgFDSQ3U5F

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
-- Data for Name: indicator_page; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.indicator_page (id, indicator_id, page_id, rank, created_at, updated_at) VALUES (1, 1, 1, 0, '2024-09-08 12:00:39', '2024-09-10 11:52:15') ON CONFLICT DO NOTHING;
INSERT INTO public.indicator_page (id, indicator_id, page_id, rank, created_at, updated_at) VALUES (2, 2, 1, 1, '2024-09-09 08:59:32', '2024-09-10 11:52:15') ON CONFLICT DO NOTHING;
INSERT INTO public.indicator_page (id, indicator_id, page_id, rank, created_at, updated_at) VALUES (3, 3, 1, 2, '2024-09-09 11:02:36', '2024-09-10 11:52:15') ON CONFLICT DO NOTHING;
INSERT INTO public.indicator_page (id, indicator_id, page_id, rank, created_at, updated_at) VALUES (4, 4, 1, 3, '2024-09-09 11:22:36', '2024-09-10 11:52:15') ON CONFLICT DO NOTHING;
INSERT INTO public.indicator_page (id, indicator_id, page_id, rank, created_at, updated_at) VALUES (5, 5, 1, 4, '2024-09-09 11:31:43', '2024-09-10 11:52:15') ON CONFLICT DO NOTHING;
INSERT INTO public.indicator_page (id, indicator_id, page_id, rank, created_at, updated_at) VALUES (6, 9, 1, 0, '2024-09-10 12:29:34', '2024-09-10 12:29:34') ON CONFLICT DO NOTHING;
INSERT INTO public.indicator_page (id, indicator_id, page_id, rank, created_at, updated_at) VALUES (7, 10, 1, 0, '2024-09-10 13:24:31', '2024-09-10 13:24:31') ON CONFLICT DO NOTHING;
INSERT INTO public.indicator_page (id, indicator_id, page_id, rank, created_at, updated_at) VALUES (8, 11, 1, 0, '2024-09-10 14:01:50', '2024-09-10 14:01:50') ON CONFLICT DO NOTHING;


--
-- Name: indicator_page_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.indicator_page_id_seq', 8, true);


--
-- PostgreSQL database dump complete
--

\unrestrict Zbs1C1q3Q4vu2x7lcRBBdboqXnQO84f0GC63DR0BLkgy48hrcYDLblgFDSQ3U5F

