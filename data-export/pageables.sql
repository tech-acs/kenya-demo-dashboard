--
-- PostgreSQL database dump
--

\restrict NYydwlXdm50VjFqL7XSR9fi998CKDnSvkhokzhbLDLRkyVi6qV5K4GVUmjKV54m

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
-- Data for Name: pageables; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.pageables (id, page_id, pageable_id, pageable_type, rank, created_at, updated_at) VALUES (1, 1, 1, 'Uneca\Chimera\Models\Indicator', 0, '2026-01-23 06:20:50', '2026-01-23 06:20:50') ON CONFLICT DO NOTHING;
INSERT INTO public.pageables (id, page_id, pageable_id, pageable_type, rank, created_at, updated_at) VALUES (2, 1, 4, 'Uneca\Chimera\Models\Indicator', 0, '2026-01-23 06:21:05', '2026-01-23 06:21:05') ON CONFLICT DO NOTHING;
INSERT INTO public.pageables (id, page_id, pageable_id, pageable_type, rank, created_at, updated_at) VALUES (3, 1, 5, 'Uneca\Chimera\Models\Indicator', 0, '2026-01-23 06:32:12', '2026-01-23 06:32:12') ON CONFLICT DO NOTHING;
INSERT INTO public.pageables (id, page_id, pageable_id, pageable_type, rank, created_at, updated_at) VALUES (4, 1, 2, 'Uneca\Chimera\Models\Indicator', 0, '2026-01-23 06:32:17', '2026-01-23 06:32:17') ON CONFLICT DO NOTHING;
INSERT INTO public.pageables (id, page_id, pageable_id, pageable_type, rank, created_at, updated_at) VALUES (5, 1, 8, 'Uneca\Chimera\Models\Indicator', 0, '2026-01-23 06:32:23', '2026-01-23 06:32:23') ON CONFLICT DO NOTHING;
INSERT INTO public.pageables (id, page_id, pageable_id, pageable_type, rank, created_at, updated_at) VALUES (6, 1, 9, 'Uneca\Chimera\Models\Indicator', 0, '2026-01-23 06:32:29', '2026-01-23 06:32:29') ON CONFLICT DO NOTHING;
INSERT INTO public.pageables (id, page_id, pageable_id, pageable_type, rank, created_at, updated_at) VALUES (7, 1, 10, 'Uneca\Chimera\Models\Indicator', 0, '2026-01-23 06:32:35', '2026-01-23 06:32:35') ON CONFLICT DO NOTHING;
INSERT INTO public.pageables (id, page_id, pageable_id, pageable_type, rank, created_at, updated_at) VALUES (8, 1, 11, 'Uneca\Chimera\Models\Indicator', 0, '2026-01-23 06:32:40', '2026-01-23 06:32:40') ON CONFLICT DO NOTHING;
INSERT INTO public.pageables (id, page_id, pageable_id, pageable_type, rank, created_at, updated_at) VALUES (9, 1, 3, 'Uneca\Chimera\Models\Indicator', 0, '2026-01-23 06:32:45', '2026-01-23 06:32:45') ON CONFLICT DO NOTHING;
INSERT INTO public.pageables (id, page_id, pageable_id, pageable_type, rank, created_at, updated_at) VALUES (10, 2, 1, 'Uneca\Chimera\Models\MapIndicator', 0, '2026-01-23 06:35:50', '2026-01-23 06:35:50') ON CONFLICT DO NOTHING;
INSERT INTO public.pageables (id, page_id, pageable_id, pageable_type, rank, created_at, updated_at) VALUES (11, 3, 1, 'Uneca\Chimera\Models\Report', 0, '2026-01-23 06:36:10', '2026-01-23 06:36:10') ON CONFLICT DO NOTHING;


--
-- Name: pageables_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.pageables_id_seq', 11, true);


--
-- PostgreSQL database dump complete
--

\unrestrict NYydwlXdm50VjFqL7XSR9fi998CKDnSvkhokzhbLDLRkyVi6qV5K4GVUmjKV54m

