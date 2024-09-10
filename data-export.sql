--
-- PostgreSQL database dump
--

-- Dumped from database version 16.2 (Debian 16.2-1.pgdg110+2)
-- Dumped by pg_dump version 16.4 (Ubuntu 16.4-1.pgdg22.04+1)

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
-- Data for Name: data_sources; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.data_sources (id, name, title, start_date, end_date, case_stats_component, show_on_home_page, rank, host, port, database, username, password, connection_active, driver, created_at, updated_at) VALUES (1, 'households', '{"en": "Households"}', '2024-09-01 00:00:00', '2024-09-15 00:00:00', 'case-stats', true, NULL, '127.0.0.1', '3306', 'kenya_dashboard', 'root', 'eyJpdiI6IjdmRDBjbngrc1RqZGdiMzAxSWtoUFE9PSIsInZhbHVlIjoiS0FIRmZjWndwNUNHRnJnVnNkNW05QT09IiwibWFjIjoiNTNiN2YzZjE4YzQyMzQ5MDA1NGJlMGJhMTQ4ZDhlY2RmYThjYWE2ODk3ZDYxYWI1ZjNlZDZlNDY3OWM1ZDEyYiIsInRhZyI6IiJ9', true, 'mysql', '2024-09-08 08:54:33', '2024-09-08 08:54:33') ON CONFLICT DO NOTHING;


--
-- Data for Name: indicator_page; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.indicator_page (id, indicator_id, page_id, rank, created_at, updated_at) VALUES (1, 1, 1, 0, '2024-09-08 12:00:39', '2024-09-10 11:52:15') ON CONFLICT DO NOTHING;
INSERT INTO public.indicator_page (id, indicator_id, page_id, rank, created_at, updated_at) VALUES (2, 2, 1, 1, '2024-09-09 08:59:32', '2024-09-10 11:52:15') ON CONFLICT DO NOTHING;
INSERT INTO public.indicator_page (id, indicator_id, page_id, rank, created_at, updated_at) VALUES (3, 3, 1, 2, '2024-09-09 11:02:36', '2024-09-10 11:52:15') ON CONFLICT DO NOTHING;
INSERT INTO public.indicator_page (id, indicator_id, page_id, rank, created_at, updated_at) VALUES (4, 4, 1, 3, '2024-09-09 11:22:36', '2024-09-10 11:52:15') ON CONFLICT DO NOTHING;
INSERT INTO public.indicator_page (id, indicator_id, page_id, rank, created_at, updated_at) VALUES (5, 5, 1, 4, '2024-09-09 11:31:43', '2024-09-10 11:52:15') ON CONFLICT DO NOTHING;
INSERT INTO public.indicator_page (id, indicator_id, page_id, rank, created_at, updated_at) VALUES (6, 9, 1, 0, '2024-09-10 12:29:34', '2024-09-10 12:29:34') ON CONFLICT DO NOTHING;
INSERT INTO public.indicator_page (id, indicator_id, page_id, rank, created_at, updated_at) VALUES (7, 10, 1, 0, '2024-09-10 13:24:31', '2024-09-10 13:24:31') ON CONFLICT DO NOTHING;
INSERT INTO public.indicator_page (id, indicator_id, page_id, rank, created_at, updated_at) VALUES (8, 11, 1, 0, '2024-09-10 14:01:50', '2024-09-10 14:01:50') ON CONFLICT DO NOTHING;


