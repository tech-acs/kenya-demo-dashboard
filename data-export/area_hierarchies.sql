--
-- PostgreSQL database dump
--

\restrict q0XJqSgmFIcevaQBF3A4XthtpHUqnFBnKLpCvm517iIDeDjxefCUUhuQyDQDR3E

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
-- Data for Name: area_hierarchies; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.area_hierarchies (id, index, name, zero_pad_length, simplification_tolerance, map_zoom_levels, created_at, updated_at) VALUES (1, 0, '{"en": "County"}', 2, 0, NULL, '2024-09-08 11:08:42', '2024-09-08 11:08:42') ON CONFLICT DO NOTHING;
INSERT INTO public.area_hierarchies (id, index, name, zero_pad_length, simplification_tolerance, map_zoom_levels, created_at, updated_at) VALUES (2, 1, '{"en": "Subcounty"}', 2, 0, NULL, '2024-09-08 11:08:59', '2024-09-08 11:08:59') ON CONFLICT DO NOTHING;
INSERT INTO public.area_hierarchies (id, index, name, zero_pad_length, simplification_tolerance, map_zoom_levels, created_at, updated_at) VALUES (3, 2, '{"en": "Division"}', 2, 0, NULL, '2024-09-08 11:09:11', '2024-09-08 11:09:11') ON CONFLICT DO NOTHING;
INSERT INTO public.area_hierarchies (id, index, name, zero_pad_length, simplification_tolerance, map_zoom_levels, created_at, updated_at) VALUES (4, 3, '{"en": "Location"}', 2, 0, NULL, '2024-09-08 11:09:27', '2024-09-08 11:09:27') ON CONFLICT DO NOTHING;
INSERT INTO public.area_hierarchies (id, index, name, zero_pad_length, simplification_tolerance, map_zoom_levels, created_at, updated_at) VALUES (5, 4, '{"en": "Sublocation"}', 2, 0, NULL, '2024-09-08 11:09:42', '2024-09-08 11:09:42') ON CONFLICT DO NOTHING;
INSERT INTO public.area_hierarchies (id, index, name, zero_pad_length, simplification_tolerance, map_zoom_levels, created_at, updated_at) VALUES (6, 5, '{"en": "EA"}', 3, 0, NULL, '2024-09-08 11:09:54', '2024-09-08 11:09:54') ON CONFLICT DO NOTHING;


--
-- Name: area_hierarchies_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.area_hierarchies_id_seq', 6, true);


--
-- PostgreSQL database dump complete
--

\unrestrict q0XJqSgmFIcevaQBF3A4XthtpHUqnFBnKLpCvm517iIDeDjxefCUUhuQyDQDR3E

