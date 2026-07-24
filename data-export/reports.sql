--
-- PostgreSQL database dump
--

\restrict aHSZMeEjweJgjbMTKAJssQw7mUKd7VMmhAaUEupdl7arBcf2exk4oCbYULq6MUv

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
-- Data for Name: reports; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.reports (id, name, slug, title, description, data_source, enabled, last_generated_at, run_at, run_every, published, rank, created_at, updated_at) VALUES (3, 'KenyaCensus/EAsAccomplishingAssignedTargets', 'kenya-census.e-as-accomplishing-assigned-targets', '{"en": "EAs Accomplishing Assigned Targets"}', '{"en": "Enumeration areas that met or exceeded their assigned household targets"}', 'kenya-census', true, '2026-07-21 11:53:10', '00:00:00', 24, true, NULL, '2026-07-21 06:28:56', '2026-07-21 11:53:10') ON CONFLICT DO NOTHING;
INSERT INTO public.reports (id, name, slug, title, description, data_source, enabled, last_generated_at, run_at, run_every, published, rank, created_at, updated_at) VALUES (5, 'KenyaCensus/EAsThatStartedEnumeration', 'kenya-census.e-as-that-started-enumeration', '{"en": "EAs That Started Enumeration"}', '{"en": "Enumeration areas that have begun the enumeration process"}', 'kenya-census', true, '2026-07-21 11:53:17', '00:00:00', 24, true, NULL, '2026-07-21 06:28:56', '2026-07-21 11:53:17') ON CONFLICT DO NOTHING;
INSERT INTO public.reports (id, name, slug, title, description, data_source, enabled, last_generated_at, run_at, run_every, published, rank, created_at, updated_at) VALUES (7, 'KenyaCensus/HouseholdsAboveSizeThreshold', 'kenya-census.households-above-size-threshold', '{"en": "Households Above Size Threshold"}', '{"en": "Households with more than 50 members flagged for review"}', 'kenya-census', true, '2026-07-21 11:53:28', '00:00:00', 24, true, NULL, '2026-07-21 06:28:56', '2026-07-21 11:53:28') ON CONFLICT DO NOTHING;
INSERT INTO public.reports (id, name, slug, title, description, data_source, enabled, last_generated_at, run_at, run_every, published, rank, created_at, updated_at) VALUES (4, 'KenyaCensus/EAsPerformingBelowMinimumThreshold', 'kenya-census.e-as-performing-below-minimum-threshold', '{"en": "EAs Performing Below Minimum Threshold"}', '{"en": "Enumeration areas with completion rates below the 10% minimum threshold"}', 'kenya-census', true, '2026-07-21 11:56:24', '00:00:00', 24, true, NULL, '2026-07-21 06:28:56', '2026-07-21 11:56:24') ON CONFLICT DO NOTHING;
INSERT INTO public.reports (id, name, slug, title, description, data_source, enabled, last_generated_at, run_at, run_every, published, rank, created_at, updated_at) VALUES (6, 'KenyaCensus/EnumeratorPerformance', 'kenya-census.enumerator-performance', '{"en": "Enumerator Performance"}', '{"en": "Performance summary of enumerators across enumeration areas"}', 'kenya-census', true, '2026-07-21 11:57:17', '00:00:00', 24, true, NULL, '2026-07-21 06:28:56', '2026-07-21 11:57:17') ON CONFLICT DO NOTHING;
INSERT INTO public.reports (id, name, slug, title, description, data_source, enabled, last_generated_at, run_at, run_every, published, rank, created_at, updated_at) VALUES (2, 'KenyaCensus/DuplicateCases', 'kenya-census.duplicate-cases', '{"en": "Duplicate Cases"}', '{"en": "Listing of duplicate enumeration records"}', 'kenya-census', true, '2026-07-21 11:45:15', '00:00:00', 24, true, NULL, '2026-07-21 06:28:56', '2026-07-21 11:45:15') ON CONFLICT DO NOTHING;
INSERT INTO public.reports (id, name, slug, title, description, data_source, enabled, last_generated_at, run_at, run_every, published, rank, created_at, updated_at) VALUES (8, 'KenyaCensus/PartialCases', 'kenya-census.partial-cases', '{"en": "Partial Cases"}', '{"en": "Households with incomplete enumeration data"}', 'kenya-census', true, '2026-07-21 11:45:20', '00:00:00', 24, true, NULL, '2026-07-21 06:28:56', '2026-07-21 11:45:20') ON CONFLICT DO NOTHING;


--
-- Name: reports_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.reports_id_seq', 8, true);


--
-- PostgreSQL database dump complete
--

\unrestrict aHSZMeEjweJgjbMTKAJssQw7mUKd7VMmhAaUEupdl7arBcf2exk4oCbYULq6MUv

