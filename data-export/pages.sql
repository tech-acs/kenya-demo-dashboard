--
-- PostgreSQL database dump
--

\restrict 8ibPALt9PiqJv3gdntTGhp4hZqN9w4jyi3b0a8LgaY4rPfkwyG51m7kxd6J6bG3

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
-- Data for Name: pages; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.pages (id, title, slug, description, published, rank, created_at, updated_at, "for") VALUES (1, '{"en": "Households"}', 'households', '{"en": "Selected indicators from the household questionnaire"}', true, NULL, '2024-09-08 12:00:31', '2024-09-10 11:52:15', 'Indicators') ON CONFLICT DO NOTHING;
INSERT INTO public.pages (id, title, slug, description, published, rank, created_at, updated_at, "for") VALUES (2, '{"en": "Households"}', 'households-mapindicators', '{"en": null}', true, NULL, '2026-01-23 06:35:31', '2026-01-23 06:35:31', 'Map indicators') ON CONFLICT DO NOTHING;
INSERT INTO public.pages (id, title, slug, description, published, rank, created_at, updated_at, "for") VALUES (3, '{"en": "Households"}', 'households-reports', '{"en": null}', true, NULL, '2026-01-23 06:35:40', '2026-01-23 06:35:40', 'Reports') ON CONFLICT DO NOTHING;
INSERT INTO public.pages (id, title, slug, description, published, rank, created_at, updated_at, "for") VALUES (4, '{"en": "some page"}', 'some-page-indicators', '{"en": null}', true, NULL, '2026-01-29 10:58:01', '2026-01-29 10:58:01', 'Indicators') ON CONFLICT DO NOTHING;
INSERT INTO public.pages (id, title, slug, description, published, rank, created_at, updated_at, "for") VALUES (5, '{"en": "Households"}', 'households-indicators', '{"en": null}', false, NULL, '2026-01-29 11:02:10', '2026-01-29 11:02:10', 'Indicators') ON CONFLICT DO NOTHING;
INSERT INTO public.pages (id, title, slug, description, published, rank, created_at, updated_at, "for") VALUES (6, '{"en": "Households"}', 'households-indicators', '{"en": null}', false, NULL, '2026-01-29 11:02:37', '2026-01-29 11:02:37', 'Indicators') ON CONFLICT DO NOTHING;


--
-- Name: pages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.pages_id_seq', 6, true);


--
-- PostgreSQL database dump complete
--

\unrestrict 8ibPALt9PiqJv3gdntTGhp4hZqN9w4jyi3b0a8LgaY4rPfkwyG51m7kxd6J6bG3

