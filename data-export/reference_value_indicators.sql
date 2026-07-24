--
-- PostgreSQL database dump
--

\restrict m8ssteySvl07fyDZkFWbeZXxjz7pUd8wpDy7Wjg4orEF49imscLhn7Be0MhKYkF

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
-- Data for Name: reference_value_indicators; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.reference_value_indicators (id, indicator, description, created_at, updated_at) VALUES (1, 'Population', 'Population count', '2026-07-20 11:59:03', '2026-07-20 11:59:03') ON CONFLICT DO NOTHING;
INSERT INTO public.reference_value_indicators (id, indicator, description, created_at, updated_at) VALUES (2, 'Households', 'Number of households', '2026-07-20 11:59:21', '2026-07-20 11:59:21') ON CONFLICT DO NOTHING;


--
-- Name: reference_value_indicators_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.reference_value_indicators_id_seq', 33, true);


--
-- PostgreSQL database dump complete
--

\unrestrict m8ssteySvl07fyDZkFWbeZXxjz7pUd8wpDy7Wjg4orEF49imscLhn7Be0MhKYkF

