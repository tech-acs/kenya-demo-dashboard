--
-- PostgreSQL database dump
--

\restrict VB46gHFn3w44Nn4hso6qBWX3Ze346udY9K3UB2bBYAOO5zfHYLRoWREVjXICsHu

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
-- Data for Name: pageables; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.pageables (id, page_id, pageable_id, pageable_type, rank, created_at, updated_at) VALUES (1, 1, 1, 'Uneca\Chimera\Models\Indicator', 0, '2026-07-21 06:55:51', '2026-07-21 06:55:51') ON CONFLICT DO NOTHING;
INSERT INTO public.pageables (id, page_id, pageable_id, pageable_type, rank, created_at, updated_at) VALUES (2, 1, 2, 'Uneca\Chimera\Models\Indicator', 0, '2026-07-21 06:59:52', '2026-07-21 06:59:52') ON CONFLICT DO NOTHING;
INSERT INTO public.pageables (id, page_id, pageable_id, pageable_type, rank, created_at, updated_at) VALUES (3, 2, 1, 'Uneca\Chimera\Models\Report', 0, '2026-07-21 11:43:54', '2026-07-21 11:43:54') ON CONFLICT DO NOTHING;
INSERT INTO public.pageables (id, page_id, pageable_id, pageable_type, rank, created_at, updated_at) VALUES (4, 2, 2, 'Uneca\Chimera\Models\Report', 0, '2026-07-21 11:44:05', '2026-07-21 11:44:05') ON CONFLICT DO NOTHING;
INSERT INTO public.pageables (id, page_id, pageable_id, pageable_type, rank, created_at, updated_at) VALUES (5, 2, 8, 'Uneca\Chimera\Models\Report', 0, '2026-07-21 11:44:11', '2026-07-21 11:44:11') ON CONFLICT DO NOTHING;
INSERT INTO public.pageables (id, page_id, pageable_id, pageable_type, rank, created_at, updated_at) VALUES (6, 2, 3, 'Uneca\Chimera\Models\Report', 0, '2026-07-21 11:44:17', '2026-07-21 11:44:17') ON CONFLICT DO NOTHING;
INSERT INTO public.pageables (id, page_id, pageable_id, pageable_type, rank, created_at, updated_at) VALUES (7, 2, 4, 'Uneca\Chimera\Models\Report', 0, '2026-07-21 11:44:23', '2026-07-21 11:44:23') ON CONFLICT DO NOTHING;
INSERT INTO public.pageables (id, page_id, pageable_id, pageable_type, rank, created_at, updated_at) VALUES (8, 2, 5, 'Uneca\Chimera\Models\Report', 0, '2026-07-21 11:44:28', '2026-07-21 11:44:28') ON CONFLICT DO NOTHING;
INSERT INTO public.pageables (id, page_id, pageable_id, pageable_type, rank, created_at, updated_at) VALUES (9, 2, 7, 'Uneca\Chimera\Models\Report', 0, '2026-07-21 11:44:34', '2026-07-21 11:44:34') ON CONFLICT DO NOTHING;
INSERT INTO public.pageables (id, page_id, pageable_id, pageable_type, rank, created_at, updated_at) VALUES (10, 2, 6, 'Uneca\Chimera\Models\Report', 0, '2026-07-21 11:44:39', '2026-07-21 11:44:39') ON CONFLICT DO NOTHING;
INSERT INTO public.pageables (id, page_id, pageable_id, pageable_type, rank, created_at, updated_at) VALUES (11, 1, 47, 'Uneca\Chimera\Models\Indicator', 0, '2026-07-21 13:44:34', '2026-07-21 13:44:34') ON CONFLICT DO NOTHING;
INSERT INTO public.pageables (id, page_id, pageable_id, pageable_type, rank, created_at, updated_at) VALUES (12, 1, 26, 'Uneca\Chimera\Models\Indicator', 0, '2026-07-22 04:33:20', '2026-07-22 04:33:20') ON CONFLICT DO NOTHING;
INSERT INTO public.pageables (id, page_id, pageable_id, pageable_type, rank, created_at, updated_at) VALUES (14, 1, 50, 'Uneca\Chimera\Models\Indicator', 0, '2026-07-22 06:03:12', '2026-07-22 06:03:12') ON CONFLICT DO NOTHING;
INSERT INTO public.pageables (id, page_id, pageable_id, pageable_type, rank, created_at, updated_at) VALUES (33, 1, 73, 'Uneca\Chimera\Models\Indicator', 0, '2026-07-22 07:30:08', '2026-07-22 07:30:08') ON CONFLICT DO NOTHING;
INSERT INTO public.pageables (id, page_id, pageable_id, pageable_type, rank, created_at, updated_at) VALUES (26, 1, 60, 'Uneca\Chimera\Models\Indicator', 1, '2026-07-22 06:34:29', '2026-07-22 06:34:29') ON CONFLICT DO NOTHING;
INSERT INTO public.pageables (id, page_id, pageable_id, pageable_type, rank, created_at, updated_at) VALUES (32, 1, 72, 'Uneca\Chimera\Models\Indicator', 2, '2026-07-22 07:18:45', '2026-07-22 07:18:45') ON CONFLICT DO NOTHING;
INSERT INTO public.pageables (id, page_id, pageable_id, pageable_type, rank, created_at, updated_at) VALUES (29, 1, 71, 'Uneca\Chimera\Models\Indicator', 3, '2026-07-22 07:06:37', '2026-07-22 07:06:37') ON CONFLICT DO NOTHING;
INSERT INTO public.pageables (id, page_id, pageable_id, pageable_type, rank, created_at, updated_at) VALUES (13, 1, 48, 'Uneca\Chimera\Models\Indicator', 4, '2026-07-22 06:01:52', '2026-07-22 06:01:52') ON CONFLICT DO NOTHING;
INSERT INTO public.pageables (id, page_id, pageable_id, pageable_type, rank, created_at, updated_at) VALUES (15, 1, 51, 'Uneca\Chimera\Models\Indicator', 5, '2026-07-22 06:03:39', '2026-07-22 06:03:39') ON CONFLICT DO NOTHING;
INSERT INTO public.pageables (id, page_id, pageable_id, pageable_type, rank, created_at, updated_at) VALUES (16, 1, 53, 'Uneca\Chimera\Models\Indicator', 6, '2026-07-22 06:04:12', '2026-07-22 06:04:12') ON CONFLICT DO NOTHING;
INSERT INTO public.pageables (id, page_id, pageable_id, pageable_type, rank, created_at, updated_at) VALUES (17, 1, 54, 'Uneca\Chimera\Models\Indicator', 7, '2026-07-22 06:04:41', '2026-07-22 06:04:41') ON CONFLICT DO NOTHING;
INSERT INTO public.pageables (id, page_id, pageable_id, pageable_type, rank, created_at, updated_at) VALUES (18, 1, 55, 'Uneca\Chimera\Models\Indicator', 8, '2026-07-22 06:05:04', '2026-07-22 06:05:04') ON CONFLICT DO NOTHING;
INSERT INTO public.pageables (id, page_id, pageable_id, pageable_type, rank, created_at, updated_at) VALUES (19, 1, 56, 'Uneca\Chimera\Models\Indicator', 9, '2026-07-22 06:05:19', '2026-07-22 06:05:19') ON CONFLICT DO NOTHING;
INSERT INTO public.pageables (id, page_id, pageable_id, pageable_type, rank, created_at, updated_at) VALUES (20, 1, 58, 'Uneca\Chimera\Models\Indicator', 10, '2026-07-22 06:06:07', '2026-07-22 06:06:07') ON CONFLICT DO NOTHING;
INSERT INTO public.pageables (id, page_id, pageable_id, pageable_type, rank, created_at, updated_at) VALUES (21, 1, 59, 'Uneca\Chimera\Models\Indicator', 11, '2026-07-22 06:06:21', '2026-07-22 06:06:21') ON CONFLICT DO NOTHING;
INSERT INTO public.pageables (id, page_id, pageable_id, pageable_type, rank, created_at, updated_at) VALUES (22, 1, 63, 'Uneca\Chimera\Models\Indicator', 12, '2026-07-22 06:07:28', '2026-07-22 06:07:28') ON CONFLICT DO NOTHING;
INSERT INTO public.pageables (id, page_id, pageable_id, pageable_type, rank, created_at, updated_at) VALUES (23, 1, 69, 'Uneca\Chimera\Models\Indicator', 13, '2026-07-22 06:08:38', '2026-07-22 06:08:38') ON CONFLICT DO NOTHING;
INSERT INTO public.pageables (id, page_id, pageable_id, pageable_type, rank, created_at, updated_at) VALUES (34, 1, 74, 'Uneca\Chimera\Models\Indicator', 14, '2026-07-22 07:49:23', '2026-07-22 07:49:23') ON CONFLICT DO NOTHING;
INSERT INTO public.pageables (id, page_id, pageable_id, pageable_type, rank, created_at, updated_at) VALUES (24, 1, 70, 'Uneca\Chimera\Models\Indicator', 15, '2026-07-22 06:08:59', '2026-07-22 06:08:59') ON CONFLICT DO NOTHING;
INSERT INTO public.pageables (id, page_id, pageable_id, pageable_type, rank, created_at, updated_at) VALUES (25, 1, 49, 'Uneca\Chimera\Models\Indicator', 16, '2026-07-22 06:23:51', '2026-07-22 06:23:51') ON CONFLICT DO NOTHING;
INSERT INTO public.pageables (id, page_id, pageable_id, pageable_type, rank, created_at, updated_at) VALUES (27, 1, 61, 'Uneca\Chimera\Models\Indicator', 17, '2026-07-22 06:37:32', '2026-07-22 06:37:32') ON CONFLICT DO NOTHING;
INSERT INTO public.pageables (id, page_id, pageable_id, pageable_type, rank, created_at, updated_at) VALUES (28, 1, 62, 'Uneca\Chimera\Models\Indicator', 18, '2026-07-22 06:39:40', '2026-07-22 06:39:40') ON CONFLICT DO NOTHING;
INSERT INTO public.pageables (id, page_id, pageable_id, pageable_type, rank, created_at, updated_at) VALUES (30, 1, 67, 'Uneca\Chimera\Models\Indicator', 19, '2026-07-22 07:11:18', '2026-07-22 07:11:18') ON CONFLICT DO NOTHING;
INSERT INTO public.pageables (id, page_id, pageable_id, pageable_type, rank, created_at, updated_at) VALUES (31, 1, 68, 'Uneca\Chimera\Models\Indicator', 20, '2026-07-22 07:13:29', '2026-07-22 07:13:29') ON CONFLICT DO NOTHING;
INSERT INTO public.pageables (id, page_id, pageable_id, pageable_type, rank, created_at, updated_at) VALUES (35, 3, 1, 'Uneca\Chimera\Models\MapIndicator', 0, '2026-07-22 07:56:48', '2026-07-22 07:56:48') ON CONFLICT DO NOTHING;
INSERT INTO public.pageables (id, page_id, pageable_id, pageable_type, rank, created_at, updated_at) VALUES (36, 3, 2, 'Uneca\Chimera\Models\MapIndicator', 0, '2026-07-22 08:02:58', '2026-07-22 08:02:58') ON CONFLICT DO NOTHING;
INSERT INTO public.pageables (id, page_id, pageable_id, pageable_type, rank, created_at, updated_at) VALUES (37, 1, 75, 'Uneca\Chimera\Models\Indicator', 0, '2026-07-24 06:51:10', '2026-07-24 06:51:10') ON CONFLICT DO NOTHING;


--
-- Name: pageables_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.pageables_id_seq', 37, true);


--
-- PostgreSQL database dump complete
--

\unrestrict VB46gHFn3w44Nn4hso6qBWX3Ze346udY9K3UB2bBYAOO5zfHYLRoWREVjXICsHu

