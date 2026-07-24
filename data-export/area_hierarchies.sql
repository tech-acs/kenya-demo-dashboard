--
-- PostgreSQL database dump
--

\restrict 1fDnyYCk8ACgN8nRJkSH9T8OMKMsfYvp4Zm7SYElp6z5zIkad2P0uZWLErQ9gwP

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
-- Data for Name: area_hierarchies; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.area_hierarchies (id, index, name, zero_pad_length, simplification_tolerance, map_zoom_levels, created_at, updated_at) VALUES (1, 0, '{"en": "County"}', 2, 0, NULL, '2026-07-20 11:44:36', '2026-07-20 11:44:36') ON CONFLICT DO NOTHING;
INSERT INTO public.area_hierarchies (id, index, name, zero_pad_length, simplification_tolerance, map_zoom_levels, created_at, updated_at) VALUES (2, 1, '{"en": "Subcounty"}', 2, 0, NULL, '2026-07-20 11:44:44', '2026-07-20 11:44:44') ON CONFLICT DO NOTHING;
INSERT INTO public.area_hierarchies (id, index, name, zero_pad_length, simplification_tolerance, map_zoom_levels, created_at, updated_at) VALUES (3, 2, '{"en": "Division"}', 2, 0, NULL, '2026-07-20 11:44:53', '2026-07-20 11:44:53') ON CONFLICT DO NOTHING;
INSERT INTO public.area_hierarchies (id, index, name, zero_pad_length, simplification_tolerance, map_zoom_levels, created_at, updated_at) VALUES (4, 3, '{"en": "Location"}', 2, 0, NULL, '2026-07-20 11:45:04', '2026-07-20 11:45:04') ON CONFLICT DO NOTHING;
INSERT INTO public.area_hierarchies (id, index, name, zero_pad_length, simplification_tolerance, map_zoom_levels, created_at, updated_at) VALUES (5, 4, '{"en": "Sublocation"}', 2, 0, NULL, '2026-07-20 11:45:17', '2026-07-20 11:45:17') ON CONFLICT DO NOTHING;
INSERT INTO public.area_hierarchies (id, index, name, zero_pad_length, simplification_tolerance, map_zoom_levels, created_at, updated_at) VALUES (6, 5, '{"en": "EA"}', 3, 0, NULL, '2026-07-20 11:45:27', '2026-07-20 11:45:27') ON CONFLICT DO NOTHING;


--
-- Name: area_hierarchies_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.area_hierarchies_id_seq', 6, true);


--
-- PostgreSQL database dump complete
--

\unrestrict 1fDnyYCk8ACgN8nRJkSH9T8OMKMsfYvp4Zm7SYElp6z5zIkad2P0uZWLErQ9gwP

