--
-- PostgreSQL database dump
--

-- Dumped from database version 16.2 (Debian 16.2-1.pgdg110+2)
-- Dumped by pg_dump version 16.4 (Ubuntu 16.4-1.pgdg22.04+2)

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
-- Data for Name: permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.permissions (id, name, guard_name, created_at, updated_at) VALUES (1, 'households:average-household-size:indicator', 'web', '2024-09-08 11:18:12', '2024-09-08 11:18:12') ON CONFLICT DO NOTHING;
INSERT INTO public.permissions (id, name, guard_name, created_at, updated_at) VALUES (2, 'households', 'web', '2024-09-08 12:00:31', '2024-09-08 12:00:31') ON CONFLICT DO NOTHING;
INSERT INTO public.permissions (id, name, guard_name, created_at, updated_at) VALUES (3, 'households:households-enumerated-against-target:indicator', 'web', '2024-09-08 12:07:35', '2024-09-08 12:07:35') ON CONFLICT DO NOTHING;
INSERT INTO public.permissions (id, name, guard_name, created_at, updated_at) VALUES (4, 'households:population-pyramid:indicator', 'web', '2024-09-08 12:45:11', '2024-09-08 12:45:11') ON CONFLICT DO NOTHING;
INSERT INTO public.permissions (id, name, guard_name, created_at, updated_at) VALUES (5, 'households:average-interview-time:indicator', 'web', '2024-09-09 11:04:19', '2024-09-09 11:04:19') ON CONFLICT DO NOTHING;
INSERT INTO public.permissions (id, name, guard_name, created_at, updated_at) VALUES (6, 'households:birth-rate:indicator', 'web', '2024-09-09 11:23:18', '2024-09-09 11:23:18') ON CONFLICT DO NOTHING;
INSERT INTO public.permissions (id, name, guard_name, created_at, updated_at) VALUES (9, 'reports', 'web', '2024-09-10 11:16:46', '2024-09-10 11:16:46') ON CONFLICT DO NOTHING;
INSERT INTO public.permissions (id, name, guard_name, created_at, updated_at) VALUES (10, 'households:partial-cases-by-ea:report', 'web', '2024-09-10 11:16:46', '2024-09-10 11:16:46') ON CONFLICT DO NOTHING;
INSERT INTO public.permissions (id, name, guard_name, created_at, updated_at) VALUES (11, 'scorecards', 'web', '2024-09-10 11:24:09', '2024-09-10 11:24:09') ON CONFLICT DO NOTHING;
INSERT INTO public.permissions (id, name, guard_name, created_at, updated_at) VALUES (12, 'households:average-household-size:scorecard', 'web', '2024-09-10 11:24:09', '2024-09-10 11:24:09') ON CONFLICT DO NOTHING;
INSERT INTO public.permissions (id, name, guard_name, created_at, updated_at) VALUES (13, 'households:average-interview-time:scorecard', 'web', '2024-09-10 11:30:49', '2024-09-10 11:30:49') ON CONFLICT DO NOTHING;
INSERT INTO public.permissions (id, name, guard_name, created_at, updated_at) VALUES (14, 'households:birth-rate:scorecard', 'web', '2024-09-10 11:31:09', '2024-09-10 11:31:09') ON CONFLICT DO NOTHING;
INSERT INTO public.permissions (id, name, guard_name, created_at, updated_at) VALUES (15, 'households:death-rate:scorecard', 'web', '2024-09-10 11:31:31', '2024-09-10 11:31:31') ON CONFLICT DO NOTHING;
INSERT INTO public.permissions (id, name, guard_name, created_at, updated_at) VALUES (16, 'households:maternal-mortality-ratio:scorecard', 'web', '2024-09-10 11:31:51', '2024-09-10 11:31:51') ON CONFLICT DO NOTHING;
INSERT INTO public.permissions (id, name, guard_name, created_at, updated_at) VALUES (17, 'households:number-of-days-left:scorecard', 'web', '2024-09-10 11:32:35', '2024-09-10 11:32:35') ON CONFLICT DO NOTHING;
INSERT INTO public.permissions (id, name, guard_name, created_at, updated_at) VALUES (18, 'households:total-households:scorecard', 'web', '2024-09-10 11:32:51', '2024-09-10 11:32:51') ON CONFLICT DO NOTHING;
INSERT INTO public.permissions (id, name, guard_name, created_at, updated_at) VALUES (19, 'households:total-population:scorecard', 'web', '2024-09-10 11:33:01', '2024-09-10 11:33:01') ON CONFLICT DO NOTHING;
INSERT INTO public.permissions (id, name, guard_name, created_at, updated_at) VALUES (20, 'households:households-enumerated-against-target-by-day:indicator', 'web', '2024-09-10 12:06:56', '2024-09-10 12:06:56') ON CONFLICT DO NOTHING;
INSERT INTO public.permissions (id, name, guard_name, created_at, updated_at) VALUES (21, 'households:male-to-female-ratio:indicator', 'web', '2024-09-10 12:15:39', '2024-09-10 12:15:39') ON CONFLICT DO NOTHING;
INSERT INTO public.permissions (id, name, guard_name, created_at, updated_at) VALUES (22, 'households:percentage-population-enumerated-against-target:indicator', 'web', '2024-09-10 13:17:10', '2024-09-10 13:17:10') ON CONFLICT DO NOTHING;
INSERT INTO public.permissions (id, name, guard_name, created_at, updated_at) VALUES (23, 'households:population-distribution-by-broad-age-group:indicator', 'web', '2024-09-10 13:52:03', '2024-09-10 13:52:03') ON CONFLICT DO NOTHING;
INSERT INTO public.permissions (id, name, guard_name, created_at, updated_at) VALUES (24, 'map_indicators', 'web', '2024-10-14 07:03:28', '2024-10-14 07:03:28') ON CONFLICT DO NOTHING;
INSERT INTO public.permissions (id, name, guard_name, created_at, updated_at) VALUES (25, 'households:total-h-h:map-indicator', 'web', '2024-10-14 07:03:28', '2024-10-14 07:03:28') ON CONFLICT DO NOTHING;


--
-- Name: permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.permissions_id_seq', 25, true);


--
-- PostgreSQL database dump complete
--