--
-- Data for Name: indicators; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.indicators (id, name, slug, title, description, help, data_source, published, type, tag, featured_at, data, layout, created_at, updated_at) VALUES (3, 'Households/PopulationPyramid', 'households.population-pyramid', '{"en": "Population pyramid"}', '{"en": "Population pyramid"}', '{"en": null}', 'households', true, 'Default', NULL, NULL, '[{"meta": {"columnNames": {"x": "males_negated", "y": "age_range"}}, "mode": "markers", "name": "Males", "type": "bar", "xsrc": "males_negated", "ysrc": "age_range", "orientation": "h"}, {"meta": {"columnNames": {"x": "females", "y": "age_range"}}, "name": "Females", "type": "bar", "xsrc": "females", "ysrc": "age_range", "orientation": "h"}]', '{"xaxis": {"type": "linear", "range": [-334692.77777777775, 328262.77777777775], "tickmode": "auto", "autorange": true, "automargin": true, "showticklabels": false}, "yaxis": {"type": "category", "range": [-0.5, 24.5], "autorange": true}, "legend": {"x": 0, "y": 1.12, "orientation": "h"}, "mapbox": {"style": "open-street-map"}, "margin": {"b": 40, "l": 60, "r": 10, "t": 10}, "barmode": "relative", "modebar": {"color": "white", "bgcolor": "darkgray", "orientation": "v"}, "autosize": true, "colorway": ["#ef4444", "#eab308", "#22c55e", "#3b82f6", "#ec4899", "#a855f7", "#a1a1aa", "#166534", "#1e40af", "#6b21a8", "#000", "#ea580c", "#65a30d", "#0891b2", "#7c3aed", "#f43f5e", "#0ea5e9"], "dragmode": "pan", "showlegend": true}', '2024-09-08 12:45:11', '2024-09-09 11:02:36') ON CONFLICT DO NOTHING;
INSERT INTO public.indicators (id, name, slug, title, description, help, data_source, published, type, tag, featured_at, data, layout, created_at, updated_at) VALUES (2, 'Households/HouseholdsEnumeratedAgainstTarget', 'households.households-enumerated-against-target', '{"en": "Households enumerated against target"}', '{"en": "Households enumerated against target"}', '{"en": null}', 'households', true, 'Default', NULL, NULL, '[{"meta": {"columnNames": {"x": "area_name", "y": "ref_value"}}, "mode": "lines", "name": "Reference", "type": "bar", "xsrc": "area_name", "ysrc": "ref_value", "orientation": "v"}, {"meta": {"columnNames": {"x": "area_name", "y": "household"}}, "mode": "markers", "name": "Actual", "type": "bar", "xsrc": "area_name", "ysrc": "household", "orientation": "v"}]', '{"xaxis": {"type": "category", "range": [-0.5, 46.5], "tickmode": "auto", "autorange": true, "automargin": true}, "yaxis": {"type": "linear", "range": [0, 187106.31578947368], "autorange": true}, "legend": {"x": 0, "y": 1.12, "orientation": "h"}, "mapbox": {"style": "open-street-map"}, "margin": {"b": 40, "l": 60, "r": 10, "t": 10}, "barmode": "overlay", "modebar": {"color": "white", "bgcolor": "darkgray", "orientation": "v"}, "autosize": true, "colorway": ["#ef4444", "#eab308", "#22c55e", "#3b82f6", "#ec4899", "#a855f7", "#a1a1aa", "#166534", "#1e40af", "#6b21a8", "#000", "#ea580c", "#65a30d", "#0891b2", "#7c3aed", "#f43f5e", "#0ea5e9"], "dragmode": "pan", "showlegend": true}', '2024-09-08 12:07:35', '2024-09-09 08:59:32') ON CONFLICT DO NOTHING;
INSERT INTO public.indicators (id, name, slug, title, description, help, data_source, published, type, tag, featured_at, data, layout, created_at, updated_at) VALUES (1, 'Households/AverageHouseholdSize', 'households.average-household-size', '{"en": "Average household size"}', '{"en": "Average household size"}', '{"en": null}', 'households', true, 'Default', NULL, NULL, '[{"meta": {"columnNames": {"x": "area_name", "y": "average"}}, "mode": "markers", "name": "Average household size", "type": "bar", "xsrc": "area_name", "ysrc": "average", "orientation": "v"}]', '{"xaxis": {"type": "category", "range": [-0.5, 46.5], "tickmode": "auto", "autorange": true, "automargin": true}, "yaxis": {"type": "linear", "range": [0, 7.157894736842105], "title": {"text": "Household size"}, "autorange": true}, "legend": {"x": 0, "y": 1.12, "orientation": "h"}, "mapbox": {"style": "open-street-map"}, "margin": {"b": 40, "l": 60, "r": 10, "t": 10}, "modebar": {"color": "white", "bgcolor": "darkgray", "orientation": "v"}, "autosize": true, "colorway": ["#ef4444", "#eab308", "#22c55e", "#3b82f6", "#ec4899", "#a855f7", "#a1a1aa", "#166534", "#1e40af", "#6b21a8", "#000", "#ea580c", "#65a30d", "#0891b2", "#7c3aed", "#f43f5e", "#0ea5e9"], "dragmode": "pan", "showlegend": true}', '2024-09-08 11:18:12', '2024-09-08 12:00:39') ON CONFLICT DO NOTHING;
INSERT INTO public.indicators (id, name, slug, title, description, help, data_source, published, type, tag, featured_at, data, layout, created_at, updated_at) VALUES (4, 'Households/AverageInterviewTime', 'households.average-interview-time', '{"en": "Average interview time"}', '{"en": "Average interview time"}', '{"en": null}', 'households', true, 'Default', NULL, NULL, '[{"meta": {"columnNames": {"x": "area_name", "y": "average"}}, "mode": "markers", "name": "Average interview time", "type": "bar", "xsrc": "area_name", "ysrc": "average", "orientation": "v"}]', '{"xaxis": {"type": "category", "range": [-0.5, 46.5], "title": {"text": "Counties"}, "tickmode": "auto", "autorange": true, "automargin": true}, "yaxis": {"type": "linear", "range": [0, 40.315789473684205], "title": {"text": "Average interview time (minutes)"}, "autorange": true}, "legend": {"x": 0, "y": 1.12, "orientation": "h"}, "mapbox": {"style": "open-street-map"}, "margin": {"b": 40, "l": 60, "r": 10, "t": 10}, "modebar": {"color": "white", "bgcolor": "darkgray", "orientation": "v"}, "autosize": true, "colorway": ["#ef4444", "#eab308", "#22c55e", "#3b82f6", "#ec4899", "#a855f7", "#a1a1aa", "#166534", "#1e40af", "#6b21a8", "#000", "#ea580c", "#65a30d", "#0891b2", "#7c3aed", "#f43f5e", "#0ea5e9"], "dragmode": "pan", "showlegend": true}', '2024-09-09 11:04:19', '2024-09-09 11:22:36') ON CONFLICT DO NOTHING;
INSERT INTO public.indicators (id, name, slug, title, description, help, data_source, published, type, tag, featured_at, data, layout, created_at, updated_at) VALUES (5, 'Households/BirthRate', 'households.birth-rate', '{"en": "Birth rate"}', '{"en": "Birth rate"}', '{"en": null}', 'households', true, 'Default', NULL, NULL, '[{"meta": {"columnNames": {"x": "area_name", "y": "rate"}}, "mode": "markers", "name": "Crude birth rate per 1000 population", "type": "bar", "xsrc": "area_name", "ysrc": "rate", "orientation": "v"}]', '{"xaxis": {"type": "category", "range": [-0.5, 46.5], "tickmode": "auto", "autorange": true, "automargin": true}, "yaxis": {"type": "linear", "range": [0, 34.19636744247734], "title": {"text": "Birth rate"}, "autorange": true}, "legend": {"x": 0, "y": 1.12, "orientation": "h"}, "mapbox": {"style": "open-street-map"}, "margin": {"b": 40, "l": 60, "r": 10, "t": 10}, "modebar": {"color": "white", "bgcolor": "darkgray", "orientation": "v"}, "autosize": true, "colorway": ["#ef4444", "#eab308", "#22c55e", "#3b82f6", "#ec4899", "#a855f7", "#a1a1aa", "#166534", "#1e40af", "#6b21a8", "#000", "#ea580c", "#65a30d", "#0891b2", "#7c3aed", "#f43f5e", "#0ea5e9"], "dragmode": "pan", "showlegend": true}', '2024-09-09 11:23:18', '2024-09-09 11:31:43') ON CONFLICT DO NOTHING;
INSERT INTO public.indicators (id, name, slug, title, description, help, data_source, published, type, tag, featured_at, data, layout, created_at, updated_at) VALUES (8, 'Households/HouseholdsEnumeratedAgainstTargetByDay', 'households.households-enumerated-against-target-by-day', '{"en": "Households enumerated against target by day"}', '{"en": "Households enumerated against target by day"}', NULL, 'households', false, 'Default', NULL, NULL, '[]', '{"xaxis": {"type": "category", "tickmode": "auto", "automargin": true}, "legend": {"x": 0, "y": 1.12, "orientation": "h"}, "margin": {"b": 40, "l": 60, "r": 10, "t": 10}, "modebar": {"color": "white", "bgcolor": "darkgray", "orientation": "v"}, "dragmode": "pan", "showlegend": true}', '2024-09-10 12:06:56', '2024-09-10 12:06:56') ON CONFLICT DO NOTHING;
INSERT INTO public.indicators (id, name, slug, title, description, help, data_source, published, type, tag, featured_at, data, layout, created_at, updated_at) VALUES (9, 'Households/MaleToFemaleRatio', 'households.male-to-female-ratio', '{"en": "Male to female ratio"}', '{"en": "Male to female ratio"}', '{"en": null}', 'households', true, 'Default', NULL, '2024-09-10 14:02:04', '[{"meta": {"columnNames": {"x": "area_name", "y": "ratio"}}, "mode": "markers", "name": "Males per 100 females", "type": "bar", "xsrc": "area_name", "ysrc": "ratio", "orientation": "v"}]', '{"xaxis": {"type": "category", "range": [-0.5, 46.5], "tickmode": "auto", "autorange": true, "automargin": true}, "yaxis": {"type": "linear", "range": [0, 125.90253171812058], "title": {"text": "Number of males per 100 females"}, "autorange": true}, "legend": {"x": 0, "y": 1.12, "orientation": "h"}, "mapbox": {"style": "open-street-map"}, "margin": {"b": 40, "l": 60, "r": 10, "t": 10}, "modebar": {"color": "white", "bgcolor": "darkgray", "orientation": "v"}, "autosize": true, "colorway": ["#ef4444", "#eab308", "#22c55e", "#3b82f6", "#ec4899", "#a855f7", "#a1a1aa", "#166534", "#1e40af", "#6b21a8", "#000", "#ea580c", "#65a30d", "#0891b2", "#7c3aed", "#f43f5e", "#0ea5e9"], "dragmode": "pan", "showlegend": true}', '2024-09-10 12:15:39', '2024-09-10 14:02:04') ON CONFLICT DO NOTHING;
INSERT INTO public.indicators (id, name, slug, title, description, help, data_source, published, type, tag, featured_at, data, layout, created_at, updated_at) VALUES (10, 'Households/PercentagePopulationEnumeratedAgainstTarget', 'households.percentage-population-enumerated-against-target', '{"en": "Percentage of population enumerated against target"}', '{"en": "Percentage of population enumerated against target"}', '{"en": null}', 'households', true, 'Default', NULL, NULL, '[{"meta": {"columnNames": {"x": "area_name", "y": "proportion"}}, "mode": "markers", "name": "Percentage of population enumerated against target", "type": "bar", "xsrc": "area_name", "ysrc": "proportion", "orientation": "v"}]', '{"xaxis": {"type": "category", "range": [-0.5, 46.5], "tickmode": "auto", "autorange": true, "automargin": true}, "yaxis": {"type": "linear", "range": [0, 5.578947368421052], "title": {"text": "%"}, "autorange": true}, "legend": {"x": 0, "y": 1.12, "orientation": "h"}, "mapbox": {"style": "open-street-map"}, "margin": {"b": 40, "l": 60, "r": 10, "t": 10}, "modebar": {"color": "white", "bgcolor": "darkgray", "orientation": "v"}, "autosize": true, "colorway": ["#ef4444", "#eab308", "#22c55e", "#3b82f6", "#ec4899", "#a855f7", "#a1a1aa", "#166534", "#1e40af", "#6b21a8", "#000", "#ea580c", "#65a30d", "#0891b2", "#7c3aed", "#f43f5e", "#0ea5e9"], "dragmode": "pan", "showlegend": true}', '2024-09-10 13:17:10', '2024-09-10 13:24:31') ON CONFLICT DO NOTHING;
INSERT INTO public.indicators (id, name, slug, title, description, help, data_source, published, type, tag, featured_at, data, layout, created_at, updated_at) VALUES (11, 'Households/PopulationDistributionByBroadAgeGroup', 'households.population-distribution-by-broad-age-group', '{"en": "Population distribution by broad age group"}', '{"en": "Population distribution by broad age group"}', '{"en": null}', 'households', true, 'Default', NULL, '2024-09-10 14:01:50', '[{"meta": {"columnNames": {"x": "area_name", "y": "less_than_15_percentage"}}, "mode": "markers", "name": "< 15", "type": "bar", "xsrc": "area_name", "ysrc": "less_than_15_percentage", "hoverinfo": "y+name", "orientation": "v", "texttemplate": "%{value:.1f}", "hovertemplate": null}, {"meta": {"columnNames": {"x": "area_name", "y": "between_15_and_65_percentage"}}, "name": "15 to 64", "type": "bar", "xsrc": "area_name", "ysrc": "between_15_and_65_percentage", "orientation": "v", "texttemplate": "%{value:.1f}"}, {"meta": {"columnNames": {"x": "area_name", "y": "above_and_65_percentage"}}, "name": "65+", "type": "bar", "xsrc": "area_name", "ysrc": "above_and_65_percentage", "orientation": "v", "texttemplate": "%{value:.1f}"}]', '{"xaxis": {"type": "category", "range": [-0.5, 46.5], "tickmode": "auto", "autorange": true, "automargin": true}, "yaxis": {"type": "linear", "range": [0, 100.00000000000001], "autorange": true}, "legend": {"x": 0, "y": 1.12, "orientation": "h"}, "mapbox": {"style": "open-street-map"}, "margin": {"b": 40, "l": 60, "r": 10, "t": 10}, "barmode": "stack", "barnorm": "percent", "modebar": {"color": "white", "bgcolor": "darkgray", "orientation": "v"}, "autosize": true, "colorway": ["#ef4444", "#eab308", "#22c55e", "#3b82f6", "#ec4899", "#a855f7", "#a1a1aa", "#166534", "#1e40af", "#6b21a8", "#000", "#ea580c", "#65a30d", "#0891b2", "#7c3aed", "#f43f5e", "#0ea5e9"], "dragmode": "pan", "showlegend": true}', '2024-09-10 13:52:03', '2024-09-10 14:01:50') ON CONFLICT DO NOTHING;


