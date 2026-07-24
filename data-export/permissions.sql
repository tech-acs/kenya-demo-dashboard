--
-- PostgreSQL database dump
--

\restrict J7bJTLWIwBZHgvXXq2dXVnFKic0eMAR5SmiIbtegaSgczI31LI3CECMTSNzyz2V

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
-- Data for Name: permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.permissions (id, name, guard_name, created_at, updated_at) VALUES (24, 'kenya-census:average-household-size:scorecard', 'web', '2026-07-21 06:28:56', '2026-07-21 06:28:56') ON CONFLICT DO NOTHING;
INSERT INTO public.permissions (id, name, guard_name, created_at, updated_at) VALUES (25, 'kenya-census:average-interview-time:scorecard', 'web', '2026-07-21 06:28:56', '2026-07-21 06:28:56') ON CONFLICT DO NOTHING;
INSERT INTO public.permissions (id, name, guard_name, created_at, updated_at) VALUES (26, 'kenya-census:estimated-days-to-complete-enumeration:scorecard', 'web', '2026-07-21 06:28:56', '2026-07-21 06:28:56') ON CONFLICT DO NOTHING;
INSERT INTO public.permissions (id, name, guard_name, created_at, updated_at) VALUES (28, 'kenya-census:number-of-e-as-that-started-enumeration:scorecard', 'web', '2026-07-21 06:28:56', '2026-07-21 06:28:56') ON CONFLICT DO NOTHING;
INSERT INTO public.permissions (id, name, guard_name, created_at, updated_at) VALUES (29, 'kenya-census:number-of-households:scorecard', 'web', '2026-07-21 06:28:56', '2026-07-21 06:28:56') ON CONFLICT DO NOTHING;
INSERT INTO public.permissions (id, name, guard_name, created_at, updated_at) VALUES (30, 'kenya-census:population-count:scorecard', 'web', '2026-07-21 06:28:56', '2026-07-21 06:28:56') ON CONFLICT DO NOTHING;
INSERT INTO public.permissions (id, name, guard_name, created_at, updated_at) VALUES (32, 'kenya-census:duplicate-cases:report', 'web', '2026-07-21 06:28:56', '2026-07-21 06:28:56') ON CONFLICT DO NOTHING;
INSERT INTO public.permissions (id, name, guard_name, created_at, updated_at) VALUES (33, 'kenya-census:e-as-accomplishing-assigned-targets:report', 'web', '2026-07-21 06:28:56', '2026-07-21 06:28:56') ON CONFLICT DO NOTHING;
INSERT INTO public.permissions (id, name, guard_name, created_at, updated_at) VALUES (34, 'kenya-census:e-as-performing-below-minimum-threshold:report', 'web', '2026-07-21 06:28:56', '2026-07-21 06:28:56') ON CONFLICT DO NOTHING;
INSERT INTO public.permissions (id, name, guard_name, created_at, updated_at) VALUES (35, 'kenya-census:e-as-that-started-enumeration:report', 'web', '2026-07-21 06:28:56', '2026-07-21 06:28:56') ON CONFLICT DO NOTHING;
INSERT INTO public.permissions (id, name, guard_name, created_at, updated_at) VALUES (36, 'kenya-census:enumerator-performance:report', 'web', '2026-07-21 06:28:56', '2026-07-21 06:28:56') ON CONFLICT DO NOTHING;
INSERT INTO public.permissions (id, name, guard_name, created_at, updated_at) VALUES (37, 'kenya-census:households-above-size-threshold:report', 'web', '2026-07-21 06:28:56', '2026-07-21 06:28:56') ON CONFLICT DO NOTHING;
INSERT INTO public.permissions (id, name, guard_name, created_at, updated_at) VALUES (38, 'kenya-census:partial-cases:report', 'web', '2026-07-21 06:28:56', '2026-07-21 06:28:56') ON CONFLICT DO NOTHING;
INSERT INTO public.permissions (id, name, guard_name, created_at, updated_at) VALUES (39, 'enumeration-indicators', 'web', '2026-07-21 06:55:08', '2026-07-21 06:55:08') ON CONFLICT DO NOTHING;
INSERT INTO public.permissions (id, name, guard_name, created_at, updated_at) VALUES (40, 'enumeration-reports', 'web', '2026-07-21 06:55:19', '2026-07-21 06:55:19') ON CONFLICT DO NOTHING;
INSERT INTO public.permissions (id, name, guard_name, created_at, updated_at) VALUES (41, 'enumeration-mapindicators', 'web', '2026-07-21 06:55:30', '2026-07-21 06:55:30') ON CONFLICT DO NOTHING;
INSERT INTO public.permissions (id, name, guard_name, created_at, updated_at) VALUES (66, 'kenya-census:average-household-size:indicator', 'web', '2026-07-22 05:56:12', '2026-07-22 05:56:12') ON CONFLICT DO NOTHING;
INSERT INTO public.permissions (id, name, guard_name, created_at, updated_at) VALUES (67, 'kenya-census:average-interview-time:indicator', 'web', '2026-07-22 05:56:12', '2026-07-22 05:56:12') ON CONFLICT DO NOTHING;
INSERT INTO public.permissions (id, name, guard_name, created_at, updated_at) VALUES (69, 'kenya-census:crude-death-rate:indicator', 'web', '2026-07-22 05:56:12', '2026-07-22 05:56:12') ON CONFLICT DO NOTHING;
INSERT INTO public.permissions (id, name, guard_name, created_at, updated_at) VALUES (71, 'kenya-census:fertility-rate:indicator', 'web', '2026-07-22 05:56:12', '2026-07-22 05:56:12') ON CONFLICT DO NOTHING;
INSERT INTO public.permissions (id, name, guard_name, created_at, updated_at) VALUES (72, 'kenya-census:household-completion-rate:indicator', 'web', '2026-07-22 05:56:12', '2026-07-22 05:56:12') ON CONFLICT DO NOTHING;
INSERT INTO public.permissions (id, name, guard_name, created_at, updated_at) VALUES (73, 'kenya-census:households-enumerated-per-day:indicator', 'web', '2026-07-22 05:56:12', '2026-07-22 05:56:12') ON CONFLICT DO NOTHING;
INSERT INTO public.permissions (id, name, guard_name, created_at, updated_at) VALUES (74, 'kenya-census:male-to-female-ratio:indicator', 'web', '2026-07-22 05:56:12', '2026-07-22 05:56:12') ON CONFLICT DO NOTHING;
INSERT INTO public.permissions (id, name, guard_name, created_at, updated_at) VALUES (76, 'kenya-census:number-of-e-as-that-started-enumeration:indicator', 'web', '2026-07-22 05:56:12', '2026-07-22 05:56:12') ON CONFLICT DO NOTHING;
INSERT INTO public.permissions (id, name, guard_name, created_at, updated_at) VALUES (77, 'kenya-census:number-of-households:indicator', 'web', '2026-07-22 05:56:12', '2026-07-22 05:56:12') ON CONFLICT DO NOTHING;
INSERT INTO public.permissions (id, name, guard_name, created_at, updated_at) VALUES (78, 'kenya-census:population-by-broad-age-group:indicator', 'web', '2026-07-22 05:56:12', '2026-07-22 05:56:12') ON CONFLICT DO NOTHING;
INSERT INTO public.permissions (id, name, guard_name, created_at, updated_at) VALUES (79, 'kenya-census:population-by-five-year-age-group:indicator', 'web', '2026-07-22 05:56:12', '2026-07-22 05:56:12') ON CONFLICT DO NOTHING;
INSERT INTO public.permissions (id, name, guard_name, created_at, updated_at) VALUES (80, 'kenya-census:population-by-nationality:indicator', 'web', '2026-07-22 05:56:12', '2026-07-22 05:56:12') ON CONFLICT DO NOTHING;
INSERT INTO public.permissions (id, name, guard_name, created_at, updated_at) VALUES (81, 'kenya-census:population-count:indicator', 'web', '2026-07-22 05:56:12', '2026-07-22 05:56:12') ON CONFLICT DO NOTHING;
INSERT INTO public.permissions (id, name, guard_name, created_at, updated_at) VALUES (85, 'kenya-census:structures-households-by-type:indicator', 'web', '2026-07-22 05:56:12', '2026-07-22 05:56:12') ON CONFLICT DO NOTHING;
INSERT INTO public.permissions (id, name, guard_name, created_at, updated_at) VALUES (86, 'kenya-census:urban-rural-population:indicator', 'web', '2026-07-22 05:56:12', '2026-07-22 05:56:12') ON CONFLICT DO NOTHING;
INSERT INTO public.permissions (id, name, guard_name, created_at, updated_at) VALUES (87, 'kenya-census:whipple-index-five:indicator', 'web', '2026-07-22 05:56:12', '2026-07-22 05:56:12') ON CONFLICT DO NOTHING;
INSERT INTO public.permissions (id, name, guard_name, created_at, updated_at) VALUES (88, 'kenya-census:whipple-index-zero:indicator', 'web', '2026-07-22 05:56:13', '2026-07-22 05:56:13') ON CONFLICT DO NOTHING;
INSERT INTO public.permissions (id, name, guard_name, created_at, updated_at) VALUES (89, 'kenya-census:population-pyramid:indicator', 'web', '2026-07-22 06:50:07', '2026-07-22 06:50:07') ON CONFLICT DO NOTHING;
INSERT INTO public.permissions (id, name, guard_name, created_at, updated_at) VALUES (90, 'kenya-census:population-and-households:indicator', 'web', '2026-07-22 07:15:48', '2026-07-22 07:15:48') ON CONFLICT DO NOTHING;
INSERT INTO public.permissions (id, name, guard_name, created_at, updated_at) VALUES (91, 'kenya-census:household-size-vs-elderly-dependency:indicator', 'web', '2026-07-22 07:27:00', '2026-07-22 07:27:00') ON CONFLICT DO NOTHING;
INSERT INTO public.permissions (id, name, guard_name, created_at, updated_at) VALUES (92, 'kenya-census:education-level-by-sex:indicator', 'web', '2026-07-22 07:31:02', '2026-07-22 07:31:02') ON CONFLICT DO NOTHING;
INSERT INTO public.permissions (id, name, guard_name, created_at, updated_at) VALUES (93, 'kenya-census:population-enumerated:map-indicator', 'web', '2026-07-22 07:56:16', '2026-07-22 07:56:16') ON CONFLICT DO NOTHING;
INSERT INTO public.permissions (id, name, guard_name, created_at, updated_at) VALUES (94, 'kenya-census:improved-water-access:map-indicator', 'web', '2026-07-22 08:02:26', '2026-07-22 08:02:26') ON CONFLICT DO NOTHING;
INSERT INTO public.permissions (id, name, guard_name, created_at, updated_at) VALUES (97, 'kenya-census:huduma-registration:scorecard', 'web', '2026-07-22 08:22:35', '2026-07-22 08:22:35') ON CONFLICT DO NOTHING;
INSERT INTO public.permissions (id, name, guard_name, created_at, updated_at) VALUES (98, 'kenya-census:farming-households:scorecard', 'web', '2026-07-22 08:29:46', '2026-07-22 08:29:46') ON CONFLICT DO NOTHING;
INSERT INTO public.permissions (id, name, guard_name, created_at, updated_at) VALUES (99, 'kenya-census:population-count-vs-expected:indicator', 'web', '2026-07-24 06:46:32', '2026-07-24 06:46:32') ON CONFLICT DO NOTHING;


--
-- Name: permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.permissions_id_seq', 99, true);


--
-- PostgreSQL database dump complete
--

\unrestrict J7bJTLWIwBZHgvXXq2dXVnFKic0eMAR5SmiIbtegaSgczI31LI3CECMTSNzyz2V

