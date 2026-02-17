--
-- PostgreSQL database dump
--

\restrict yCfFj3YvZLMudeZOh9JQttEGuJYRLkf3JFLeI37CWgZ7yDuUT6WjJfehUnqnqKu

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
-- Data for Name: gauges; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.gauges (id, name, slug, title, subtitle, data_source, published, rank, created_at, updated_at) VALUES (2, 'Households/OverallScore', 'households.overall-score', '{"en": "Overall Score"}', '{"en": "Total score out of 100"}', 'households', true, NULL, '2026-02-17 12:15:54', '2026-02-17 12:18:07') ON CONFLICT DO NOTHING;
INSERT INTO public.gauges (id, name, slug, title, subtitle, data_source, published, rank, created_at, updated_at) VALUES (1, 'Households/Completion', 'households.completion', '{"en": "Completion"}', '{"en": "Percentage of completion"}', 'households', true, NULL, '2026-02-17 12:15:28', '2026-02-17 12:18:20') ON CONFLICT DO NOTHING;


--
-- Name: gauges_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.gauges_id_seq', 2, true);


--
-- PostgreSQL database dump complete
--

\unrestrict yCfFj3YvZLMudeZOh9JQttEGuJYRLkf3JFLeI37CWgZ7yDuUT6WjJfehUnqnqKu