--
-- Data for Name: map_indicators; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: pages; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.pages (id, title, slug, description, published, rank, created_at, updated_at) VALUES (1, '{"en": "Households"}', 'households', '{"en": "Selected indicators from the household questionnaire"}', true, NULL, '2024-09-08 12:00:31', '2024-09-10 11:52:15') ON CONFLICT DO NOTHING;


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


--
-- Data for Name: reports; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.reports (id, name, slug, title, description, data_source, enabled, last_generated_at, run_at, run_every, published, rank, created_at, updated_at) VALUES (1, 'Households/PartialCasesByEa', 'households.partial-cases-by-ea', '{"en": "Partial cases by EA"}', '{"en": "Partial cases by EA"}', 'households', false, '2024-09-10 11:19:28', '06:00:00', 24, true, NULL, '2024-09-10 11:16:46', '2024-09-10 11:19:28') ON CONFLICT DO NOTHING;


--
-- Data for Name: scorecards; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.scorecards (id, name, slug, title, data_source, published, linked_indicator, rank, created_at, updated_at) VALUES (1, 'Households/AverageHouseholdSize', 'households.average-household-size', '{"en": "Average household size"}', 'households', true, NULL, NULL, '2024-09-10 11:24:09', '2024-09-10 11:28:05') ON CONFLICT DO NOTHING;
INSERT INTO public.scorecards (id, name, slug, title, data_source, published, linked_indicator, rank, created_at, updated_at) VALUES (2, 'Households/AverageInterviewTime', 'households.average-interview-time', '{"en": "Average interview time"}', 'households', true, NULL, NULL, '2024-09-10 11:30:49', '2024-09-10 11:41:21') ON CONFLICT DO NOTHING;
INSERT INTO public.scorecards (id, name, slug, title, data_source, published, linked_indicator, rank, created_at, updated_at) VALUES (3, 'Households/BirthRate', 'households.birth-rate', '{"en": "Birth rate"}', 'households', true, NULL, NULL, '2024-09-10 11:31:09', '2024-09-10 11:41:26') ON CONFLICT DO NOTHING;
INSERT INTO public.scorecards (id, name, slug, title, data_source, published, linked_indicator, rank, created_at, updated_at) VALUES (4, 'Households/DeathRate', 'households.death-rate', '{"en": "Death rate"}', 'households', true, NULL, NULL, '2024-09-10 11:31:31', '2024-09-10 11:41:30') ON CONFLICT DO NOTHING;
INSERT INTO public.scorecards (id, name, slug, title, data_source, published, linked_indicator, rank, created_at, updated_at) VALUES (5, 'Households/MaternalMortalityRatio', 'households.maternal-mortality-ratio', '{"en": "Maternal mortaility ratio"}', 'households', true, NULL, NULL, '2024-09-10 11:31:51', '2024-09-10 11:41:34') ON CONFLICT DO NOTHING;
INSERT INTO public.scorecards (id, name, slug, title, data_source, published, linked_indicator, rank, created_at, updated_at) VALUES (7, 'Households/TotalHouseholds', 'households.total-households', '{"en": "Total households"}', 'households', true, NULL, NULL, '2024-09-10 11:32:51', '2024-09-10 11:49:42') ON CONFLICT DO NOTHING;
INSERT INTO public.scorecards (id, name, slug, title, data_source, published, linked_indicator, rank, created_at, updated_at) VALUES (8, 'Households/TotalPopulation', 'households.total-population', '{"en": "Total population"}', 'households', true, NULL, NULL, '2024-09-10 11:33:01', '2024-09-10 11:49:47') ON CONFLICT DO NOTHING;
INSERT INTO public.scorecards (id, name, slug, title, data_source, published, linked_indicator, rank, created_at, updated_at) VALUES (6, 'Households/NumberOfDaysLeft', 'households.number-of-days-left', '{"en": "Projected days to completion"}', 'households', true, NULL, NULL, '2024-09-10 11:32:35', '2024-09-10 11:51:37') ON CONFLICT DO NOTHING;


--
-- Name: area_hierarchies_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.area_hierarchies_id_seq', 6, true);


--
-- Name: data_sources_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.data_sources_id_seq', 1, true);


--
-- Name: indicator_page_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.indicator_page_id_seq', 8, true);


--
-- Name: indicators_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.indicators_id_seq', 11, true);


--
-- Name: map_indicators_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.map_indicators_id_seq', 1, false);


--
-- Name: pages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.pages_id_seq', 1, true);


--
-- Name: permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.permissions_id_seq', 23, true);


--
-- Name: reports_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.reports_id_seq', 1, true);


--
-- Name: scorecards_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.scorecards_id_seq', 8, true);


--
-- PostgreSQL database dump complete
--

