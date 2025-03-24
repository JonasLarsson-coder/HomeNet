--
-- PostgreSQL database dump
--

-- Dumped from database version 16.4
-- Dumped by pg_dump version 16.4

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
-- Name: homenet; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA homenet;


ALTER SCHEMA homenet OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: adresser; Type: TABLE; Schema: homenet; Owner: postgres
--

CREATE TABLE homenet.adresser (
    id integer NOT NULL,
    gatuadress character varying(255),
    ort character varying(255),
    postnr character varying(5)
);


ALTER TABLE homenet.adresser OWNER TO postgres;

--
-- Name: adresser_id_seq; Type: SEQUENCE; Schema: homenet; Owner: postgres
--

CREATE SEQUENCE homenet.adresser_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE homenet.adresser_id_seq OWNER TO postgres;

--
-- Name: adresser_id_seq; Type: SEQUENCE OWNED BY; Schema: homenet; Owner: postgres
--

ALTER SEQUENCE homenet.adresser_id_seq OWNED BY homenet.adresser.id;


--
-- Name: maklare; Type: TABLE; Schema: homenet; Owner: postgres
--

CREATE TABLE homenet.maklare (
    id integer NOT NULL,
    email character varying(50),
    fornamn character varying(50),
    efternamn character varying(50),
    personnr date,
    telefonnr character varying(50),
    bolag character varying(255)
);


ALTER TABLE homenet.maklare OWNER TO postgres;

--
-- Name: maklare_id_seq; Type: SEQUENCE; Schema: homenet; Owner: postgres
--

CREATE SEQUENCE homenet.maklare_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE homenet.maklare_id_seq OWNER TO postgres;

--
-- Name: maklare_id_seq; Type: SEQUENCE OWNED BY; Schema: homenet; Owner: postgres
--

ALTER SEQUENCE homenet.maklare_id_seq OWNED BY homenet.maklare.id;


--
-- Name: objekt; Type: TABLE; Schema: homenet; Owner: postgres
--

CREATE TABLE homenet.objekt (
    id integer NOT NULL,
    adress integer,
    antal_rum integer,
    storlek integer,
    vaning integer,
    hiss integer,
    balkong integer,
    manadsavgift integer,
    utgangspris integer,
    forsaljningspris integer,
    maklararvode integer,
    saljstart date,
    avslutat date,
    saljare integer,
    kopare integer,
    maklare integer
);


ALTER TABLE homenet.objekt OWNER TO postgres;

--
-- Name: objekt_id_seq; Type: SEQUENCE; Schema: homenet; Owner: postgres
--

CREATE SEQUENCE homenet.objekt_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE homenet.objekt_id_seq OWNER TO postgres;

--
-- Name: objekt_id_seq; Type: SEQUENCE OWNED BY; Schema: homenet; Owner: postgres
--

ALTER SEQUENCE homenet.objekt_id_seq OWNED BY homenet.objekt.id;


--
-- Name: personer; Type: TABLE; Schema: homenet; Owner: postgres
--

CREATE TABLE homenet.personer (
    id integer NOT NULL,
    email character varying(50),
    fornamn character varying(50),
    efternamn character varying(50),
    personnr date,
    telefonnr character varying(50),
    adress integer
);


ALTER TABLE homenet.personer OWNER TO postgres;

--
-- Name: personer_id_seq; Type: SEQUENCE; Schema: homenet; Owner: postgres
--

CREATE SEQUENCE homenet.personer_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE homenet.personer_id_seq OWNER TO postgres;

--
-- Name: personer_id_seq; Type: SEQUENCE OWNED BY; Schema: homenet; Owner: postgres
--

ALTER SEQUENCE homenet.personer_id_seq OWNED BY homenet.personer.id;


--
-- Name: adresser id; Type: DEFAULT; Schema: homenet; Owner: postgres
--

ALTER TABLE ONLY homenet.adresser ALTER COLUMN id SET DEFAULT nextval('homenet.adresser_id_seq'::regclass);


--
-- Name: maklare id; Type: DEFAULT; Schema: homenet; Owner: postgres
--

ALTER TABLE ONLY homenet.maklare ALTER COLUMN id SET DEFAULT nextval('homenet.maklare_id_seq'::regclass);


--
-- Name: objekt id; Type: DEFAULT; Schema: homenet; Owner: postgres
--

ALTER TABLE ONLY homenet.objekt ALTER COLUMN id SET DEFAULT nextval('homenet.objekt_id_seq'::regclass);


--
-- Name: personer id; Type: DEFAULT; Schema: homenet; Owner: postgres
--

ALTER TABLE ONLY homenet.personer ALTER COLUMN id SET DEFAULT nextval('homenet.personer_id_seq'::regclass);


--
-- Data for Name: adresser; Type: TABLE DATA; Schema: homenet; Owner: postgres
--

INSERT INTO homenet.adresser (id, gatuadress, ort, postnr) VALUES (1, 'upproret 75E', 'Helsingborg', '25000');
INSERT INTO homenet.adresser (id, gatuadress, ort, postnr) VALUES (2, 'toarp 37', 'Lund', '22100');
INSERT INTO homenet.adresser (id, gatuadress, ort, postnr) VALUES (3, 'upproret 33', 'Helsingborg', '25000');
INSERT INTO homenet.adresser (id, gatuadress, ort, postnr) VALUES (4, 'supgränd 66F', 'Lund', '22100');
INSERT INTO homenet.adresser (id, gatuadress, ort, postnr) VALUES (5, 'solhem', 'Degeberga', '21230');
INSERT INTO homenet.adresser (id, gatuadress, ort, postnr) VALUES (6, 'stortorget 55', 'Helsingborg', '25000');
INSERT INTO homenet.adresser (id, gatuadress, ort, postnr) VALUES (7, 'storgatan 57A', 'Malmö', '22050');
INSERT INTO homenet.adresser (id, gatuadress, ort, postnr) VALUES (8, 'kungstorget 49', 'Tomelilla', '27300');
INSERT INTO homenet.adresser (id, gatuadress, ort, postnr) VALUES (9, 'upproret 42', 'Malmö', '22050');
INSERT INTO homenet.adresser (id, gatuadress, ort, postnr) VALUES (10, 'toarp 2', 'Helsingborg', '25000');
INSERT INTO homenet.adresser (id, gatuadress, ort, postnr) VALUES (11, 'nattgränd 4', 'Lund', '22100');
INSERT INTO homenet.adresser (id, gatuadress, ort, postnr) VALUES (12, 'nattgränd 39', 'Tomelilla', '27300');
INSERT INTO homenet.adresser (id, gatuadress, ort, postnr) VALUES (13, 'upproret 1', 'Skurup', '27400');
INSERT INTO homenet.adresser (id, gatuadress, ort, postnr) VALUES (14, 'ullstorp 72E', 'Svedala', '23041');
INSERT INTO homenet.adresser (id, gatuadress, ort, postnr) VALUES (15, 'slutet 19B', 'Lund', '22100');
INSERT INTO homenet.adresser (id, gatuadress, ort, postnr) VALUES (16, 'bo 47', 'Lund', '22100');
INSERT INTO homenet.adresser (id, gatuadress, ort, postnr) VALUES (17, 'spagettiupploppet 32C', 'Malmö', '22050');
INSERT INTO homenet.adresser (id, gatuadress, ort, postnr) VALUES (18, 'toarp 57', 'Sjöbo', '27500');
INSERT INTO homenet.adresser (id, gatuadress, ort, postnr) VALUES (19, 'storgatan 8', 'Sjöbo', '27500');
INSERT INTO homenet.adresser (id, gatuadress, ort, postnr) VALUES (20, 'toarp 9D', 'Skurup', '27400');
INSERT INTO homenet.adresser (id, gatuadress, ort, postnr) VALUES (21, 'upproret 11', 'Helsingborg', '25000');
INSERT INTO homenet.adresser (id, gatuadress, ort, postnr) VALUES (22, 'byvägen 2', 'Tomelilla', '27300');
INSERT INTO homenet.adresser (id, gatuadress, ort, postnr) VALUES (23, 'storgatan 24', 'Svedala', '23041');
INSERT INTO homenet.adresser (id, gatuadress, ort, postnr) VALUES (24, 'byvägen 17F', 'Malmö', '22050');
INSERT INTO homenet.adresser (id, gatuadress, ort, postnr) VALUES (25, 'upproret 65D', 'Degeberga', '21230');
INSERT INTO homenet.adresser (id, gatuadress, ort, postnr) VALUES (26, 'falsterbogatan 12', 'Svedala', '23041');
INSERT INTO homenet.adresser (id, gatuadress, ort, postnr) VALUES (27, 'trädgårdsgatan 9', 'Lund', '22100');
INSERT INTO homenet.adresser (id, gatuadress, ort, postnr) VALUES (28, 'solhem', 'Helsingborg', '25000');
INSERT INTO homenet.adresser (id, gatuadress, ort, postnr) VALUES (29, 'diagonalen 50', 'Sjöbo', '27500');
INSERT INTO homenet.adresser (id, gatuadress, ort, postnr) VALUES (30, 'supgränd 37F', 'Tomelilla', '27300');
INSERT INTO homenet.adresser (id, gatuadress, ort, postnr) VALUES (31, 'bo 40', 'Skurup', '27400');
INSERT INTO homenet.adresser (id, gatuadress, ort, postnr) VALUES (32, 'alabastergränd 70B', 'Svedala', '23041');
INSERT INTO homenet.adresser (id, gatuadress, ort, postnr) VALUES (33, 'bo 47', 'Sjöbo', '27500');
INSERT INTO homenet.adresser (id, gatuadress, ort, postnr) VALUES (34, 'storgatan 39', 'Degeberga', '21230');
INSERT INTO homenet.adresser (id, gatuadress, ort, postnr) VALUES (35, 'diagonalen 69F', 'Helsingborg', '25000');
INSERT INTO homenet.adresser (id, gatuadress, ort, postnr) VALUES (36, 'toarp 49', 'Helsingborg', '25000');
INSERT INTO homenet.adresser (id, gatuadress, ort, postnr) VALUES (37, 'spagettiupploppet 29', 'Svedala', '23041');
INSERT INTO homenet.adresser (id, gatuadress, ort, postnr) VALUES (38, 'byvägen 73B', 'Lund', '22100');
INSERT INTO homenet.adresser (id, gatuadress, ort, postnr) VALUES (39, 'narvavägen 52', 'Malmö', '22050');
INSERT INTO homenet.adresser (id, gatuadress, ort, postnr) VALUES (40, 'diagonalen 16', 'Svedala', '23041');
INSERT INTO homenet.adresser (id, gatuadress, ort, postnr) VALUES (41, 'kungstorget 70', 'Tomelilla', '27300');
INSERT INTO homenet.adresser (id, gatuadress, ort, postnr) VALUES (42, 'trädgårdsgatan 59', 'Skurup', '27400');
INSERT INTO homenet.adresser (id, gatuadress, ort, postnr) VALUES (43, 'supgränd 43E', 'Helsingborg', '25000');
INSERT INTO homenet.adresser (id, gatuadress, ort, postnr) VALUES (44, 'slutet 30', 'Svedala', '23041');
INSERT INTO homenet.adresser (id, gatuadress, ort, postnr) VALUES (45, 'kungstorget 15C', 'Svedala', '23041');
INSERT INTO homenet.adresser (id, gatuadress, ort, postnr) VALUES (46, 'storgatan 67', 'Skurup', '27400');
INSERT INTO homenet.adresser (id, gatuadress, ort, postnr) VALUES (47, 'spagettiupploppet 64', 'Skurup', '27400');
INSERT INTO homenet.adresser (id, gatuadress, ort, postnr) VALUES (48, 'ullstorp 7', 'Lund', '22100');
INSERT INTO homenet.adresser (id, gatuadress, ort, postnr) VALUES (49, 'slutet 9F', 'Tomelilla', '27300');
INSERT INTO homenet.adresser (id, gatuadress, ort, postnr) VALUES (50, 'kungstorget 7B', 'Lund', '22100');
INSERT INTO homenet.adresser (id, gatuadress, ort, postnr) VALUES (51, 'narvavägen 24', 'Malmö', '22050');
INSERT INTO homenet.adresser (id, gatuadress, ort, postnr) VALUES (52, 'narvavägen 70E', 'Malmö', '22050');
INSERT INTO homenet.adresser (id, gatuadress, ort, postnr) VALUES (53, 'alabastergränd 31', 'Malmö', '22050');
INSERT INTO homenet.adresser (id, gatuadress, ort, postnr) VALUES (54, 'trädgårdsgatan 19', 'Sjöbo', '27500');
INSERT INTO homenet.adresser (id, gatuadress, ort, postnr) VALUES (55, 'solhem 72C', 'Lund', '22100');
INSERT INTO homenet.adresser (id, gatuadress, ort, postnr) VALUES (56, 'narvavägen 67', 'Sjöbo', '27500');
INSERT INTO homenet.adresser (id, gatuadress, ort, postnr) VALUES (57, 'toarp 35D', 'Skurup', '27400');
INSERT INTO homenet.adresser (id, gatuadress, ort, postnr) VALUES (58, 'supgränd 13', 'Svedala', '23041');
INSERT INTO homenet.adresser (id, gatuadress, ort, postnr) VALUES (59, 'kungstorget 1', 'Tomelilla', '27300');
INSERT INTO homenet.adresser (id, gatuadress, ort, postnr) VALUES (60, 'falsterbogatan 29E', 'Skurup', '27400');
INSERT INTO homenet.adresser (id, gatuadress, ort, postnr) VALUES (61, 'trädgårdsgatan 70', 'Malmö', '22050');
INSERT INTO homenet.adresser (id, gatuadress, ort, postnr) VALUES (62, 'falsterbogatan 56', 'Helsingborg', '25000');
INSERT INTO homenet.adresser (id, gatuadress, ort, postnr) VALUES (63, 'stortorget 57A', 'Malmö', '22050');
INSERT INTO homenet.adresser (id, gatuadress, ort, postnr) VALUES (64, 'bo 41', 'Helsingborg', '25000');
INSERT INTO homenet.adresser (id, gatuadress, ort, postnr) VALUES (65, 'bo 32', 'Lund', '22100');
INSERT INTO homenet.adresser (id, gatuadress, ort, postnr) VALUES (66, 'upproret 28', 'Svedala', '23041');
INSERT INTO homenet.adresser (id, gatuadress, ort, postnr) VALUES (67, 'supgränd 20', 'Malmö', '22050');
INSERT INTO homenet.adresser (id, gatuadress, ort, postnr) VALUES (68, 'diagonalen 75', 'Sjöbo', '27500');
INSERT INTO homenet.adresser (id, gatuadress, ort, postnr) VALUES (69, 'kungstorget 15', 'Helsingborg', '25000');
INSERT INTO homenet.adresser (id, gatuadress, ort, postnr) VALUES (70, 'diagonalen 44', 'Lund', '22100');
INSERT INTO homenet.adresser (id, gatuadress, ort, postnr) VALUES (71, 'spagettiupploppet 65C', 'Skurup', '27400');
INSERT INTO homenet.adresser (id, gatuadress, ort, postnr) VALUES (72, 'falsterbogatan 55', 'Degeberga', '21230');
INSERT INTO homenet.adresser (id, gatuadress, ort, postnr) VALUES (73, 'bo 67', 'Svedala', '23041');
INSERT INTO homenet.adresser (id, gatuadress, ort, postnr) VALUES (74, 'alabastergränd 34', 'Degeberga', '21230');
INSERT INTO homenet.adresser (id, gatuadress, ort, postnr) VALUES (75, 'solhem', 'Lund', '22100');
INSERT INTO homenet.adresser (id, gatuadress, ort, postnr) VALUES (76, 'solhem', 'Lund', '22100');
INSERT INTO homenet.adresser (id, gatuadress, ort, postnr) VALUES (77, 'narvavägen 29', 'Lund', '22100');
INSERT INTO homenet.adresser (id, gatuadress, ort, postnr) VALUES (78, 'supgränd 53', 'Degeberga', '21230');
INSERT INTO homenet.adresser (id, gatuadress, ort, postnr) VALUES (79, 'toarp 68D', 'Sjöbo', '27500');
INSERT INTO homenet.adresser (id, gatuadress, ort, postnr) VALUES (80, 'stortorget 44', 'Helsingborg', '25000');
INSERT INTO homenet.adresser (id, gatuadress, ort, postnr) VALUES (81, 'upproret 45', 'Degeberga', '21230');
INSERT INTO homenet.adresser (id, gatuadress, ort, postnr) VALUES (82, 'toarp 49', 'Malmö', '22050');
INSERT INTO homenet.adresser (id, gatuadress, ort, postnr) VALUES (83, 'kungstorget 52', 'Degeberga', '21230');
INSERT INTO homenet.adresser (id, gatuadress, ort, postnr) VALUES (84, 'storgatan 52', 'Skurup', '27400');
INSERT INTO homenet.adresser (id, gatuadress, ort, postnr) VALUES (85, 'trädgårdsgatan 28', 'Degeberga', '21230');
INSERT INTO homenet.adresser (id, gatuadress, ort, postnr) VALUES (86, 'toarp 33', 'Lund', '22100');
INSERT INTO homenet.adresser (id, gatuadress, ort, postnr) VALUES (87, 'falsterbogatan 51', 'Svedala', '23041');
INSERT INTO homenet.adresser (id, gatuadress, ort, postnr) VALUES (88, 'storgatan 47', 'Tomelilla', '27300');
INSERT INTO homenet.adresser (id, gatuadress, ort, postnr) VALUES (89, 'ullstorp 18D', 'Degeberga', '21230');
INSERT INTO homenet.adresser (id, gatuadress, ort, postnr) VALUES (90, 'ullstorp 65', 'Skurup', '27400');
INSERT INTO homenet.adresser (id, gatuadress, ort, postnr) VALUES (91, 'storgatan 6', 'Skurup', '27400');
INSERT INTO homenet.adresser (id, gatuadress, ort, postnr) VALUES (92, 'alabastergränd 15', 'Skurup', '27400');
INSERT INTO homenet.adresser (id, gatuadress, ort, postnr) VALUES (93, 'toarp 39', 'Svedala', '23041');
INSERT INTO homenet.adresser (id, gatuadress, ort, postnr) VALUES (94, 'stortorget 14C', 'Malmö', '22050');
INSERT INTO homenet.adresser (id, gatuadress, ort, postnr) VALUES (95, 'bo 65', 'Svedala', '23041');
INSERT INTO homenet.adresser (id, gatuadress, ort, postnr) VALUES (96, 'slutet 45B', 'Skurup', '27400');
INSERT INTO homenet.adresser (id, gatuadress, ort, postnr) VALUES (97, 'byvägen 28', 'Malmö', '22050');
INSERT INTO homenet.adresser (id, gatuadress, ort, postnr) VALUES (98, 'spagettiupploppet 8', 'Lund', '22100');
INSERT INTO homenet.adresser (id, gatuadress, ort, postnr) VALUES (99, 'falsterbogatan 30', 'Lund', '22100');
INSERT INTO homenet.adresser (id, gatuadress, ort, postnr) VALUES (100, 'byvägen 10', 'Sjöbo', '27500');
INSERT INTO homenet.adresser (id, gatuadress, ort, postnr) VALUES (101, 'diagonalen 52', 'Lund', '22100');
INSERT INTO homenet.adresser (id, gatuadress, ort, postnr) VALUES (102, 'diagonalen 30', 'Degeberga', '21230');
INSERT INTO homenet.adresser (id, gatuadress, ort, postnr) VALUES (103, 'upproret 4', 'Degeberga', '21230');
INSERT INTO homenet.adresser (id, gatuadress, ort, postnr) VALUES (104, 'falsterbogatan 67B', 'Skurup', '27400');
INSERT INTO homenet.adresser (id, gatuadress, ort, postnr) VALUES (105, 'alabastergränd 12', 'Helsingborg', '25000');
INSERT INTO homenet.adresser (id, gatuadress, ort, postnr) VALUES (106, 'bo 11', 'Svedala', '23041');
INSERT INTO homenet.adresser (id, gatuadress, ort, postnr) VALUES (107, 'alabastergränd 42', 'Skurup', '27400');
INSERT INTO homenet.adresser (id, gatuadress, ort, postnr) VALUES (108, 'stortorget 41C', 'Svedala', '23041');
INSERT INTO homenet.adresser (id, gatuadress, ort, postnr) VALUES (109, 'slutet 65D', 'Svedala', '23041');
INSERT INTO homenet.adresser (id, gatuadress, ort, postnr) VALUES (110, 'toarp 25A', 'Lund', '22100');
INSERT INTO homenet.adresser (id, gatuadress, ort, postnr) VALUES (111, 'ullstorp 56', 'Tomelilla', '27300');
INSERT INTO homenet.adresser (id, gatuadress, ort, postnr) VALUES (112, 'ullstorp 8', 'Lund', '22100');
INSERT INTO homenet.adresser (id, gatuadress, ort, postnr) VALUES (113, 'spagettiupploppet 62', 'Helsingborg', '25000');
INSERT INTO homenet.adresser (id, gatuadress, ort, postnr) VALUES (114, 'falsterbogatan 74', 'Skurup', '27400');
INSERT INTO homenet.adresser (id, gatuadress, ort, postnr) VALUES (115, 'nattgränd 31', 'Sjöbo', '27500');
INSERT INTO homenet.adresser (id, gatuadress, ort, postnr) VALUES (116, 'stortorget 2F', 'Malmö', '22050');
INSERT INTO homenet.adresser (id, gatuadress, ort, postnr) VALUES (117, 'trädgårdsgatan 41', 'Malmö', '22050');
INSERT INTO homenet.adresser (id, gatuadress, ort, postnr) VALUES (118, 'bo 33', 'Tomelilla', '27300');
INSERT INTO homenet.adresser (id, gatuadress, ort, postnr) VALUES (119, 'bo 62', 'Helsingborg', '25000');
INSERT INTO homenet.adresser (id, gatuadress, ort, postnr) VALUES (120, 'diagonalen 40', 'Degeberga', '21230');
INSERT INTO homenet.adresser (id, gatuadress, ort, postnr) VALUES (121, 'storgatan 39C', 'Svedala', '23041');
INSERT INTO homenet.adresser (id, gatuadress, ort, postnr) VALUES (122, 'kungstorget 6', 'Tomelilla', '27300');
INSERT INTO homenet.adresser (id, gatuadress, ort, postnr) VALUES (123, 'spagettiupploppet 15', 'Tomelilla', '27300');
INSERT INTO homenet.adresser (id, gatuadress, ort, postnr) VALUES (124, 'ullstorp 27', 'Tomelilla', '27300');
INSERT INTO homenet.adresser (id, gatuadress, ort, postnr) VALUES (125, 'falsterbogatan 25', 'Lund', '22100');
INSERT INTO homenet.adresser (id, gatuadress, ort, postnr) VALUES (126, 'slutet 52D', 'Lund', '22100');
INSERT INTO homenet.adresser (id, gatuadress, ort, postnr) VALUES (127, 'slutet 13', 'Skurup', '27400');
INSERT INTO homenet.adresser (id, gatuadress, ort, postnr) VALUES (128, 'supgränd 40', 'Lund', '22100');
INSERT INTO homenet.adresser (id, gatuadress, ort, postnr) VALUES (129, 'narvavägen 55', 'Helsingborg', '25000');
INSERT INTO homenet.adresser (id, gatuadress, ort, postnr) VALUES (130, 'slutet 52', 'Helsingborg', '25000');
INSERT INTO homenet.adresser (id, gatuadress, ort, postnr) VALUES (131, 'trädgårdsgatan 57', 'Malmö', '22050');
INSERT INTO homenet.adresser (id, gatuadress, ort, postnr) VALUES (132, 'bo 20', 'Sjöbo', '27500');
INSERT INTO homenet.adresser (id, gatuadress, ort, postnr) VALUES (133, 'spagettiupploppet 39', 'Lund', '22100');
INSERT INTO homenet.adresser (id, gatuadress, ort, postnr) VALUES (134, 'kungstorget 23', 'Helsingborg', '25000');
INSERT INTO homenet.adresser (id, gatuadress, ort, postnr) VALUES (135, 'alabastergränd 7', 'Skurup', '27400');
INSERT INTO homenet.adresser (id, gatuadress, ort, postnr) VALUES (136, 'storgatan 2', 'Lund', '22100');
INSERT INTO homenet.adresser (id, gatuadress, ort, postnr) VALUES (137, 'spagettiupploppet 15', 'Svedala', '23041');
INSERT INTO homenet.adresser (id, gatuadress, ort, postnr) VALUES (138, 'spagettiupploppet 66C', 'Lund', '22100');
INSERT INTO homenet.adresser (id, gatuadress, ort, postnr) VALUES (139, 'bo 71', 'Skurup', '27400');
INSERT INTO homenet.adresser (id, gatuadress, ort, postnr) VALUES (140, 'solhem 42E', 'Svedala', '23041');
INSERT INTO homenet.adresser (id, gatuadress, ort, postnr) VALUES (141, 'byvägen 27', 'Sjöbo', '27500');
INSERT INTO homenet.adresser (id, gatuadress, ort, postnr) VALUES (142, 'solhem', 'Skurup', '27400');
INSERT INTO homenet.adresser (id, gatuadress, ort, postnr) VALUES (143, 'nattgränd 32', 'Malmö', '22050');
INSERT INTO homenet.adresser (id, gatuadress, ort, postnr) VALUES (144, 'byvägen 23F', 'Tomelilla', '27300');
INSERT INTO homenet.adresser (id, gatuadress, ort, postnr) VALUES (145, 'alabastergränd 70', 'Sjöbo', '27500');
INSERT INTO homenet.adresser (id, gatuadress, ort, postnr) VALUES (146, 'kungstorget 7', 'Skurup', '27400');
INSERT INTO homenet.adresser (id, gatuadress, ort, postnr) VALUES (147, 'narvavägen 15', 'Sjöbo', '27500');
INSERT INTO homenet.adresser (id, gatuadress, ort, postnr) VALUES (148, 'falsterbogatan 48', 'Malmö', '22050');
INSERT INTO homenet.adresser (id, gatuadress, ort, postnr) VALUES (149, 'solhem 13B', 'Skurup', '27400');
INSERT INTO homenet.adresser (id, gatuadress, ort, postnr) VALUES (150, 'nattgränd 75', 'Malmö', '22050');
INSERT INTO homenet.adresser (id, gatuadress, ort, postnr) VALUES (151, 'slutet 16', 'Svedala', '23041');
INSERT INTO homenet.adresser (id, gatuadress, ort, postnr) VALUES (152, 'nattgränd 25D', 'Degeberga', '21230');
INSERT INTO homenet.adresser (id, gatuadress, ort, postnr) VALUES (153, 'nattgränd 18', 'Lund', '22100');
INSERT INTO homenet.adresser (id, gatuadress, ort, postnr) VALUES (154, 'falsterbogatan 18F', 'Lund', '22100');
INSERT INTO homenet.adresser (id, gatuadress, ort, postnr) VALUES (155, 'upproret 31', 'Svedala', '23041');
INSERT INTO homenet.adresser (id, gatuadress, ort, postnr) VALUES (156, 'stortorget 9', 'Tomelilla', '27300');
INSERT INTO homenet.adresser (id, gatuadress, ort, postnr) VALUES (157, 'kungstorget 11D', 'Sjöbo', '27500');
INSERT INTO homenet.adresser (id, gatuadress, ort, postnr) VALUES (158, 'toarp 22', 'Sjöbo', '27500');
INSERT INTO homenet.adresser (id, gatuadress, ort, postnr) VALUES (159, 'slutet 60', 'Lund', '22100');
INSERT INTO homenet.adresser (id, gatuadress, ort, postnr) VALUES (160, 'kungstorget 44', 'Sjöbo', '27500');
INSERT INTO homenet.adresser (id, gatuadress, ort, postnr) VALUES (161, 'narvavägen 72C', 'Sjöbo', '27500');
INSERT INTO homenet.adresser (id, gatuadress, ort, postnr) VALUES (162, 'toarp 9B', 'Sjöbo', '27500');
INSERT INTO homenet.adresser (id, gatuadress, ort, postnr) VALUES (163, 'ullstorp 61D', 'Degeberga', '21230');
INSERT INTO homenet.adresser (id, gatuadress, ort, postnr) VALUES (164, 'kungstorget 55', 'Helsingborg', '25000');
INSERT INTO homenet.adresser (id, gatuadress, ort, postnr) VALUES (165, 'ullstorp 63', 'Degeberga', '21230');
INSERT INTO homenet.adresser (id, gatuadress, ort, postnr) VALUES (166, 'slutet 18', 'Malmö', '22050');
INSERT INTO homenet.adresser (id, gatuadress, ort, postnr) VALUES (167, 'bo 72', 'Lund', '22100');
INSERT INTO homenet.adresser (id, gatuadress, ort, postnr) VALUES (168, 'nattgränd 31', 'Skurup', '27400');
INSERT INTO homenet.adresser (id, gatuadress, ort, postnr) VALUES (169, 'falsterbogatan 75', 'Lund', '22100');
INSERT INTO homenet.adresser (id, gatuadress, ort, postnr) VALUES (170, 'byvägen 67', 'Malmö', '22050');
INSERT INTO homenet.adresser (id, gatuadress, ort, postnr) VALUES (171, 'bo 40F', 'Lund', '22100');
INSERT INTO homenet.adresser (id, gatuadress, ort, postnr) VALUES (172, 'ullstorp 69E', 'Sjöbo', '27500');
INSERT INTO homenet.adresser (id, gatuadress, ort, postnr) VALUES (173, 'storgatan 44', 'Skurup', '27400');
INSERT INTO homenet.adresser (id, gatuadress, ort, postnr) VALUES (174, 'supgränd 30', 'Tomelilla', '27300');
INSERT INTO homenet.adresser (id, gatuadress, ort, postnr) VALUES (175, 'trädgårdsgatan 28B', 'Malmö', '22050');
INSERT INTO homenet.adresser (id, gatuadress, ort, postnr) VALUES (176, 'falsterbogatan 6', 'Tomelilla', '27300');
INSERT INTO homenet.adresser (id, gatuadress, ort, postnr) VALUES (177, 'toarp 27C', 'Malmö', '22050');
INSERT INTO homenet.adresser (id, gatuadress, ort, postnr) VALUES (178, 'alabastergränd 46F', 'Svedala', '23041');
INSERT INTO homenet.adresser (id, gatuadress, ort, postnr) VALUES (179, 'diagonalen 24', 'Malmö', '22050');
INSERT INTO homenet.adresser (id, gatuadress, ort, postnr) VALUES (180, 'alabastergränd 34', 'Lund', '22100');
INSERT INTO homenet.adresser (id, gatuadress, ort, postnr) VALUES (181, 'bo 30E', 'Svedala', '23041');
INSERT INTO homenet.adresser (id, gatuadress, ort, postnr) VALUES (182, 'alabastergränd 24A', 'Tomelilla', '27300');
INSERT INTO homenet.adresser (id, gatuadress, ort, postnr) VALUES (183, 'ullstorp 29', 'Svedala', '23041');
INSERT INTO homenet.adresser (id, gatuadress, ort, postnr) VALUES (184, 'ullstorp 51', 'Tomelilla', '27300');
INSERT INTO homenet.adresser (id, gatuadress, ort, postnr) VALUES (185, 'stortorget 7F', 'Degeberga', '21230');
INSERT INTO homenet.adresser (id, gatuadress, ort, postnr) VALUES (186, 'kungstorget 59A', 'Svedala', '23041');
INSERT INTO homenet.adresser (id, gatuadress, ort, postnr) VALUES (187, 'falsterbogatan 65', 'Svedala', '23041');
INSERT INTO homenet.adresser (id, gatuadress, ort, postnr) VALUES (188, 'ullstorp 73', 'Lund', '22100');
INSERT INTO homenet.adresser (id, gatuadress, ort, postnr) VALUES (189, 'byvägen 20A', 'Skurup', '27400');
INSERT INTO homenet.adresser (id, gatuadress, ort, postnr) VALUES (190, 'byvägen 19', 'Svedala', '23041');
INSERT INTO homenet.adresser (id, gatuadress, ort, postnr) VALUES (191, 'alabastergränd 35', 'Lund', '22100');
INSERT INTO homenet.adresser (id, gatuadress, ort, postnr) VALUES (192, 'alabastergränd 72D', 'Helsingborg', '25000');
INSERT INTO homenet.adresser (id, gatuadress, ort, postnr) VALUES (193, 'bo 29B', 'Sjöbo', '27500');
INSERT INTO homenet.adresser (id, gatuadress, ort, postnr) VALUES (194, 'narvavägen 36', 'Degeberga', '21230');
INSERT INTO homenet.adresser (id, gatuadress, ort, postnr) VALUES (195, 'ullstorp 73', 'Sjöbo', '27500');
INSERT INTO homenet.adresser (id, gatuadress, ort, postnr) VALUES (196, 'alabastergränd 36', 'Lund', '22100');
INSERT INTO homenet.adresser (id, gatuadress, ort, postnr) VALUES (197, 'kungstorget 33', 'Svedala', '23041');
INSERT INTO homenet.adresser (id, gatuadress, ort, postnr) VALUES (198, 'kungstorget 9', 'Tomelilla', '27300');
INSERT INTO homenet.adresser (id, gatuadress, ort, postnr) VALUES (199, 'upproret 20B', 'Svedala', '23041');
INSERT INTO homenet.adresser (id, gatuadress, ort, postnr) VALUES (200, 'nattgränd 29', 'Sjöbo', '27500');


--
-- Data for Name: maklare; Type: TABLE DATA; Schema: homenet; Owner: postgres
--

INSERT INTO homenet.maklare (id, email, fornamn, efternamn, personnr, telefonnr, bolag) VALUES (1, 'twhiten0@google.com.hk', 'Maëline', 'Whiten', '1992-04-13', '7375851879', 'Privatmäklare');
INSERT INTO homenet.maklare (id, email, fornamn, efternamn, personnr, telefonnr, bolag) VALUES (2, 'thennington1@marriott.com', 'Marlène', 'Hennington', '1969-04-07', '3616789912', 'Bjurfors');
INSERT INTO homenet.maklare (id, email, fornamn, efternamn, personnr, telefonnr, bolag) VALUES (3, 'lherrema2@tumblr.com', 'Angélique', 'Herrema', '1994-11-26', '2142300664', 'Rumsson & Dyhr');
INSERT INTO homenet.maklare (id, email, fornamn, efternamn, personnr, telefonnr, bolag) VALUES (4, 'lbuckston3@bigcartel.com', 'Kuí', 'Buckston', '1988-09-08', '8781362179', 'Bjurfors');
INSERT INTO homenet.maklare (id, email, fornamn, efternamn, personnr, telefonnr, bolag) VALUES (5, 'cmorriarty4@webnode.com', 'Géraldine', 'Morriarty', '1982-01-20', '8657057248', 'Bolagret');
INSERT INTO homenet.maklare (id, email, fornamn, efternamn, personnr, telefonnr, bolag) VALUES (6, 'awoodford5@devhub.com', 'Börje', 'Woodford', '1983-06-08', '6168798328', 'Rumsson & Dyhr');
INSERT INTO homenet.maklare (id, email, fornamn, efternamn, personnr, telefonnr, bolag) VALUES (7, 'troft6@opera.com', 'Åke', 'Roft', '1961-01-19', '1715371474', 'Hembo');
INSERT INTO homenet.maklare (id, email, fornamn, efternamn, personnr, telefonnr, bolag) VALUES (8, 'idenver7@pagesperso-orange.fr', 'Yú', 'Denver', '1964-09-27', '4089948912', 'Bjurfors');
INSERT INTO homenet.maklare (id, email, fornamn, efternamn, personnr, telefonnr, bolag) VALUES (9, 'gkuhlmey8@thetimes.co.uk', 'Ráo', 'Kuhlmey', '2002-02-21', '8987495835', 'Borta Bäst');
INSERT INTO homenet.maklare (id, email, fornamn, efternamn, personnr, telefonnr, bolag) VALUES (10, 'dboerder9@quantcast.com', 'Anaïs', 'Boerder', '1955-05-17', '8216112719', 'Bolagret');
INSERT INTO homenet.maklare (id, email, fornamn, efternamn, personnr, telefonnr, bolag) VALUES (11, 'mshillsa@globo.com', 'Marie-josée', 'Shills', '1977-04-25', '4027497586', 'Privatmäklare');
INSERT INTO homenet.maklare (id, email, fornamn, efternamn, personnr, telefonnr, bolag) VALUES (12, 'aobroganeb@mozilla.org', 'Yáo', 'O''Brogane', '1954-09-11', '1563273598', 'Rumsson & Dyhr');
INSERT INTO homenet.maklare (id, email, fornamn, efternamn, personnr, telefonnr, bolag) VALUES (13, 'lovenellc@networkadvertising.org', 'Simplifiés', 'Ovenell', '1951-03-18', '5114073054', 'Privatmäklare');
INSERT INTO homenet.maklare (id, email, fornamn, efternamn, personnr, telefonnr, bolag) VALUES (14, 'bgwynethd@wp.com', 'Yáo', 'Gwyneth', '1993-01-27', '7143693587', 'Hembo');
INSERT INTO homenet.maklare (id, email, fornamn, efternamn, personnr, telefonnr, bolag) VALUES (15, 'bbellsone@si.edu', 'Wá', 'Bellson', '1963-12-14', '2972326560', 'Bolagret');
INSERT INTO homenet.maklare (id, email, fornamn, efternamn, personnr, telefonnr, bolag) VALUES (16, 'mtummondf@indiatimes.com', 'Estève', 'Tummond', '1990-09-22', '3591279855', 'Bjurfors');
INSERT INTO homenet.maklare (id, email, fornamn, efternamn, personnr, telefonnr, bolag) VALUES (17, 'astormontg@examiner.com', 'Östen', 'Stormont', '1985-07-01', '1597419983', 'Privatmäklare');
INSERT INTO homenet.maklare (id, email, fornamn, efternamn, personnr, telefonnr, bolag) VALUES (18, 'ininnottih@github.io', 'Publicité', 'Ninnotti', '1983-05-27', '5199119339', 'Borta Bäst');
INSERT INTO homenet.maklare (id, email, fornamn, efternamn, personnr, telefonnr, bolag) VALUES (19, 'gcammiemilei@i2i.jp', 'Marie-josée', 'Cammiemile', '1972-11-30', '9465061611', 'Privatmäklare');
INSERT INTO homenet.maklare (id, email, fornamn, efternamn, personnr, telefonnr, bolag) VALUES (20, 'raudryj@biglobe.ne.jp', 'Dù', 'Audry', '1984-04-21', '1124411988', 'Bolagret');
INSERT INTO homenet.maklare (id, email, fornamn, efternamn, personnr, telefonnr, bolag) VALUES (21, 'rwalkdenk@google.cn', 'Magdalène', 'Walkden', '1954-06-29', '9539254483', 'Hembo');
INSERT INTO homenet.maklare (id, email, fornamn, efternamn, personnr, telefonnr, bolag) VALUES (22, 'mdoughtyl@creativecommons.org', 'Pò', 'Doughty', '1990-02-25', '2444904540', 'Bjurfors');
INSERT INTO homenet.maklare (id, email, fornamn, efternamn, personnr, telefonnr, bolag) VALUES (23, 'psetonm@scribd.com', 'Mélia', 'Seton', '1996-10-13', '8802152723', 'Privatmäklare');
INSERT INTO homenet.maklare (id, email, fornamn, efternamn, personnr, telefonnr, bolag) VALUES (24, 'clisciandron@thetimes.co.uk', 'Zhì', 'Lisciandro', '1986-12-31', '2655055344', 'Rumsson & Dyhr');
INSERT INTO homenet.maklare (id, email, fornamn, efternamn, personnr, telefonnr, bolag) VALUES (25, 'cphysicko@instagram.com', 'Desirée', 'Physick', '1994-03-10', '3972634326', 'Bolagret');
INSERT INTO homenet.maklare (id, email, fornamn, efternamn, personnr, telefonnr, bolag) VALUES (26, 'sedmedp@sphinn.com', 'Athéna', 'Edmed', '1951-01-03', '4138652630', 'Bjurfors');
INSERT INTO homenet.maklare (id, email, fornamn, efternamn, personnr, telefonnr, bolag) VALUES (27, 'elathwoodq@google.ru', 'Clémence', 'Lathwood', '2001-04-24', '8709023370', 'Borta Bäst');
INSERT INTO homenet.maklare (id, email, fornamn, efternamn, personnr, telefonnr, bolag) VALUES (28, 'saronsteinr@nbcnews.com', 'Zhì', 'Aronstein', '1970-04-07', '3721780721', 'Hembo');
INSERT INTO homenet.maklare (id, email, fornamn, efternamn, personnr, telefonnr, bolag) VALUES (29, 'tconverys@hostgator.com', 'Méthode', 'Convery', '1950-05-14', '7137443780', 'Privatmäklare');
INSERT INTO homenet.maklare (id, email, fornamn, efternamn, personnr, telefonnr, bolag) VALUES (30, 'mchataint@usgs.gov', 'Hélèna', 'Chatain', '1972-04-29', '5029917043', 'Bolagret');


--
-- Data for Name: objekt; Type: TABLE DATA; Schema: homenet; Owner: postgres
--

INSERT INTO homenet.objekt (id, adress, antal_rum, storlek, vaning, hiss, balkong, manadsavgift, utgangspris, forsaljningspris, maklararvode, saljstart, avslutat, saljare, kopare, maklare) VALUES (29, 21, 4, 93, 6, 0, 1, 8157, 14640000, 17148500, 257228, '2023-03-23', '2023-12-02', 80, 3, 1);
INSERT INTO homenet.objekt (id, adress, antal_rum, storlek, vaning, hiss, balkong, manadsavgift, utgangspris, forsaljningspris, maklararvode, saljstart, avslutat, saljare, kopare, maklare) VALUES (31, 95, 4, 143, 6, 0, 0, 13088, 12676000, 14849500, 222743, '2023-02-25', '2023-11-21', 121, 10, 6);
INSERT INTO homenet.objekt (id, adress, antal_rum, storlek, vaning, hiss, balkong, manadsavgift, utgangspris, forsaljningspris, maklararvode, saljstart, avslutat, saljare, kopare, maklare) VALUES (33, 75, 5, 84, 4, 0, 0, 3006, 683000, 683000, 10245, '2022-12-15', '2022-12-31', 47, 66, 1);
INSERT INTO homenet.objekt (id, adress, antal_rum, storlek, vaning, hiss, balkong, manadsavgift, utgangspris, forsaljningspris, maklararvode, saljstart, avslutat, saljare, kopare, maklare) VALUES (34, 44, 5, 108, 5, 1, 0, 12108, 11758000, 13781500, 206723, '2023-05-12', '2023-09-17', 30, 60, 6);
INSERT INTO homenet.objekt (id, adress, antal_rum, storlek, vaning, hiss, balkong, manadsavgift, utgangspris, forsaljningspris, maklararvode, saljstart, avslutat, saljare, kopare, maklare) VALUES (35, 7, 3, 178, 4, 0, 1, 6077, 16178000, 13817000, 207255, '2022-12-28', '2023-11-18', 112, 92, 3);
INSERT INTO homenet.objekt (id, adress, antal_rum, storlek, vaning, hiss, balkong, manadsavgift, utgangspris, forsaljningspris, maklararvode, saljstart, avslutat, saljare, kopare, maklare) VALUES (37, 80, 6, 180, 6, 0, 0, 5013, 2402000, 2839000, 42585, '2022-12-30', '2023-03-31', 147, 90, 9);
INSERT INTO homenet.objekt (id, adress, antal_rum, storlek, vaning, hiss, balkong, manadsavgift, utgangspris, forsaljningspris, maklararvode, saljstart, avslutat, saljare, kopare, maklare) VALUES (38, 22, 6, 140, 1, 1, 1, 12043, 6137000, 7210000, 108150, '2023-07-01', '2023-11-18', 190, 157, 4);
INSERT INTO homenet.objekt (id, adress, antal_rum, storlek, vaning, hiss, balkong, manadsavgift, utgangspris, forsaljningspris, maklararvode, saljstart, avslutat, saljare, kopare, maklare) VALUES (40, 40, 6, 180, 6, 1, 1, 7078, 14121000, 16550000, 248250, '2022-12-10', '2023-07-20', 171, 134, 1);
INSERT INTO homenet.objekt (id, adress, antal_rum, storlek, vaning, hiss, balkong, manadsavgift, utgangspris, forsaljningspris, maklararvode, saljstart, avslutat, saljare, kopare, maklare) VALUES (42, 19, 3, 160, 5, 1, 0, 9054, 10132000, 10132000, NULL, '2023-07-20', '2023-09-23', 194, 120, NULL);
INSERT INTO homenet.objekt (id, adress, antal_rum, storlek, vaning, hiss, balkong, manadsavgift, utgangspris, forsaljningspris, maklararvode, saljstart, avslutat, saljare, kopare, maklare) VALUES (43, 74, 2, 58, 6, 0, 0, 5092, 5344000, 6262000, 93930, '2022-12-10', '2023-11-23', 66, 2, 9);
INSERT INTO homenet.objekt (id, adress, antal_rum, storlek, vaning, hiss, balkong, manadsavgift, utgangspris, forsaljningspris, maklararvode, saljstart, avslutat, saljare, kopare, maklare) VALUES (44, 1, 1, 40, 5, 0, 0, 4065, 2619000, 3068500, 46028, '2023-01-10', '2023-04-03', 164, 130, 4);
INSERT INTO homenet.objekt (id, adress, antal_rum, storlek, vaning, hiss, balkong, manadsavgift, utgangspris, forsaljningspris, maklararvode, saljstart, avslutat, saljare, kopare, maklare) VALUES (45, 55, 5, 77, 6, 0, 0, 8055, 5024000, 5024000, 75360, '2023-06-04', '2023-08-20', 29, 127, 3);
INSERT INTO homenet.objekt (id, adress, antal_rum, storlek, vaning, hiss, balkong, manadsavgift, utgangspris, forsaljningspris, maklararvode, saljstart, avslutat, saljare, kopare, maklare) VALUES (46, 70, 5, 81, 3, 1, 0, 5084, 6820000, 8005000, 120075, '2023-02-16', '2023-03-03', 60, 159, 2);
INSERT INTO homenet.objekt (id, adress, antal_rum, storlek, vaning, hiss, balkong, manadsavgift, utgangspris, forsaljningspris, maklararvode, saljstart, avslutat, saljare, kopare, maklare) VALUES (48, 69, 5, 136, 1, 0, 1, 11061, 9853500, 9853500, 147803, '2023-07-28', '2023-08-15', 181, 137, 4);
INSERT INTO homenet.objekt (id, adress, antal_rum, storlek, vaning, hiss, balkong, manadsavgift, utgangspris, forsaljningspris, maklararvode, saljstart, avslutat, saljare, kopare, maklare) VALUES (49, 75, 4, 90, 6, 1, 1, 9138, 14590000, 12453000, 186795, '2023-07-20', '2023-08-13', 112, 94, 9);
INSERT INTO homenet.objekt (id, adress, antal_rum, storlek, vaning, hiss, balkong, manadsavgift, utgangspris, forsaljningspris, maklararvode, saljstart, avslutat, saljare, kopare, maklare) VALUES (50, 50, 2, 80, 4, 0, 0, 9072, 5784000, 6776500, 101648, '2023-01-24', '2023-03-03', 29, 10, 1);
INSERT INTO homenet.objekt (id, adress, antal_rum, storlek, vaning, hiss, balkong, manadsavgift, utgangspris, forsaljningspris, maklararvode, saljstart, avslutat, saljare, kopare, maklare) VALUES (51, 41, 6, 158, 1, 0, 1, 10084, 15736500, 15736500, 236048, '2023-01-25', '2023-11-05', 162, 106, 5);
INSERT INTO homenet.objekt (id, adress, antal_rum, storlek, vaning, hiss, balkong, manadsavgift, utgangspris, forsaljningspris, maklararvode, saljstart, avslutat, saljare, kopare, maklare) VALUES (52, 27, 4, 171, 5, 0, 0, 8040, 6934000, 8130500, 162610, '2023-03-16', '2023-04-03', 129, 156, 5);
INSERT INTO homenet.objekt (id, adress, antal_rum, storlek, vaning, hiss, balkong, manadsavgift, utgangspris, forsaljningspris, maklararvode, saljstart, avslutat, saljare, kopare, maklare) VALUES (53, 71, 3, 175, 3, 0, 0, 6076, 13319000, 15595500, 233933, '2023-01-23', '2023-05-14', 180, 79, 9);
INSERT INTO homenet.objekt (id, adress, antal_rum, storlek, vaning, hiss, balkong, manadsavgift, utgangspris, forsaljningspris, maklararvode, saljstart, avslutat, saljare, kopare, maklare) VALUES (54, 7, 3, 178, 5, 0, 1, 7060, 12603500, 12603500, 189053, '2023-03-27', '2023-06-25', 136, 139, 3);
INSERT INTO homenet.objekt (id, adress, antal_rum, storlek, vaning, hiss, balkong, manadsavgift, utgangspris, forsaljningspris, maklararvode, saljstart, avslutat, saljare, kopare, maklare) VALUES (55, 99, 6, 124, 5, 0, 1, 9089, 11138000, 13061500, 195923, '2023-01-05', '2023-07-02', 113, 57, 8);
INSERT INTO homenet.objekt (id, adress, antal_rum, storlek, vaning, hiss, balkong, manadsavgift, utgangspris, forsaljningspris, maklararvode, saljstart, avslutat, saljare, kopare, maklare) VALUES (56, 49, 6, 116, 3, 0, 1, 13011, 1537000, 1288000, 19320, '2022-12-15', '2023-11-08', 72, 5, 2);
INSERT INTO homenet.objekt (id, adress, antal_rum, storlek, vaning, hiss, balkong, manadsavgift, utgangspris, forsaljningspris, maklararvode, saljstart, avslutat, saljare, kopare, maklare) VALUES (58, 2, 2, 51, 3, 1, 0, 2571, 3642000, 4271000, NULL, '2023-03-12', '2023-09-25', 50, 87, NULL);
INSERT INTO homenet.objekt (id, adress, antal_rum, storlek, vaning, hiss, balkong, manadsavgift, utgangspris, forsaljningspris, maklararvode, saljstart, avslutat, saljare, kopare, maklare) VALUES (60, 76, 6, 113, 4, 1, 1, 8115, 15267000, 15267000, 229005, '2022-12-28', '2023-04-16', 151, 151, 7);
INSERT INTO homenet.objekt (id, adress, antal_rum, storlek, vaning, hiss, balkong, manadsavgift, utgangspris, forsaljningspris, maklararvode, saljstart, avslutat, saljare, kopare, maklare) VALUES (61, 10, 6, 180, 3, 1, 0, 12044, 7989000, 9375500, 140633, '2023-08-20', '2023-09-04', 113, 95, 2);
INSERT INTO homenet.objekt (id, adress, antal_rum, storlek, vaning, hiss, balkong, manadsavgift, utgangspris, forsaljningspris, maklararvode, saljstart, avslutat, saljare, kopare, maklare) VALUES (62, 28, 6, 140, 2, 0, 0, 8093, 13092000, 15347000, NULL, '2023-01-18', '2023-04-05', 68, 122, NULL);
INSERT INTO homenet.objekt (id, adress, antal_rum, storlek, vaning, hiss, balkong, manadsavgift, utgangspris, forsaljningspris, maklararvode, saljstart, avslutat, saljare, kopare, maklare) VALUES (63, 43, 1, 52, 1, 0, 1, 5059, 3649000, 3649000, 54735, '2023-05-26', '2023-08-10', 163, 14, 10);
INSERT INTO homenet.objekt (id, adress, antal_rum, storlek, vaning, hiss, balkong, manadsavgift, utgangspris, forsaljningspris, maklararvode, saljstart, avslutat, saljare, kopare, maklare) VALUES (65, 85, 6, 97, 2, 1, 0, 6050, 4924000, 5791500, 115830, '2023-06-20', '2023-09-30', 3, 44, 8);
INSERT INTO homenet.objekt (id, adress, antal_rum, storlek, vaning, hiss, balkong, manadsavgift, utgangspris, forsaljningspris, maklararvode, saljstart, avslutat, saljare, kopare, maklare) VALUES (66, 50, 1, 40, 1, 1, 0, 5179, 8406500, 8406500, 126098, '2023-01-19', '2023-07-31', 118, 140, 6);
INSERT INTO homenet.objekt (id, adress, antal_rum, storlek, vaning, hiss, balkong, manadsavgift, utgangspris, forsaljningspris, maklararvode, saljstart, avslutat, saljare, kopare, maklare) VALUES (67, 87, 3, 78, 5, 0, 0, 8026, 2045000, 2407000, 36105, '2022-12-26', '2023-09-12', 93, 140, 7);
INSERT INTO homenet.objekt (id, adress, antal_rum, storlek, vaning, hiss, balkong, manadsavgift, utgangspris, forsaljningspris, maklararvode, saljstart, avslutat, saljare, kopare, maklare) VALUES (68, 57, 2, 80, 6, 0, 1, 3056, 4517000, 5294000, NULL, '2023-09-22', '2023-11-06', 3, 139, NULL);
INSERT INTO homenet.objekt (id, adress, antal_rum, storlek, vaning, hiss, balkong, manadsavgift, utgangspris, forsaljningspris, maklararvode, saljstart, avslutat, saljare, kopare, maklare) VALUES (69, 100, 1, 36, 3, 0, 1, 8270, 11398000, 11398000, NULL, '2023-07-28', '2023-07-28', 10, 103, NULL);
INSERT INTO homenet.objekt (id, adress, antal_rum, storlek, vaning, hiss, balkong, manadsavgift, utgangspris, forsaljningspris, maklararvode, saljstart, avslutat, saljare, kopare, maklare) VALUES (70, 97, 2, 80, 5, 0, 1, 4176, 16560000, 14146000, NULL, '2023-05-08', '2023-10-05', 140, 107, NULL);
INSERT INTO homenet.objekt (id, adress, antal_rum, storlek, vaning, hiss, balkong, manadsavgift, utgangspris, forsaljningspris, maklararvode, saljstart, avslutat, saljare, kopare, maklare) VALUES (72, 77, 1, 57, 1, 1, 0, 1248, 16578500, 16578500, 248678, '2023-05-11', '2023-07-31', 112, 40, 5);
INSERT INTO homenet.objekt (id, adress, antal_rum, storlek, vaning, hiss, balkong, manadsavgift, utgangspris, forsaljningspris, maklararvode, saljstart, avslutat, saljare, kopare, maklare) VALUES (74, 81, 5, 150, 1, 0, 0, 10089, 13427000, 15733500, 236003, '2023-07-01', '2023-11-09', 191, 160, 1);
INSERT INTO homenet.objekt (id, adress, antal_rum, storlek, vaning, hiss, balkong, manadsavgift, utgangspris, forsaljningspris, maklararvode, saljstart, avslutat, saljare, kopare, maklare) VALUES (76, 15, 6, 101, 6, 0, 0, 5023, 2416000, 2857000, 42855, '2023-01-29', '2023-09-21', 76, 158, 8);
INSERT INTO homenet.objekt (id, adress, antal_rum, storlek, vaning, hiss, balkong, manadsavgift, utgangspris, forsaljningspris, maklararvode, saljstart, avslutat, saljare, kopare, maklare) VALUES (78, 16, 4, 112, 4, 1, 0, 9016, 2118000, 2118000, 42360, '2023-07-27', '2023-11-18', 35, 94, 2);
INSERT INTO homenet.objekt (id, adress, antal_rum, storlek, vaning, hiss, balkong, manadsavgift, utgangspris, forsaljningspris, maklararvode, saljstart, avslutat, saljare, kopare, maklare) VALUES (80, 88, 3, 54, 2, 1, 0, 5093, 5043000, 5915500, 88733, '2023-06-16', '2023-10-27', 104, 9, 10);
INSERT INTO homenet.objekt (id, adress, antal_rum, storlek, vaning, hiss, balkong, manadsavgift, utgangspris, forsaljningspris, maklararvode, saljstart, avslutat, saljare, kopare, maklare) VALUES (82, 3, 3, 120, 5, 0, 1, 5075, 9112000, 10674500, 160118, '2023-02-18', '2023-04-20', 162, 155, 3);
INSERT INTO homenet.objekt (id, adress, antal_rum, storlek, vaning, hiss, balkong, manadsavgift, utgangspris, forsaljningspris, maklararvode, saljstart, avslutat, saljare, kopare, maklare) VALUES (83, 22, 6, 117, 1, 0, 0, 6060, 7034000, 8260000, 123900, '2023-04-14', '2023-09-21', 161, 100, 9);
INSERT INTO homenet.objekt (id, adress, antal_rum, storlek, vaning, hiss, balkong, manadsavgift, utgangspris, forsaljningspris, maklararvode, saljstart, avslutat, saljare, kopare, maklare) VALUES (85, 8, 6, 180, 1, 1, 0, 9078, 14212000, 16656500, NULL, '2023-01-21', '2023-11-21', 25, 33, NULL);
INSERT INTO homenet.objekt (id, adress, antal_rum, storlek, vaning, hiss, balkong, manadsavgift, utgangspris, forsaljningspris, maklararvode, saljstart, avslutat, saljare, kopare, maklare) VALUES (86, 70, 4, 114, 1, 1, 1, 10086, 9805000, 11491000, 172365, '2023-03-08', '2023-10-18', 75, 114, 2);
INSERT INTO homenet.objekt (id, adress, antal_rum, storlek, vaning, hiss, balkong, manadsavgift, utgangspris, forsaljningspris, maklararvode, saljstart, avslutat, saljare, kopare, maklare) VALUES (88, 40, 1, 55, 3, 0, 1, 3146, 8059000, 9433000, 141495, '2023-09-24', '2023-10-27', 79, 107, 10);
INSERT INTO homenet.objekt (id, adress, antal_rum, storlek, vaning, hiss, balkong, manadsavgift, utgangspris, forsaljningspris, maklararvode, saljstart, avslutat, saljare, kopare, maklare) VALUES (90, 26, 2, 63, 6, 1, 0, 6193, 14282500, 14282500, 214238, '2023-10-10', '2023-11-14', 12, 77, 8);
INSERT INTO homenet.objekt (id, adress, antal_rum, storlek, vaning, hiss, balkong, manadsavgift, utgangspris, forsaljningspris, maklararvode, saljstart, avslutat, saljare, kopare, maklare) VALUES (91, 96, 2, 80, 6, 1, 1, 8061, 5810000, 4958000, NULL, '2022-12-30', '2023-06-21', 181, 86, NULL);
INSERT INTO homenet.objekt (id, adress, antal_rum, storlek, vaning, hiss, balkong, manadsavgift, utgangspris, forsaljningspris, maklararvode, saljstart, avslutat, saljare, kopare, maklare) VALUES (92, 26, 3, 178, 2, 1, 0, 10029, 5219000, 6118500, 91778, '2023-03-17', '2023-10-04', 52, 143, 1);
INSERT INTO homenet.objekt (id, adress, antal_rum, storlek, vaning, hiss, balkong, manadsavgift, utgangspris, forsaljningspris, maklararvode, saljstart, avslutat, saljare, kopare, maklare) VALUES (94, 33, 4, 120, 5, 1, 1, 10085, 10256000, 12018500, 180278, '2023-07-15', '2023-08-22', 169, 22, 2);
INSERT INTO homenet.objekt (id, adress, antal_rum, storlek, vaning, hiss, balkong, manadsavgift, utgangspris, forsaljningspris, maklararvode, saljstart, avslutat, saljare, kopare, maklare) VALUES (95, 50, 3, 83, 1, 0, 1, 7150, 12455000, 14587000, 218805, '2023-01-08', '2023-02-20', 6, 58, 2);
INSERT INTO homenet.objekt (id, adress, antal_rum, storlek, vaning, hiss, balkong, manadsavgift, utgangspris, forsaljningspris, maklararvode, saljstart, avslutat, saljare, kopare, maklare) VALUES (97, 60, 5, 143, 5, 0, 1, 9041, 5963000, 7000500, 105008, '2023-07-21', '2023-08-29', 22, 45, 7);
INSERT INTO homenet.objekt (id, adress, antal_rum, storlek, vaning, hiss, balkong, manadsavgift, utgangspris, forsaljningspris, maklararvode, saljstart, avslutat, saljare, kopare, maklare) VALUES (98, 78, 5, 150, 5, 0, 1, 13074, 13092500, 11170000, 167550, '2023-02-26', '2023-11-27', 104, 123, 4);
INSERT INTO homenet.objekt (id, adress, antal_rum, storlek, vaning, hiss, balkong, manadsavgift, utgangspris, forsaljningspris, maklararvode, saljstart, avslutat, saljare, kopare, maklare) VALUES (99, 32, 6, 168, 2, 1, 0, 7035, 7036000, 7036000, 105540, '2023-02-27', '2023-07-15', 10, 150, 9);
INSERT INTO homenet.objekt (id, adress, antal_rum, storlek, vaning, hiss, balkong, manadsavgift, utgangspris, forsaljningspris, maklararvode, saljstart, avslutat, saljare, kopare, maklare) VALUES (100, 11, 3, 56, 4, 0, 1, 7069, 3871000, 4544000, 68160, '2023-02-22', '2023-02-22', 95, 31, 6);
INSERT INTO homenet.objekt (id, adress, antal_rum, storlek, vaning, hiss, balkong, manadsavgift, utgangspris, forsaljningspris, maklararvode, saljstart, avslutat, saljare, kopare, maklare) VALUES (102, 86, 3, 109, 4, 1, 0, 7031, 3980000, 3980000, 59700, '2023-06-12', '2023-08-27', 12, 8, 1);
INSERT INTO homenet.objekt (id, adress, antal_rum, storlek, vaning, hiss, balkong, manadsavgift, utgangspris, forsaljningspris, maklararvode, saljstart, avslutat, saljare, kopare, maklare) VALUES (103, 57, 2, 120, 2, 1, 0, 5060, 7219000, 8454000, 126810, '2023-02-15', '2023-03-06', 183, 145, 3);
INSERT INTO homenet.objekt (id, adress, antal_rum, storlek, vaning, hiss, balkong, manadsavgift, utgangspris, forsaljningspris, maklararvode, saljstart, avslutat, saljare, kopare, maklare) VALUES (104, 62, 3, 99, 6, 1, 0, 8117, 11608000, 13595500, 271910, '2023-01-19', '2023-08-25', 58, 104, 7);
INSERT INTO homenet.objekt (id, adress, antal_rum, storlek, vaning, hiss, balkong, manadsavgift, utgangspris, forsaljningspris, maklararvode, saljstart, avslutat, saljare, kopare, maklare) VALUES (105, 29, 6, 180, 4, 1, 1, 5030, 6370000, 6370000, 95550, '2022-12-07', '2023-02-10', 172, 73, 1);
INSERT INTO homenet.objekt (id, adress, antal_rum, storlek, vaning, hiss, balkong, manadsavgift, utgangspris, forsaljningspris, maklararvode, saljstart, avslutat, saljare, kopare, maklare) VALUES (107, 34, 6, 168, 6, 0, 0, 10071, 12085000, 14168500, 212528, '2023-01-23', '2023-04-23', 46, 25, 5);
INSERT INTO homenet.objekt (id, adress, antal_rum, storlek, vaning, hiss, balkong, manadsavgift, utgangspris, forsaljningspris, maklararvode, saljstart, avslutat, saljare, kopare, maklare) VALUES (109, 65, 2, 80, 2, 1, 0, 5100, 8078000, 9460500, 141908, '2022-12-06', '2023-02-10', 194, 119, 5);
INSERT INTO homenet.objekt (id, adress, antal_rum, storlek, vaning, hiss, balkong, manadsavgift, utgangspris, forsaljningspris, maklararvode, saljstart, avslutat, saljare, kopare, maklare) VALUES (110, 29, 2, 80, 2, 0, 1, 3037, 2989000, 3506000, 52590, '2023-07-11', '2023-11-27', 154, 89, 4);
INSERT INTO homenet.objekt (id, adress, antal_rum, storlek, vaning, hiss, balkong, manadsavgift, utgangspris, forsaljningspris, maklararvode, saljstart, avslutat, saljare, kopare, maklare) VALUES (111, 80, 4, 114, 4, 1, 0, 4121, 16219000, 16219000, 243285, '2023-02-18', '2023-08-18', 135, 2, 5);
INSERT INTO homenet.objekt (id, adress, antal_rum, storlek, vaning, hiss, balkong, manadsavgift, utgangspris, forsaljningspris, maklararvode, saljstart, avslutat, saljare, kopare, maklare) VALUES (113, 42, 4, 124, 3, 0, 0, 12075, 9331000, 10936000, 164040, '2022-12-25', '2023-01-27', 54, 81, 10);
INSERT INTO homenet.objekt (id, adress, antal_rum, storlek, vaning, hiss, balkong, manadsavgift, utgangspris, forsaljningspris, maklararvode, saljstart, avslutat, saljare, kopare, maklare) VALUES (114, 92, 4, 173, 1, 1, 1, 10036, 7496500, 7496500, 112448, '2023-07-18', '2023-07-19', 95, 22, 5);
INSERT INTO homenet.objekt (id, adress, antal_rum, storlek, vaning, hiss, balkong, manadsavgift, utgangspris, forsaljningspris, maklararvode, saljstart, avslutat, saljare, kopare, maklare) VALUES (115, 62, 3, 151, 2, 1, 1, 9067, 10199000, 11945500, 179183, '2022-12-23', '2023-06-28', 145, 154, 10);
INSERT INTO homenet.objekt (id, adress, antal_rum, storlek, vaning, hiss, balkong, manadsavgift, utgangspris, forsaljningspris, maklararvode, saljstart, avslutat, saljare, kopare, maklare) VALUES (116, 7, 6, 90, 5, 0, 1, 9056, 5091000, 5987000, 89805, '2022-12-10', '2023-02-20', 135, 5, 3);
INSERT INTO homenet.objekt (id, adress, antal_rum, storlek, vaning, hiss, balkong, manadsavgift, utgangspris, forsaljningspris, maklararvode, saljstart, avslutat, saljare, kopare, maklare) VALUES (117, 81, 6, 144, 1, 1, 1, 7071, 12156500, 12156500, 243130, '2023-02-14', '2023-03-13', 99, 125, 1);
INSERT INTO homenet.objekt (id, adress, antal_rum, storlek, vaning, hiss, balkong, manadsavgift, utgangspris, forsaljningspris, maklararvode, saljstart, avslutat, saljare, kopare, maklare) VALUES (118, 13, 1, 50, 1, 1, 1, 1299, 14977000, 17527500, 262913, '2022-12-15', '2022-12-16', 21, 97, 7);
INSERT INTO homenet.objekt (id, adress, antal_rum, storlek, vaning, hiss, balkong, manadsavgift, utgangspris, forsaljningspris, maklararvode, saljstart, avslutat, saljare, kopare, maklare) VALUES (120, 85, 2, 142, 6, 0, 0, 8015, 2635500, 2635500, 39533, '2022-12-15', '2023-08-27', 56, 120, 8);
INSERT INTO homenet.objekt (id, adress, antal_rum, storlek, vaning, hiss, balkong, manadsavgift, utgangspris, forsaljningspris, maklararvode, saljstart, avslutat, saljare, kopare, maklare) VALUES (121, 42, 2, 115, 4, 1, 1, 7063, 7344000, 8600500, 129008, '2022-12-03', '2023-08-13', 71, 133, 6);
INSERT INTO homenet.objekt (id, adress, antal_rum, storlek, vaning, hiss, balkong, manadsavgift, utgangspris, forsaljningspris, maklararvode, saljstart, avslutat, saljare, kopare, maklare) VALUES (122, 12, 5, 137, 4, 1, 0, 13088, 12160000, 14251500, 213773, '2023-04-22', '2023-10-19', 131, 138, 1);
INSERT INTO homenet.objekt (id, adress, antal_rum, storlek, vaning, hiss, balkong, manadsavgift, utgangspris, forsaljningspris, maklararvode, saljstart, avslutat, saljare, kopare, maklare) VALUES (123, 85, 1, 38, 3, 1, 0, 6192, 8541000, 8541000, 128115, '2023-06-27', '2023-09-03', 31, 1, 10);
INSERT INTO homenet.objekt (id, adress, antal_rum, storlek, vaning, hiss, balkong, manadsavgift, utgangspris, forsaljningspris, maklararvode, saljstart, avslutat, saljare, kopare, maklare) VALUES (124, 31, 6, 162, 4, 0, 0, 11069, 11303000, 13253500, 198803, '2023-03-08', '2023-10-18', 1, 100, 4);
INSERT INTO homenet.objekt (id, adress, antal_rum, storlek, vaning, hiss, balkong, manadsavgift, utgangspris, forsaljningspris, maklararvode, saljstart, avslutat, saljare, kopare, maklare) VALUES (125, 68, 2, 103, 6, 0, 1, 4128, 13206000, 15459500, 231893, '2023-04-07', '2023-09-18', 2, 90, 10);
INSERT INTO homenet.objekt (id, adress, antal_rum, storlek, vaning, hiss, balkong, manadsavgift, utgangspris, forsaljningspris, maklararvode, saljstart, avslutat, saljare, kopare, maklare) VALUES (126, 92, 3, 95, 2, 0, 1, 9073, 8214500, 8214500, 123218, '2023-02-04', '2023-08-20', 145, 160, 6);
INSERT INTO homenet.objekt (id, adress, antal_rum, storlek, vaning, hiss, balkong, manadsavgift, utgangspris, forsaljningspris, maklararvode, saljstart, avslutat, saljare, kopare, maklare) VALUES (128, 17, 5, 130, 5, 1, 1, 10059, 7763000, 9107000, 136605, '2023-03-24', '2023-09-09', 92, 30, 7);
INSERT INTO homenet.objekt (id, adress, antal_rum, storlek, vaning, hiss, balkong, manadsavgift, utgangspris, forsaljningspris, maklararvode, saljstart, avslutat, saljare, kopare, maklare) VALUES (130, 43, 5, 150, 4, 0, 1, 7062, 9388000, 11007500, 220150, '2022-12-28', '2022-12-31', 83, 159, 10);
INSERT INTO homenet.objekt (id, adress, antal_rum, storlek, vaning, hiss, balkong, manadsavgift, utgangspris, forsaljningspris, maklararvode, saljstart, avslutat, saljare, kopare, maklare) VALUES (131, 54, 1, 49, 5, 0, 1, 4228, 11183000, 13088500, 196328, '2023-04-15', '2023-11-28', 77, 17, 5);
INSERT INTO homenet.objekt (id, adress, antal_rum, storlek, vaning, hiss, balkong, manadsavgift, utgangspris, forsaljningspris, maklararvode, saljstart, avslutat, saljare, kopare, maklare) VALUES (132, 78, 1, 29, 4, 0, 1, 7359, 12195000, 12195000, 182925, '2022-12-04', '2023-10-29', 130, 88, 1);
INSERT INTO homenet.objekt (id, adress, antal_rum, storlek, vaning, hiss, balkong, manadsavgift, utgangspris, forsaljningspris, maklararvode, saljstart, avslutat, saljare, kopare, maklare) VALUES (134, 42, 5, 150, 2, 1, 1, 10026, 3973000, 4672000, 70080, '2023-02-14', '2023-02-15', 194, 151, 6);
INSERT INTO homenet.objekt (id, adress, antal_rum, storlek, vaning, hiss, balkong, manadsavgift, utgangspris, forsaljningspris, maklararvode, saljstart, avslutat, saljare, kopare, maklare) VALUES (135, 73, 5, 150, 4, 0, 1, 3037, 6615500, 6615500, 99233, '2022-12-16', '2023-01-08', 134, 152, 5);
INSERT INTO homenet.objekt (id, adress, antal_rum, storlek, vaning, hiss, balkong, manadsavgift, utgangspris, forsaljningspris, maklararvode, saljstart, avslutat, saljare, kopare, maklare) VALUES (137, 31, 1, 65, 1, 0, 1, 3086, 5643000, 6606000, 99090, '2023-05-29', '2023-10-22', 105, 91, 2);
INSERT INTO homenet.objekt (id, adress, antal_rum, storlek, vaning, hiss, balkong, manadsavgift, utgangspris, forsaljningspris, maklararvode, saljstart, avslutat, saljare, kopare, maklare) VALUES (138, 29, 6, 180, 3, 0, 1, 6054, 11546000, 11546000, 173190, '2023-03-30', '2023-11-14', 16, 63, 2);
INSERT INTO homenet.objekt (id, adress, antal_rum, storlek, vaning, hiss, balkong, manadsavgift, utgangspris, forsaljningspris, maklararvode, saljstart, avslutat, saljare, kopare, maklare) VALUES (139, 83, 6, 173, 3, 1, 1, 7064, 11235000, 13173500, 197603, '2022-12-02', '2023-08-05', 151, 6, 10);
INSERT INTO homenet.objekt (id, adress, antal_rum, storlek, vaning, hiss, balkong, manadsavgift, utgangspris, forsaljningspris, maklararvode, saljstart, avslutat, saljare, kopare, maklare) VALUES (140, 79, 1, 40, 1, 1, 1, 4276, 12954000, 11068000, 166020, '2023-01-30', '2023-03-06', 75, 22, 5);
INSERT INTO homenet.objekt (id, adress, antal_rum, storlek, vaning, hiss, balkong, manadsavgift, utgangspris, forsaljningspris, maklararvode, saljstart, avslutat, saljare, kopare, maklare) VALUES (141, 32, 3, 114, 4, 0, 0, 6038, 5120500, 5120500, 76808, '2023-02-01', '2023-07-22', 130, 17, 1);
INSERT INTO homenet.objekt (id, adress, antal_rum, storlek, vaning, hiss, balkong, manadsavgift, utgangspris, forsaljningspris, maklararvode, saljstart, avslutat, saljare, kopare, maklare) VALUES (142, 1, 3, 101, 4, 0, 0, 3077, 7815000, 9157500, 137363, '2023-07-28', '2023-10-01', 7, 38, 6);
INSERT INTO homenet.objekt (id, adress, antal_rum, storlek, vaning, hiss, balkong, manadsavgift, utgangspris, forsaljningspris, maklararvode, saljstart, avslutat, saljare, kopare, maklare) VALUES (143, 1, 6, 180, 5, 1, 0, 3050, 9052000, 10619500, 265488, '2023-02-13', '2023-04-19', 114, 32, 10);
INSERT INTO homenet.objekt (id, adress, antal_rum, storlek, vaning, hiss, balkong, manadsavgift, utgangspris, forsaljningspris, maklararvode, saljstart, avslutat, saljare, kopare, maklare) VALUES (144, 21, 5, 165, 2, 0, 0, 8085, 16528500, 16528500, 247928, '2022-12-18', '2023-02-04', 93, 32, 10);
INSERT INTO homenet.objekt (id, adress, antal_rum, storlek, vaning, hiss, balkong, manadsavgift, utgangspris, forsaljningspris, maklararvode, saljstart, avslutat, saljare, kopare, maklare) VALUES (145, 44, 6, 180, 1, 1, 0, 9034, 6124000, 7193500, 107903, '2023-07-27', '2023-11-25', 56, 27, 3);
INSERT INTO homenet.objekt (id, adress, antal_rum, storlek, vaning, hiss, balkong, manadsavgift, utgangspris, forsaljningspris, maklararvode, saljstart, avslutat, saljare, kopare, maklare) VALUES (146, 66, 1, 69, 2, 0, 1, 8214, 14774000, 17289500, 259343, '2023-05-04', '2023-06-17', 165, 101, 8);
INSERT INTO homenet.objekt (id, adress, antal_rum, storlek, vaning, hiss, balkong, manadsavgift, utgangspris, forsaljningspris, maklararvode, saljstart, avslutat, saljare, kopare, maklare) VALUES (149, 5, 1, 39, 1, 0, 1, 8027, 1089000, 1278500, 19178, '2023-04-10', '2023-09-10', 179, 39, 8);
INSERT INTO homenet.objekt (id, adress, antal_rum, storlek, vaning, hiss, balkong, manadsavgift, utgangspris, forsaljningspris, maklararvode, saljstart, avslutat, saljare, kopare, maklare) VALUES (150, 36, 3, 128, 4, 1, 0, 5009, 1445500, 1445500, 21683, '2022-12-29', '2023-07-11', 31, 3, 8);
INSERT INTO homenet.objekt (id, adress, antal_rum, storlek, vaning, hiss, balkong, manadsavgift, utgangspris, forsaljningspris, maklararvode, saljstart, avslutat, saljare, kopare, maklare) VALUES (151, 29, 3, 154, 5, 0, 1, 8093, 14456000, 16926000, 253890, '2023-06-17', '2023-08-10', 38, 30, 4);
INSERT INTO homenet.objekt (id, adress, antal_rum, storlek, vaning, hiss, balkong, manadsavgift, utgangspris, forsaljningspris, maklararvode, saljstart, avslutat, saljare, kopare, maklare) VALUES (152, 72, 6, 174, 4, 1, 0, 8025, 4362000, 5132000, 76980, '2023-04-13', '2023-10-04', 67, 46, 8);
INSERT INTO homenet.objekt (id, adress, antal_rum, storlek, vaning, hiss, balkong, manadsavgift, utgangspris, forsaljningspris, maklararvode, saljstart, avslutat, saljare, kopare, maklare) VALUES (153, 48, 4, 154, 1, 0, 1, 8014, 2580500, 2580500, 38708, '2022-12-24', '2023-08-15', 113, 36, 4);
INSERT INTO homenet.objekt (id, adress, antal_rum, storlek, vaning, hiss, balkong, manadsavgift, utgangspris, forsaljningspris, maklararvode, saljstart, avslutat, saljare, kopare, maklare) VALUES (154, 70, 6, 136, 3, 0, 1, 8106, 16953500, 14465000, 216975, '2023-01-06', '2023-09-01', 98, 152, 1);
INSERT INTO homenet.objekt (id, adress, antal_rum, storlek, vaning, hiss, balkong, manadsavgift, utgangspris, forsaljningspris, maklararvode, saljstart, avslutat, saljare, kopare, maklare) VALUES (156, 88, 2, 117, 5, 1, 0, 5017, 2338500, 2338500, NULL, '2022-12-23', '2023-09-07', 145, 40, NULL);
INSERT INTO homenet.objekt (id, adress, antal_rum, storlek, vaning, hiss, balkong, manadsavgift, utgangspris, forsaljningspris, maklararvode, saljstart, avslutat, saljare, kopare, maklare) VALUES (158, 88, 6, 116, 2, 0, 0, 13075, 8735000, 10250000, 153750, '2023-03-12', '2023-11-15', 70, 153, 10);
INSERT INTO homenet.objekt (id, adress, antal_rum, storlek, vaning, hiss, balkong, manadsavgift, utgangspris, forsaljningspris, maklararvode, saljstart, avslutat, saljare, kopare, maklare) VALUES (159, 100, 2, 122, 3, 1, 0, 4018, 2583000, 2583000, NULL, '2022-12-04', '2023-04-08', 175, 20, NULL);
INSERT INTO homenet.objekt (id, adress, antal_rum, storlek, vaning, hiss, balkong, manadsavgift, utgangspris, forsaljningspris, maklararvode, saljstart, avslutat, saljare, kopare, maklare) VALUES (160, 54, 1, 42, 2, 1, 0, 6197, 8310000, 9727000, 145905, '2023-03-10', '2023-11-10', 189, 84, 7);
INSERT INTO homenet.objekt (id, adress, antal_rum, storlek, vaning, hiss, balkong, manadsavgift, utgangspris, forsaljningspris, maklararvode, saljstart, avslutat, saljare, kopare, maklare) VALUES (161, 44, 2, 76, 3, 0, 1, 4085, 7587000, 6477000, NULL, '2023-01-29', '2023-09-29', 126, 78, NULL);
INSERT INTO homenet.objekt (id, adress, antal_rum, storlek, vaning, hiss, balkong, manadsavgift, utgangspris, forsaljningspris, maklararvode, saljstart, avslutat, saljare, kopare, maklare) VALUES (1, 75, 6, 137, 5, 1, 1, 3090, 12420000, 14561000, 218415, '2023-01-25', '2023-07-19', 107, 5, 2);
INSERT INTO homenet.objekt (id, adress, antal_rum, storlek, vaning, hiss, balkong, manadsavgift, utgangspris, forsaljningspris, maklararvode, saljstart, avslutat, saljare, kopare, maklare) VALUES (2, 72, 5, 113, 2, 1, 1, 9044, 5058000, 5942500, 89138, '2023-06-20', '2023-06-23', 129, 27, 5);
INSERT INTO homenet.objekt (id, adress, antal_rum, storlek, vaning, hiss, balkong, manadsavgift, utgangspris, forsaljningspris, maklararvode, saljstart, avslutat, saljare, kopare, maklare) VALUES (4, 24, 1, 40, 1, 1, 1, 6033, 1332000, 1563000, 23445, '2023-02-08', '2023-10-23', 21, 150, 6);
INSERT INTO homenet.objekt (id, adress, antal_rum, storlek, vaning, hiss, balkong, manadsavgift, utgangspris, forsaljningspris, maklararvode, saljstart, avslutat, saljare, kopare, maklare) VALUES (5, 45, 4, 137, 1, 1, 1, 8097, 13380000, 15673000, NULL, '2023-03-25', '2023-06-21', 180, 69, NULL);
INSERT INTO homenet.objekt (id, adress, antal_rum, storlek, vaning, hiss, balkong, manadsavgift, utgangspris, forsaljningspris, maklararvode, saljstart, avslutat, saljare, kopare, maklare) VALUES (6, 76, 4, 124, 1, 1, 1, 8029, 4267000, 4267000, NULL, '2023-05-08', '2023-06-13', 91, 30, NULL);
INSERT INTO homenet.objekt (id, adress, antal_rum, storlek, vaning, hiss, balkong, manadsavgift, utgangspris, forsaljningspris, maklararvode, saljstart, avslutat, saljare, kopare, maklare) VALUES (8, 32, 5, 150, 6, 1, 0, 3029, 4487000, 5273500, 79103, '2023-02-23', '2023-07-11', 90, 130, 6);
INSERT INTO homenet.objekt (id, adress, antal_rum, storlek, vaning, hiss, balkong, manadsavgift, utgangspris, forsaljningspris, maklararvode, saljstart, avslutat, saljare, kopare, maklare) VALUES (9, 39, 4, 142, 5, 0, 1, 7021, 3533000, 3533000, 52995, '2023-01-29', '2023-08-08', 99, 145, 5);
INSERT INTO homenet.objekt (id, adress, antal_rum, storlek, vaning, hiss, balkong, manadsavgift, utgangspris, forsaljningspris, maklararvode, saljstart, avslutat, saljare, kopare, maklare) VALUES (10, 40, 5, 126, 5, 0, 0, 10114, 14462000, 16945000, 254175, '2023-05-21', '2023-08-21', 92, 82, 2);
INSERT INTO homenet.objekt (id, adress, antal_rum, storlek, vaning, hiss, balkong, manadsavgift, utgangspris, forsaljningspris, maklararvode, saljstart, avslutat, saljare, kopare, maklare) VALUES (11, 15, 4, 125, 1, 1, 0, 6019, 2454000, 2890000, 43350, '2023-02-28', '2023-12-01', 192, 5, 8);
INSERT INTO homenet.objekt (id, adress, antal_rum, storlek, vaning, hiss, balkong, manadsavgift, utgangspris, forsaljningspris, maklararvode, saljstart, avslutat, saljare, kopare, maklare) VALUES (15, 14, 3, 134, 3, 0, 1, 4014, 2360000, 2360000, 35400, '2023-04-07', '2023-06-17', 121, 58, 8);
INSERT INTO homenet.objekt (id, adress, antal_rum, storlek, vaning, hiss, balkong, manadsavgift, utgangspris, forsaljningspris, maklararvode, saljstart, avslutat, saljare, kopare, maklare) VALUES (16, 70, 3, 116, 2, 1, 1, 6074, 8648000, 10132000, 151980, '2023-04-11', '2023-07-08', 157, 51, 10);
INSERT INTO homenet.objekt (id, adress, antal_rum, storlek, vaning, hiss, balkong, manadsavgift, utgangspris, forsaljningspris, maklararvode, saljstart, avslutat, saljare, kopare, maklare) VALUES (18, 47, 6, 106, 3, 1, 0, 11073, 9204500, 9204500, 138068, '2023-03-04', '2023-10-02', 98, 39, 4);
INSERT INTO homenet.objekt (id, adress, antal_rum, storlek, vaning, hiss, balkong, manadsavgift, utgangspris, forsaljningspris, maklararvode, saljstart, avslutat, saljare, kopare, maklare) VALUES (19, 50, 5, 109, 1, 0, 1, 4137, 14948000, 17514000, 262710, '2023-02-25', '2023-07-30', 159, 15, 3);
INSERT INTO homenet.objekt (id, adress, antal_rum, storlek, vaning, hiss, balkong, manadsavgift, utgangspris, forsaljningspris, maklararvode, saljstart, avslutat, saljare, kopare, maklare) VALUES (21, 90, 4, 71, 4, 0, 0, 4147, 12234000, 12234000, 183510, '2022-12-26', '2023-04-19', 71, 9, 8);
INSERT INTO homenet.objekt (id, adress, antal_rum, storlek, vaning, hiss, balkong, manadsavgift, utgangspris, forsaljningspris, maklararvode, saljstart, avslutat, saljare, kopare, maklare) VALUES (22, 76, 2, 83, 6, 0, 0, 7101, 8438000, 9881500, 148223, '2023-07-21', '2023-08-19', 163, 85, 1);
INSERT INTO homenet.objekt (id, adress, antal_rum, storlek, vaning, hiss, balkong, manadsavgift, utgangspris, forsaljningspris, maklararvode, saljstart, avslutat, saljare, kopare, maklare) VALUES (23, 70, 4, 133, 5, 0, 1, 9066, 8858000, 10382500, 155738, '2023-05-19', '2023-11-08', 20, 135, 10);
INSERT INTO homenet.objekt (id, adress, antal_rum, storlek, vaning, hiss, balkong, manadsavgift, utgangspris, forsaljningspris, maklararvode, saljstart, avslutat, saljare, kopare, maklare) VALUES (25, 73, 1, 65, 4, 1, 0, 3039, 2560000, 2999000, 44985, '2023-07-04', '2023-11-19', 1, 26, 9);
INSERT INTO homenet.objekt (id, adress, antal_rum, storlek, vaning, hiss, balkong, manadsavgift, utgangspris, forsaljningspris, maklararvode, saljstart, avslutat, saljare, kopare, maklare) VALUES (26, 23, 5, 148, 1, 0, 1, 7050, 7405000, 8687500, 173750, '2023-08-07', '2023-09-11', 21, 120, 2);
INSERT INTO homenet.objekt (id, adress, antal_rum, storlek, vaning, hiss, balkong, manadsavgift, utgangspris, forsaljningspris, maklararvode, saljstart, avslutat, saljare, kopare, maklare) VALUES (3, 72, 3, 126, 2, 0, 0, 7075, 11194000, NULL, NULL, '2023-09-24', NULL, 79, NULL, 1);
INSERT INTO homenet.objekt (id, adress, antal_rum, storlek, vaning, hiss, balkong, manadsavgift, utgangspris, forsaljningspris, maklararvode, saljstart, avslutat, saljare, kopare, maklare) VALUES (7, 61, 5, 150, 6, 0, 1, 4059, 10465000, NULL, NULL, '2023-06-25', NULL, 101, NULL, 6);
INSERT INTO homenet.objekt (id, adress, antal_rum, storlek, vaning, hiss, balkong, manadsavgift, utgangspris, forsaljningspris, maklararvode, saljstart, avslutat, saljare, kopare, maklare) VALUES (12, 62, 1, 44, 1, 1, 0, 2019, 986000, NULL, NULL, '2023-01-25', NULL, 188, NULL, NULL);
INSERT INTO homenet.objekt (id, adress, antal_rum, storlek, vaning, hiss, balkong, manadsavgift, utgangspris, forsaljningspris, maklararvode, saljstart, avslutat, saljare, kopare, maklare) VALUES (13, 19, 2, 89, 2, 0, 0, 7137, 12273000, NULL, NULL, '2023-01-04', NULL, 99, NULL, 4);
INSERT INTO homenet.objekt (id, adress, antal_rum, storlek, vaning, hiss, balkong, manadsavgift, utgangspris, forsaljningspris, maklararvode, saljstart, avslutat, saljare, kopare, maklare) VALUES (14, 96, 4, 107, 2, 1, 1, 11122, 15333500, NULL, NULL, '2023-04-05', NULL, 9, NULL, 1);
INSERT INTO homenet.objekt (id, adress, antal_rum, storlek, vaning, hiss, balkong, manadsavgift, utgangspris, forsaljningspris, maklararvode, saljstart, avslutat, saljare, kopare, maklare) VALUES (17, 16, 6, 112, 5, 1, 0, 6056, 6330000, NULL, NULL, '2023-06-04', NULL, 192, NULL, 2);
INSERT INTO homenet.objekt (id, adress, antal_rum, storlek, vaning, hiss, balkong, manadsavgift, utgangspris, forsaljningspris, maklararvode, saljstart, avslutat, saljare, kopare, maklare) VALUES (20, 25, 6, 180, 2, 0, 1, 6067, 12090000, NULL, NULL, '2023-02-14', NULL, 80, NULL, 2);
INSERT INTO homenet.objekt (id, adress, antal_rum, storlek, vaning, hiss, balkong, manadsavgift, utgangspris, forsaljningspris, maklararvode, saljstart, avslutat, saljare, kopare, maklare) VALUES (24, 73, 1, 64, 4, 0, 0, 2036, 2734500, NULL, NULL, '2023-09-27', NULL, 144, NULL, NULL);
INSERT INTO homenet.objekt (id, adress, antal_rum, storlek, vaning, hiss, balkong, manadsavgift, utgangspris, forsaljningspris, maklararvode, saljstart, avslutat, saljare, kopare, maklare) VALUES (27, 39, 2, 144, 4, 1, 1, 10079, 13434500, NULL, NULL, '2023-06-07', NULL, 178, NULL, 6);
INSERT INTO homenet.objekt (id, adress, antal_rum, storlek, vaning, hiss, balkong, manadsavgift, utgangspris, forsaljningspris, maklararvode, saljstart, avslutat, saljare, kopare, maklare) VALUES (28, 51, 2, 118, 4, 0, 0, 3031, 4366500, NULL, NULL, '2023-11-22', NULL, 55, NULL, 4);
INSERT INTO homenet.objekt (id, adress, antal_rum, storlek, vaning, hiss, balkong, manadsavgift, utgangspris, forsaljningspris, maklararvode, saljstart, avslutat, saljare, kopare, maklare) VALUES (30, 6, 6, 149, 4, 1, 0, 8034, 6028000, NULL, NULL, '2023-03-05', NULL, 77, NULL, 8);
INSERT INTO homenet.objekt (id, adress, antal_rum, storlek, vaning, hiss, balkong, manadsavgift, utgangspris, forsaljningspris, maklararvode, saljstart, avslutat, saljare, kopare, maklare) VALUES (32, 51, 6, 117, 6, 1, 1, 10031, 3651000, NULL, NULL, '2023-03-02', NULL, 40, NULL, 2);
INSERT INTO homenet.objekt (id, adress, antal_rum, storlek, vaning, hiss, balkong, manadsavgift, utgangspris, forsaljningspris, maklararvode, saljstart, avslutat, saljare, kopare, maklare) VALUES (36, 24, 4, 179, 2, 1, 1, 4012, 2684000, NULL, NULL, '2023-09-08', NULL, 190, NULL, NULL);
INSERT INTO homenet.objekt (id, adress, antal_rum, storlek, vaning, hiss, balkong, manadsavgift, utgangspris, forsaljningspris, maklararvode, saljstart, avslutat, saljare, kopare, maklare) VALUES (39, 66, 4, 134, 1, 0, 0, 9084, 13197500, NULL, NULL, '2023-02-28', NULL, 174, NULL, 3);
INSERT INTO homenet.objekt (id, adress, antal_rum, storlek, vaning, hiss, balkong, manadsavgift, utgangspris, forsaljningspris, maklararvode, saljstart, avslutat, saljare, kopare, maklare) VALUES (41, 96, 4, 112, 4, 0, 0, 11099, 11144000, NULL, NULL, '2023-05-31', NULL, 20, NULL, 4);
INSERT INTO homenet.objekt (id, adress, antal_rum, storlek, vaning, hiss, balkong, manadsavgift, utgangspris, forsaljningspris, maklararvode, saljstart, avslutat, saljare, kopare, maklare) VALUES (47, 28, 5, 165, 6, 1, 1, 3042, 6953000, NULL, NULL, '2023-07-24', NULL, 78, NULL, 6);
INSERT INTO homenet.objekt (id, adress, antal_rum, storlek, vaning, hiss, balkong, manadsavgift, utgangspris, forsaljningspris, maklararvode, saljstart, avslutat, saljare, kopare, maklare) VALUES (57, 13, 3, 146, 5, 0, 0, 3062, 10678500, NULL, NULL, '2023-10-31', NULL, 1, NULL, 1);
INSERT INTO homenet.objekt (id, adress, antal_rum, storlek, vaning, hiss, balkong, manadsavgift, utgangspris, forsaljningspris, maklararvode, saljstart, avslutat, saljare, kopare, maklare) VALUES (59, 1, 5, 120, 5, 0, 0, 13075, 9023000, NULL, NULL, '2023-07-22', NULL, 59, NULL, 5);
INSERT INTO homenet.objekt (id, adress, antal_rum, storlek, vaning, hiss, balkong, manadsavgift, utgangspris, forsaljningspris, maklararvode, saljstart, avslutat, saljare, kopare, maklare) VALUES (64, 63, 1, 74, 5, 0, 0, 2022, 1646000, NULL, NULL, '2023-08-06', NULL, 116, NULL, 8);
INSERT INTO homenet.objekt (id, adress, antal_rum, storlek, vaning, hiss, balkong, manadsavgift, utgangspris, forsaljningspris, maklararvode, saljstart, avslutat, saljare, kopare, maklare) VALUES (71, 12, 2, 80, 3, 0, 1, 8124, 9938000, NULL, NULL, '2023-06-18', NULL, 10, NULL, 3);
INSERT INTO homenet.objekt (id, adress, antal_rum, storlek, vaning, hiss, balkong, manadsavgift, utgangspris, forsaljningspris, maklararvode, saljstart, avslutat, saljare, kopare, maklare) VALUES (183, 17, 2, 79, 4, 0, 0, 10176, 16283500, NULL, NULL, '2023-09-09', NULL, 81, NULL, 8);
INSERT INTO homenet.objekt (id, adress, antal_rum, storlek, vaning, hiss, balkong, manadsavgift, utgangspris, forsaljningspris, maklararvode, saljstart, avslutat, saljare, kopare, maklare) VALUES (73, 49, 1, 40, 3, 1, 1, 2099, 3980000, NULL, NULL, '2023-03-05', NULL, 95, NULL, 8);
INSERT INTO homenet.objekt (id, adress, antal_rum, storlek, vaning, hiss, balkong, manadsavgift, utgangspris, forsaljningspris, maklararvode, saljstart, avslutat, saljare, kopare, maklare) VALUES (75, 30, 6, 180, 5, 0, 0, 8010, 2298500, NULL, NULL, '2023-09-25', NULL, 122, NULL, NULL);
INSERT INTO homenet.objekt (id, adress, antal_rum, storlek, vaning, hiss, balkong, manadsavgift, utgangspris, forsaljningspris, maklararvode, saljstart, avslutat, saljare, kopare, maklare) VALUES (77, 70, 5, 90, 3, 0, 0, 6037, 3923500, NULL, NULL, '2023-08-30', NULL, 70, NULL, NULL);
INSERT INTO homenet.objekt (id, adress, antal_rum, storlek, vaning, hiss, balkong, manadsavgift, utgangspris, forsaljningspris, maklararvode, saljstart, avslutat, saljare, kopare, maklare) VALUES (79, 96, 1, 38, 2, 0, 1, 5178, 6768000, NULL, NULL, '2023-06-07', NULL, 114, NULL, 5);
INSERT INTO homenet.objekt (id, adress, antal_rum, storlek, vaning, hiss, balkong, manadsavgift, utgangspris, forsaljningspris, maklararvode, saljstart, avslutat, saljare, kopare, maklare) VALUES (81, 92, 2, 80, 6, 1, 1, 9019, 1870500, NULL, NULL, '2023-07-01', NULL, 108, NULL, 9);
INSERT INTO homenet.objekt (id, adress, antal_rum, storlek, vaning, hiss, balkong, manadsavgift, utgangspris, forsaljningspris, maklararvode, saljstart, avslutat, saljare, kopare, maklare) VALUES (84, 3, 2, 93, 2, 1, 1, 6083, 9127500, NULL, NULL, '2023-04-10', NULL, 129, NULL, 9);
INSERT INTO homenet.objekt (id, adress, antal_rum, storlek, vaning, hiss, balkong, manadsavgift, utgangspris, forsaljningspris, maklararvode, saljstart, avslutat, saljare, kopare, maklare) VALUES (87, 15, 3, 119, 2, 1, 0, 8117, 16394500, NULL, NULL, '2023-02-20', NULL, 96, NULL, NULL);
INSERT INTO homenet.objekt (id, adress, antal_rum, storlek, vaning, hiss, balkong, manadsavgift, utgangspris, forsaljningspris, maklararvode, saljstart, avslutat, saljare, kopare, maklare) VALUES (89, 63, 1, 40, 3, 0, 1, 7056, 2270000, NULL, NULL, '2023-10-30', NULL, 145, NULL, 9);
INSERT INTO homenet.objekt (id, adress, antal_rum, storlek, vaning, hiss, balkong, manadsavgift, utgangspris, forsaljningspris, maklararvode, saljstart, avslutat, saljare, kopare, maklare) VALUES (93, 97, 2, 93, 4, 1, 1, 9086, 9416500, NULL, NULL, '2023-12-08', NULL, 90, NULL, 1);
INSERT INTO homenet.objekt (id, adress, antal_rum, storlek, vaning, hiss, balkong, manadsavgift, utgangspris, forsaljningspris, maklararvode, saljstart, avslutat, saljare, kopare, maklare) VALUES (96, 93, 1, 70, 6, 0, 0, 3114, 9401000, NULL, NULL, '2022-12-16', NULL, 113, NULL, NULL);
INSERT INTO homenet.objekt (id, adress, antal_rum, storlek, vaning, hiss, balkong, manadsavgift, utgangspris, forsaljningspris, maklararvode, saljstart, avslutat, saljare, kopare, maklare) VALUES (101, 76, 3, 128, 5, 0, 1, 8101, 12947000, NULL, NULL, '2023-02-20', NULL, 134, NULL, 1);
INSERT INTO homenet.objekt (id, adress, antal_rum, storlek, vaning, hiss, balkong, manadsavgift, utgangspris, forsaljningspris, maklararvode, saljstart, avslutat, saljare, kopare, maklare) VALUES (106, 64, 5, 83, 6, 0, 0, 11136, 11330000, NULL, NULL, '2023-06-04', NULL, 23, NULL, 10);
INSERT INTO homenet.objekt (id, adress, antal_rum, storlek, vaning, hiss, balkong, manadsavgift, utgangspris, forsaljningspris, maklararvode, saljstart, avslutat, saljare, kopare, maklare) VALUES (108, 30, 2, 52, 3, 1, 0, 5187, 11397500, NULL, NULL, '2023-02-11', NULL, 67, NULL, 4);
INSERT INTO homenet.objekt (id, adress, antal_rum, storlek, vaning, hiss, balkong, manadsavgift, utgangspris, forsaljningspris, maklararvode, saljstart, avslutat, saljare, kopare, maklare) VALUES (112, 75, 1, 42, 5, 0, 1, 6351, 17265500, NULL, NULL, '2023-03-23', NULL, 93, NULL, 9);
INSERT INTO homenet.objekt (id, adress, antal_rum, storlek, vaning, hiss, balkong, manadsavgift, utgangspris, forsaljningspris, maklararvode, saljstart, avslutat, saljare, kopare, maklare) VALUES (119, 72, 1, 44, 2, 1, 1, 3330, 17005500, NULL, NULL, '2023-09-04', NULL, 89, NULL, 8);
INSERT INTO homenet.objekt (id, adress, antal_rum, storlek, vaning, hiss, balkong, manadsavgift, utgangspris, forsaljningspris, maklararvode, saljstart, avslutat, saljare, kopare, maklare) VALUES (127, 33, 2, 72, 4, 1, 1, 4097, 7016000, NULL, NULL, '2023-05-13', NULL, 137, NULL, 2);
INSERT INTO homenet.objekt (id, adress, antal_rum, storlek, vaning, hiss, balkong, manadsavgift, utgangspris, forsaljningspris, maklararvode, saljstart, avslutat, saljare, kopare, maklare) VALUES (129, 60, 4, 91, 3, 0, 1, 10023, 2544500, NULL, NULL, '2022-12-20', NULL, 85, NULL, 1);
INSERT INTO homenet.objekt (id, adress, antal_rum, storlek, vaning, hiss, balkong, manadsavgift, utgangspris, forsaljningspris, maklararvode, saljstart, avslutat, saljare, kopare, maklare) VALUES (133, 40, 5, 100, 2, 0, 1, 4092, 10861500, NULL, NULL, '2023-10-02', NULL, 43, NULL, 5);
INSERT INTO homenet.objekt (id, adress, antal_rum, storlek, vaning, hiss, balkong, manadsavgift, utgangspris, forsaljningspris, maklararvode, saljstart, avslutat, saljare, kopare, maklare) VALUES (136, 58, 3, 70, 3, 1, 1, 8026, 1889000, NULL, NULL, '2023-01-18', NULL, 104, NULL, 3);
INSERT INTO homenet.objekt (id, adress, antal_rum, storlek, vaning, hiss, balkong, manadsavgift, utgangspris, forsaljningspris, maklararvode, saljstart, avslutat, saljare, kopare, maklare) VALUES (147, 39, 2, 80, 5, 0, 0, 10012, 1220000, NULL, NULL, '2023-03-05', NULL, 26, NULL, 3);
INSERT INTO homenet.objekt (id, adress, antal_rum, storlek, vaning, hiss, balkong, manadsavgift, utgangspris, forsaljningspris, maklararvode, saljstart, avslutat, saljare, kopare, maklare) VALUES (148, 79, 3, 83, 1, 1, 0, 5100, 8359000, NULL, NULL, '2023-06-27', NULL, 159, NULL, 7);
INSERT INTO homenet.objekt (id, adress, antal_rum, storlek, vaning, hiss, balkong, manadsavgift, utgangspris, forsaljningspris, maklararvode, saljstart, avslutat, saljare, kopare, maklare) VALUES (155, 6, 4, 122, 4, 1, 0, 13046, 5705000, NULL, NULL, '2023-10-18', NULL, 4, NULL, 9);
INSERT INTO homenet.objekt (id, adress, antal_rum, storlek, vaning, hiss, balkong, manadsavgift, utgangspris, forsaljningspris, maklararvode, saljstart, avslutat, saljare, kopare, maklare) VALUES (157, 54, 4, 120, 5, 1, 0, 10122, 14657000, NULL, NULL, '2023-08-05', NULL, 72, NULL, 2);
INSERT INTO homenet.objekt (id, adress, antal_rum, storlek, vaning, hiss, balkong, manadsavgift, utgangspris, forsaljningspris, maklararvode, saljstart, avslutat, saljare, kopare, maklare) VALUES (164, 77, 5, 76, 6, 1, 1, 3033, 2569000, NULL, NULL, '2023-04-09', NULL, 158, NULL, 7);
INSERT INTO homenet.objekt (id, adress, antal_rum, storlek, vaning, hiss, balkong, manadsavgift, utgangspris, forsaljningspris, maklararvode, saljstart, avslutat, saljare, kopare, maklare) VALUES (165, 42, 6, 180, 5, 1, 1, 9056, 12023500, NULL, NULL, '2022-12-08', NULL, 184, NULL, 9);
INSERT INTO homenet.objekt (id, adress, antal_rum, storlek, vaning, hiss, balkong, manadsavgift, utgangspris, forsaljningspris, maklararvode, saljstart, avslutat, saljare, kopare, maklare) VALUES (166, 20, 5, 132, 3, 1, 0, 12080, 10574000, NULL, NULL, '2023-09-02', NULL, 97, NULL, 5);
INSERT INTO homenet.objekt (id, adress, antal_rum, storlek, vaning, hiss, balkong, manadsavgift, utgangspris, forsaljningspris, maklararvode, saljstart, avslutat, saljare, kopare, maklare) VALUES (169, 38, 5, 86, 3, 0, 0, 11053, 4601000, NULL, NULL, '2023-04-12', NULL, 63, NULL, 3);
INSERT INTO homenet.objekt (id, adress, antal_rum, storlek, vaning, hiss, balkong, manadsavgift, utgangspris, forsaljningspris, maklararvode, saljstart, avslutat, saljare, kopare, maklare) VALUES (170, 38, 3, 146, 2, 1, 0, 6040, 5934000, NULL, NULL, '2023-01-13', NULL, 5, NULL, 9);
INSERT INTO homenet.objekt (id, adress, antal_rum, storlek, vaning, hiss, balkong, manadsavgift, utgangspris, forsaljningspris, maklararvode, saljstart, avslutat, saljare, kopare, maklare) VALUES (177, 9, 3, 141, 3, 1, 1, 6051, 8459000, NULL, NULL, '2023-10-22', NULL, 91, NULL, 7);
INSERT INTO homenet.objekt (id, adress, antal_rum, storlek, vaning, hiss, balkong, manadsavgift, utgangspris, forsaljningspris, maklararvode, saljstart, avslutat, saljare, kopare, maklare) VALUES (180, 82, 4, 139, 2, 0, 0, 3018, 3038500, NULL, NULL, '2023-05-03', NULL, 26, NULL, 6);
INSERT INTO homenet.objekt (id, adress, antal_rum, storlek, vaning, hiss, balkong, manadsavgift, utgangspris, forsaljningspris, maklararvode, saljstart, avslutat, saljare, kopare, maklare) VALUES (181, 27, 3, 88, 4, 1, 0, 11135, 11917000, NULL, NULL, '2022-12-09', NULL, 25, NULL, 7);
INSERT INTO homenet.objekt (id, adress, antal_rum, storlek, vaning, hiss, balkong, manadsavgift, utgangspris, forsaljningspris, maklararvode, saljstart, avslutat, saljare, kopare, maklare) VALUES (191, 70, 4, 73, 6, 1, 0, 3054, 3978000, NULL, NULL, '2023-01-04', NULL, 50, NULL, NULL);
INSERT INTO homenet.objekt (id, adress, antal_rum, storlek, vaning, hiss, balkong, manadsavgift, utgangspris, forsaljningspris, maklararvode, saljstart, avslutat, saljare, kopare, maklare) VALUES (193, 86, 6, 138, 3, 1, 1, 9101, 13988000, NULL, NULL, '2023-03-22', NULL, 73, NULL, NULL);
INSERT INTO homenet.objekt (id, adress, antal_rum, storlek, vaning, hiss, balkong, manadsavgift, utgangspris, forsaljningspris, maklararvode, saljstart, avslutat, saljare, kopare, maklare) VALUES (194, 69, 2, 115, 1, 0, 0, 5063, 7299000, NULL, NULL, '2023-07-28', NULL, 144, NULL, 5);
INSERT INTO homenet.objekt (id, adress, antal_rum, storlek, vaning, hiss, balkong, manadsavgift, utgangspris, forsaljningspris, maklararvode, saljstart, avslutat, saljare, kopare, maklare) VALUES (195, 83, 6, 115, 3, 0, 1, 10098, 13275500, NULL, NULL, '2023-09-19', NULL, 69, NULL, 5);
INSERT INTO homenet.objekt (id, adress, antal_rum, storlek, vaning, hiss, balkong, manadsavgift, utgangspris, forsaljningspris, maklararvode, saljstart, avslutat, saljare, kopare, maklare) VALUES (162, 6, 3, 119, 1, 1, 0, 8079, 11037500, 11037500, 165563, '2022-12-29', '2023-01-23', 128, 149, 8);
INSERT INTO homenet.objekt (id, adress, antal_rum, storlek, vaning, hiss, balkong, manadsavgift, utgangspris, forsaljningspris, maklararvode, saljstart, avslutat, saljare, kopare, maklare) VALUES (163, 65, 2, 80, 1, 0, 1, 6078, 6310000, 7391500, NULL, '2023-01-17', '2023-10-10', 129, 29, NULL);
INSERT INTO homenet.objekt (id, adress, antal_rum, storlek, vaning, hiss, balkong, manadsavgift, utgangspris, forsaljningspris, maklararvode, saljstart, avslutat, saljare, kopare, maklare) VALUES (167, 10, 3, 127, 2, 0, 1, 3020, 2617000, 3075000, NULL, '2023-02-11', '2023-07-29', 109, 36, NULL);
INSERT INTO homenet.objekt (id, adress, antal_rum, storlek, vaning, hiss, balkong, manadsavgift, utgangspris, forsaljningspris, maklararvode, saljstart, avslutat, saljare, kopare, maklare) VALUES (168, 34, 2, 132, 4, 0, 1, 5015, 2386500, 2386500, 35798, '2023-07-03', '2023-10-23', 90, 87, 9);
INSERT INTO homenet.objekt (id, adress, antal_rum, storlek, vaning, hiss, balkong, manadsavgift, utgangspris, forsaljningspris, maklararvode, saljstart, avslutat, saljare, kopare, maklare) VALUES (171, 55, 3, 121, 3, 1, 0, 8065, 9305500, 9305500, NULL, '2023-06-17', '2023-09-14', 160, 110, NULL);
INSERT INTO homenet.objekt (id, adress, antal_rum, storlek, vaning, hiss, balkong, manadsavgift, utgangspris, forsaljningspris, maklararvode, saljstart, avslutat, saljare, kopare, maklare) VALUES (172, 52, 6, 165, 3, 1, 0, 5027, 4619000, 5433000, 81495, '2022-12-22', '2023-08-19', 11, 116, 5);
INSERT INTO homenet.objekt (id, adress, antal_rum, storlek, vaning, hiss, balkong, manadsavgift, utgangspris, forsaljningspris, maklararvode, saljstart, avslutat, saljare, kopare, maklare) VALUES (173, 81, 1, 38, 6, 1, 0, 9278, 10570000, 12371500, 185573, '2023-09-03', '2023-09-06', 45, 62, 9);
INSERT INTO homenet.objekt (id, adress, antal_rum, storlek, vaning, hiss, balkong, manadsavgift, utgangspris, forsaljningspris, maklararvode, saljstart, avslutat, saljare, kopare, maklare) VALUES (174, 96, 2, 80, 4, 1, 0, 4069, 6514000, 6514000, 97710, '2023-02-06', '2023-03-21', 74, 152, 3);
INSERT INTO homenet.objekt (id, adress, antal_rum, storlek, vaning, hiss, balkong, manadsavgift, utgangspris, forsaljningspris, maklararvode, saljstart, avslutat, saljare, kopare, maklare) VALUES (175, 69, 1, 29, 2, 1, 0, 7279, 9472500, 8092000, 121380, '2023-04-23', '2023-09-17', 163, 148, 4);
INSERT INTO homenet.objekt (id, adress, antal_rum, storlek, vaning, hiss, balkong, manadsavgift, utgangspris, forsaljningspris, maklararvode, saljstart, avslutat, saljare, kopare, maklare) VALUES (176, 17, 6, 113, 1, 1, 1, 11050, 5699000, 6698000, 100470, '2023-01-23', '2023-04-11', 7, 69, 9);
INSERT INTO homenet.objekt (id, adress, antal_rum, storlek, vaning, hiss, balkong, manadsavgift, utgangspris, forsaljningspris, maklararvode, saljstart, avslutat, saljare, kopare, maklare) VALUES (178, 82, 4, 139, 1, 0, 0, 10033, 4638000, 5445000, 81675, '2022-12-08', '2023-05-24', 173, 91, 7);
INSERT INTO homenet.objekt (id, adress, antal_rum, storlek, vaning, hiss, balkong, manadsavgift, utgangspris, forsaljningspris, maklararvode, saljstart, avslutat, saljare, kopare, maklare) VALUES (179, 21, 4, 92, 2, 1, 1, 4146, 13515000, 15832000, NULL, '2022-12-30', '2023-11-09', 143, 48, NULL);
INSERT INTO homenet.objekt (id, adress, antal_rum, storlek, vaning, hiss, balkong, manadsavgift, utgangspris, forsaljningspris, maklararvode, saljstart, avslutat, saljare, kopare, maklare) VALUES (182, 71, 3, 107, 4, 0, 0, 8080, 10099000, 8620000, 172400, '2023-05-12', '2023-07-16', 16, 74, 5);
INSERT INTO homenet.objekt (id, adress, antal_rum, storlek, vaning, hiss, balkong, manadsavgift, utgangspris, forsaljningspris, maklararvode, saljstart, avslutat, saljare, kopare, maklare) VALUES (184, 97, 6, 178, 5, 1, 1, 6007, 1261000, 1504000, 22560, '2023-09-30', '2023-09-30', 138, 92, 4);
INSERT INTO homenet.objekt (id, adress, antal_rum, storlek, vaning, hiss, balkong, manadsavgift, utgangspris, forsaljningspris, maklararvode, saljstart, avslutat, saljare, kopare, maklare) VALUES (185, 18, 6, 180, 3, 1, 0, 7066, 11910000, 13963000, 209445, '2023-02-10', '2023-04-19', 114, 119, 8);
INSERT INTO homenet.objekt (id, adress, antal_rum, storlek, vaning, hiss, balkong, manadsavgift, utgangspris, forsaljningspris, maklararvode, saljstart, avslutat, saljare, kopare, maklare) VALUES (186, 61, 3, 171, 3, 0, 1, 4066, 13332500, 13332500, 199988, '2023-04-25', '2023-09-30', 175, 2, 2);
INSERT INTO homenet.objekt (id, adress, antal_rum, storlek, vaning, hiss, balkong, manadsavgift, utgangspris, forsaljningspris, maklararvode, saljstart, avslutat, saljare, kopare, maklare) VALUES (187, 73, 4, 167, 4, 1, 1, 10037, 6336000, 7431000, 111465, '2023-03-30', '2023-05-16', 78, 2, 8);
INSERT INTO homenet.objekt (id, adress, antal_rum, storlek, vaning, hiss, balkong, manadsavgift, utgangspris, forsaljningspris, maklararvode, saljstart, avslutat, saljare, kopare, maklare) VALUES (188, 47, 3, 114, 5, 0, 1, 8058, 6637000, 7779000, 116685, '2023-03-11', '2023-07-03', 59, 114, 7);
INSERT INTO homenet.objekt (id, adress, antal_rum, storlek, vaning, hiss, balkong, manadsavgift, utgangspris, forsaljningspris, maklararvode, saljstart, avslutat, saljare, kopare, maklare) VALUES (189, 4, 5, 171, 5, 1, 1, 8049, 9884000, 9884000, 148260, '2023-03-02', '2023-08-30', 18, 48, 7);
INSERT INTO homenet.objekt (id, adress, antal_rum, storlek, vaning, hiss, balkong, manadsavgift, utgangspris, forsaljningspris, maklararvode, saljstart, avslutat, saljare, kopare, maklare) VALUES (190, 88, 1, 45, 3, 0, 0, 7306, 13798000, 16148000, 242220, '2022-12-16', '2023-09-22', 142, 22, 10);
INSERT INTO homenet.objekt (id, adress, antal_rum, storlek, vaning, hiss, balkong, manadsavgift, utgangspris, forsaljningspris, maklararvode, saljstart, avslutat, saljare, kopare, maklare) VALUES (192, 78, 5, 84, 4, 0, 0, 12097, 9614500, 9614500, 144218, '2023-07-26', '2023-10-26', 51, 121, 10);
INSERT INTO homenet.objekt (id, adress, antal_rum, storlek, vaning, hiss, balkong, manadsavgift, utgangspris, forsaljningspris, maklararvode, saljstart, avslutat, saljare, kopare, maklare) VALUES (196, 83, 5, 150, 3, 0, 1, 12045, 8049000, 6859000, 102885, '2023-02-18', '2023-03-05', 30, 3, 3);
INSERT INTO homenet.objekt (id, adress, antal_rum, storlek, vaning, hiss, balkong, manadsavgift, utgangspris, forsaljningspris, maklararvode, saljstart, avslutat, saljare, kopare, maklare) VALUES (197, 43, 5, 150, 6, 1, 1, 7013, 2048000, 2420000, 36300, '2022-12-11', '2023-06-27', 82, 102, 1);
INSERT INTO homenet.objekt (id, adress, antal_rum, storlek, vaning, hiss, balkong, manadsavgift, utgangspris, forsaljningspris, maklararvode, saljstart, avslutat, saljare, kopare, maklare) VALUES (198, 47, 5, 143, 3, 1, 0, 13059, 9944500, 9944500, 149168, '2023-04-10', '2023-11-28', 153, 58, 8);
INSERT INTO homenet.objekt (id, adress, antal_rum, storlek, vaning, hiss, balkong, manadsavgift, utgangspris, forsaljningspris, maklararvode, saljstart, avslutat, saljare, kopare, maklare) VALUES (199, 99, 2, 141, 5, 1, 0, 6004, 680000, 803000, 12045, '2023-03-01', '2023-05-24', 140, 106, 2);
INSERT INTO homenet.objekt (id, adress, antal_rum, storlek, vaning, hiss, balkong, manadsavgift, utgangspris, forsaljningspris, maklararvode, saljstart, avslutat, saljare, kopare, maklare) VALUES (200, 72, 2, 80, 5, 1, 1, 8098, 7858000, 9203000, 138045, '2023-05-03', '2023-06-03', 109, 63, 10);


--
-- Data for Name: personer; Type: TABLE DATA; Schema: homenet; Owner: postgres
--

INSERT INTO homenet.personer (id, email, fornamn, efternamn, personnr, telefonnr, adress) VALUES (1, 'mwudeland0@drupal.org', 'Danièle', 'Wudeland', '1997-12-19', '3114705221', 102);
INSERT INTO homenet.personer (id, email, fornamn, efternamn, personnr, telefonnr, adress) VALUES (2, 'jprayer1@wordpress.org', 'Zoé', 'Prayer', '1958-02-26', '6162426013', 104);
INSERT INTO homenet.personer (id, email, fornamn, efternamn, personnr, telefonnr, adress) VALUES (3, 'hdimmick2@epa.gov', 'Thérèse', 'Dimmick', '1988-07-25', '5095529405', 106);
INSERT INTO homenet.personer (id, email, fornamn, efternamn, personnr, telefonnr, adress) VALUES (4, 'scuddehay3@delicious.com', 'Noémie', 'Cuddehay', '1962-08-23', '3451506020', 108);
INSERT INTO homenet.personer (id, email, fornamn, efternamn, personnr, telefonnr, adress) VALUES (5, 'ycheley4@shop-pro.jp', 'André', 'Cheley', '1976-12-26', '6175439945', 110);
INSERT INTO homenet.personer (id, email, fornamn, efternamn, personnr, telefonnr, adress) VALUES (6, 'nrobbs5@discuz.net', 'Mén', 'Robbs', '1981-09-02', '4494894376', 112);
INSERT INTO homenet.personer (id, email, fornamn, efternamn, personnr, telefonnr, adress) VALUES (7, 'lrebichon6@dagondesign.com', 'Lyséa', 'Rebichon', '1959-11-14', '4066031919', 114);
INSERT INTO homenet.personer (id, email, fornamn, efternamn, personnr, telefonnr, adress) VALUES (8, 'hbastin7@sitemeter.com', 'Eléonore', 'Bastin', '1994-12-10', '5618415738', 116);
INSERT INTO homenet.personer (id, email, fornamn, efternamn, personnr, telefonnr, adress) VALUES (9, 'ttenniswood8@umn.edu', 'Léonore', 'Tenniswood', '1968-09-10', '5243553865', 118);
INSERT INTO homenet.personer (id, email, fornamn, efternamn, personnr, telefonnr, adress) VALUES (10, 'smonahan9@webnode.com', 'Lén', 'Monahan', '1961-07-11', '7885835122', 120);
INSERT INTO homenet.personer (id, email, fornamn, efternamn, personnr, telefonnr, adress) VALUES (11, 'rbeardsa@istockphoto.com', 'Andréa', 'Beards', '1986-12-16', '8804067399', 122);
INSERT INTO homenet.personer (id, email, fornamn, efternamn, personnr, telefonnr, adress) VALUES (12, 'acoodeb@businessweek.com', 'Maïlis', 'Coode', '1953-06-28', '7044216588', 124);
INSERT INTO homenet.personer (id, email, fornamn, efternamn, personnr, telefonnr, adress) VALUES (13, 'mmcewenc@addthis.com', 'Intéressant', 'McEwen', '1981-11-17', '9827984352', 126);
INSERT INTO homenet.personer (id, email, fornamn, efternamn, personnr, telefonnr, adress) VALUES (14, 'cmccrained@pbs.org', 'Athéna', 'McCraine', '1971-01-22', '1277117376', 128);
INSERT INTO homenet.personer (id, email, fornamn, efternamn, personnr, telefonnr, adress) VALUES (15, 'mhadnye@amazon.com', 'Françoise', 'Hadny', '1980-05-06', '5022107931', 130);
INSERT INTO homenet.personer (id, email, fornamn, efternamn, personnr, telefonnr, adress) VALUES (16, 'crummingsf@discuz.net', 'Yóu', 'Rummings', '1997-05-11', '8712897712', 132);
INSERT INTO homenet.personer (id, email, fornamn, efternamn, personnr, telefonnr, adress) VALUES (17, 'jmacgebenayg@nyu.edu', 'Tán', 'MacGebenay', '1978-02-28', '4165224746', 134);
INSERT INTO homenet.personer (id, email, fornamn, efternamn, personnr, telefonnr, adress) VALUES (18, 'kroggemanh@jigsy.com', 'Esbjörn', 'Roggeman', '1954-04-23', '8123485881', 136);
INSERT INTO homenet.personer (id, email, fornamn, efternamn, personnr, telefonnr, adress) VALUES (19, 'mturveyi@trellian.com', 'Mårten', 'Turvey', '1960-12-15', '5172726823', 138);
INSERT INTO homenet.personer (id, email, fornamn, efternamn, personnr, telefonnr, adress) VALUES (20, 'kkortj@ted.com', 'Léonie', 'Kort', '1976-03-10', '5851817117', 140);
INSERT INTO homenet.personer (id, email, fornamn, efternamn, personnr, telefonnr, adress) VALUES (21, 'kmcquorkelk@squidoo.com', 'Maëlann', 'McQuorkel', '2002-02-07', '6847628378', 142);
INSERT INTO homenet.personer (id, email, fornamn, efternamn, personnr, telefonnr, adress) VALUES (22, 'ebraganzal@xrea.com', 'Styrbjörn', 'Braganza', '1972-09-22', '5127265754', 144);
INSERT INTO homenet.personer (id, email, fornamn, efternamn, personnr, telefonnr, adress) VALUES (23, 'oapplebeem@goo.ne.jp', 'Marylène', 'Applebee', '1989-09-30', '8577668219', 146);
INSERT INTO homenet.personer (id, email, fornamn, efternamn, personnr, telefonnr, adress) VALUES (24, 'dgreggsn@goodreads.com', 'Cunégonde', 'Greggs', '1974-02-17', '1024427271', 148);
INSERT INTO homenet.personer (id, email, fornamn, efternamn, personnr, telefonnr, adress) VALUES (25, 'agundersono@typepad.com', 'Félicie', 'Gunderson', '1977-04-07', '7488215719', 150);
INSERT INTO homenet.personer (id, email, fornamn, efternamn, personnr, telefonnr, adress) VALUES (26, 'dcarbinep@go.com', 'Håkan', 'Carbine', '1977-06-03', '9891715383', 152);
INSERT INTO homenet.personer (id, email, fornamn, efternamn, personnr, telefonnr, adress) VALUES (27, 'lwatsonbrownq@springer.com', 'Crééz', 'Watson-Brown', '1962-04-17', '7605514989', 154);
INSERT INTO homenet.personer (id, email, fornamn, efternamn, personnr, telefonnr, adress) VALUES (28, 'ahuffar@ed.gov', 'Måns', 'Huffa', '1966-10-20', '8806171335', 156);
INSERT INTO homenet.personer (id, email, fornamn, efternamn, personnr, telefonnr, adress) VALUES (29, 'gcromwells@cocolog-nifty.com', 'Esbjörn', 'Cromwell', '1999-08-07', '7828698968', 158);
INSERT INTO homenet.personer (id, email, fornamn, efternamn, personnr, telefonnr, adress) VALUES (30, 'comonahant@loc.gov', 'Kallisté', 'O''Monahan', '1976-10-03', '8559227347', 160);
INSERT INTO homenet.personer (id, email, fornamn, efternamn, personnr, telefonnr, adress) VALUES (31, 'mgummu@dailymail.co.uk', 'Edmée', 'Gumm', '1967-10-23', '4629525924', 162);
INSERT INTO homenet.personer (id, email, fornamn, efternamn, personnr, telefonnr, adress) VALUES (32, 'vlowthianv@washington.edu', 'Océanne', 'Lowthian', '1997-11-29', '7619832072', 164);
INSERT INTO homenet.personer (id, email, fornamn, efternamn, personnr, telefonnr, adress) VALUES (33, 'smcnyschew@over-blog.com', 'Geneviève', 'McNysche', '1972-01-26', '5542767046', 166);
INSERT INTO homenet.personer (id, email, fornamn, efternamn, personnr, telefonnr, adress) VALUES (34, 'maldredx@drupal.org', 'Félicie', 'Aldred', '1961-07-21', '8391125722', 168);
INSERT INTO homenet.personer (id, email, fornamn, efternamn, personnr, telefonnr, adress) VALUES (35, 'pshallcrassy@jugem.jp', 'Océanne', 'Shallcrass', '1977-12-18', '7547004892', 170);
INSERT INTO homenet.personer (id, email, fornamn, efternamn, personnr, telefonnr, adress) VALUES (36, 'jdaskiewiczz@quantcast.com', 'Ophélie', 'Daskiewicz', '1987-01-07', '3076149355', 172);
INSERT INTO homenet.personer (id, email, fornamn, efternamn, personnr, telefonnr, adress) VALUES (37, 'mmacsherry10@thetimes.co.uk', 'Hélène', 'MacSherry', '1996-05-17', '2644020926', 174);
INSERT INTO homenet.personer (id, email, fornamn, efternamn, personnr, telefonnr, adress) VALUES (38, 'canderl11@merriam-webster.com', 'Bénédicte', 'Anderl', '1987-06-08', '3168342947', 176);
INSERT INTO homenet.personer (id, email, fornamn, efternamn, personnr, telefonnr, adress) VALUES (39, 'amungin12@over-blog.com', 'Lorène', 'Mungin', '1960-04-18', '9799033641', 178);
INSERT INTO homenet.personer (id, email, fornamn, efternamn, personnr, telefonnr, adress) VALUES (40, 'efaughny13@boston.com', 'Eléonore', 'Faughny', '1977-06-27', '5114494227', 180);
INSERT INTO homenet.personer (id, email, fornamn, efternamn, personnr, telefonnr, adress) VALUES (41, 'bcreak14@mashable.com', 'Naëlle', 'Creak', '1993-07-01', '6457200546', 182);
INSERT INTO homenet.personer (id, email, fornamn, efternamn, personnr, telefonnr, adress) VALUES (42, 'dgrosier15@wikia.com', 'Daphnée', 'Grosier', '1983-06-09', '6717371466', 184);
INSERT INTO homenet.personer (id, email, fornamn, efternamn, personnr, telefonnr, adress) VALUES (43, 'jheinemann16@alexa.com', 'Océanne', 'Heinemann', '1957-03-20', '8263617054', 186);
INSERT INTO homenet.personer (id, email, fornamn, efternamn, personnr, telefonnr, adress) VALUES (44, 'mcollister17@mtv.com', 'Nuó', 'Collister', '1985-04-20', '3801225383', 188);
INSERT INTO homenet.personer (id, email, fornamn, efternamn, personnr, telefonnr, adress) VALUES (45, 'mbrewis18@nbcnews.com', 'Uò', 'Brewis', '1989-01-13', '6345845849', 190);
INSERT INTO homenet.personer (id, email, fornamn, efternamn, personnr, telefonnr, adress) VALUES (46, 'kkeeling19@eventbrite.com', 'Naëlle', 'Keeling', '1970-12-08', '3334155654', 192);
INSERT INTO homenet.personer (id, email, fornamn, efternamn, personnr, telefonnr, adress) VALUES (47, 'jwoodcroft1a@fda.gov', 'Loïs', 'Woodcroft', '1950-10-01', '1381833600', 194);
INSERT INTO homenet.personer (id, email, fornamn, efternamn, personnr, telefonnr, adress) VALUES (48, 'kalderwick1b@npr.org', 'Judicaël', 'Alderwick', '1983-03-09', '2921729995', 9);
INSERT INTO homenet.personer (id, email, fornamn, efternamn, personnr, telefonnr, adress) VALUES (49, 'sarguile1c@tiny.cc', 'Méghane', 'Arguile', '1961-05-09', '4462138229', 198);
INSERT INTO homenet.personer (id, email, fornamn, efternamn, personnr, telefonnr, adress) VALUES (50, 'bbaker1d@hp.com', 'Sélène', 'Baker', '1951-08-16', '4018322919', 100);
INSERT INTO homenet.personer (id, email, fornamn, efternamn, personnr, telefonnr, adress) VALUES (51, 'ssandal1e@drupal.org', 'Zhì', 'Sandal', '1975-08-25', '3452752508', 102);
INSERT INTO homenet.personer (id, email, fornamn, efternamn, personnr, telefonnr, adress) VALUES (52, 'rbeton1f@sakura.ne.jp', 'Ruò', 'Beton', '1998-09-12', '9276694589', 104);
INSERT INTO homenet.personer (id, email, fornamn, efternamn, personnr, telefonnr, adress) VALUES (53, 'rleebeter1g@shop-pro.jp', 'Jú', 'Leebeter', '1992-09-28', '5285090019', 106);
INSERT INTO homenet.personer (id, email, fornamn, efternamn, personnr, telefonnr, adress) VALUES (54, 'rbrownsall1h@weebly.com', 'Gaïa', 'Brownsall', '1956-12-25', '3846767970', 69);
INSERT INTO homenet.personer (id, email, fornamn, efternamn, personnr, telefonnr, adress) VALUES (55, 'gvasilik1i@wikipedia.org', 'Marie-hélène', 'Vasilik', '1988-12-01', '3675772888', 110);
INSERT INTO homenet.personer (id, email, fornamn, efternamn, personnr, telefonnr, adress) VALUES (56, 'dthain1j@csmonitor.com', 'Styrbjörn', 'Thain', '1953-07-12', '5077143792', 112);
INSERT INTO homenet.personer (id, email, fornamn, efternamn, personnr, telefonnr, adress) VALUES (57, 'chartil1k@apple.com', 'Noëlla', 'Hartil', '2000-10-23', '2898114960', 114);
INSERT INTO homenet.personer (id, email, fornamn, efternamn, personnr, telefonnr, adress) VALUES (58, 'btrinke1l@tinypic.com', 'Méthode', 'Trinke', '1967-06-19', '1216044154', 116);
INSERT INTO homenet.personer (id, email, fornamn, efternamn, personnr, telefonnr, adress) VALUES (59, 'mzywicki1m@addtoany.com', 'Lyséa', 'Zywicki', '1954-02-21', '4864618679', 118);
INSERT INTO homenet.personer (id, email, fornamn, efternamn, personnr, telefonnr, adress) VALUES (60, 'cnapton1n@mayoclinic.com', 'Ophélie', 'Napton', '1956-07-21', '1216605614', 84);
INSERT INTO homenet.personer (id, email, fornamn, efternamn, personnr, telefonnr, adress) VALUES (61, 'bkeble1o@wikispaces.com', 'Mégane', 'Keble', '1955-05-02', '1566494634', 122);
INSERT INTO homenet.personer (id, email, fornamn, efternamn, personnr, telefonnr, adress) VALUES (62, 'jdeighan1p@webeden.co.uk', 'Liè', 'Deighan', '1993-08-31', '5094574969', 124);
INSERT INTO homenet.personer (id, email, fornamn, efternamn, personnr, telefonnr, adress) VALUES (63, 'spallis1q@opensource.org', 'Gisèle', 'Pallis', '1986-01-27', '9477702761', 126);
INSERT INTO homenet.personer (id, email, fornamn, efternamn, personnr, telefonnr, adress) VALUES (64, 'jkorneichuk1r@discuz.net', 'Yè', 'Korneichuk', '1993-12-02', '4311166825', 128);
INSERT INTO homenet.personer (id, email, fornamn, efternamn, personnr, telefonnr, adress) VALUES (65, 'dcoleiro1s@blogs.com', 'Thérèsa', 'Coleiro', '1973-05-16', '2536996634', 130);
INSERT INTO homenet.personer (id, email, fornamn, efternamn, personnr, telefonnr, adress) VALUES (66, 'wdreamer1t@abc.net.au', 'Lauréna', 'Dreamer', '1996-09-19', '8914712559', 132);
INSERT INTO homenet.personer (id, email, fornamn, efternamn, personnr, telefonnr, adress) VALUES (67, 'eccomini1u@hc360.com', 'Agnès', 'Ccomini', '1984-01-01', '7888188103', 134);
INSERT INTO homenet.personer (id, email, fornamn, efternamn, personnr, telefonnr, adress) VALUES (68, 'sivins1v@unesco.org', 'Léana', 'Ivins', '1950-03-29', '2936826237', 136);
INSERT INTO homenet.personer (id, email, fornamn, efternamn, personnr, telefonnr, adress) VALUES (69, 'chembery1w@xinhuanet.com', 'Josée', 'Hembery', '1975-11-02', '2077361522', 138);
INSERT INTO homenet.personer (id, email, fornamn, efternamn, personnr, telefonnr, adress) VALUES (70, 'ebatterbee1x@latimes.com', 'Hélène', 'Batterbee', '1955-11-17', '8932501913', 140);
INSERT INTO homenet.personer (id, email, fornamn, efternamn, personnr, telefonnr, adress) VALUES (71, 'eflemmich1y@boston.com', 'Gwenaëlle', 'Flemmich', '1973-09-12', '2487989132', 142);
INSERT INTO homenet.personer (id, email, fornamn, efternamn, personnr, telefonnr, adress) VALUES (72, 'kdenerley1z@microsoft.com', 'Yú', 'Denerley', '1985-11-27', '3923115732', 144);
INSERT INTO homenet.personer (id, email, fornamn, efternamn, personnr, telefonnr, adress) VALUES (73, 'omohammed20@netscape.com', 'Léone', 'Mohammed', '1982-06-26', '5226982867', 146);
INSERT INTO homenet.personer (id, email, fornamn, efternamn, personnr, telefonnr, adress) VALUES (74, 'bchurch21@joomla.org', 'Aloïs', 'Church', '1974-09-08', '5696576897', 148);
INSERT INTO homenet.personer (id, email, fornamn, efternamn, personnr, telefonnr, adress) VALUES (75, 'smacknish22@weebly.com', 'Dafnée', 'Macknish', '1996-09-04', '9402787276', 150);
INSERT INTO homenet.personer (id, email, fornamn, efternamn, personnr, telefonnr, adress) VALUES (76, 'pragg23@yahoo.co.jp', 'Naéva', 'Ragg', '1974-04-06', '4244025358', 152);
INSERT INTO homenet.personer (id, email, fornamn, efternamn, personnr, telefonnr, adress) VALUES (77, 'kpeddel24@imageshack.us', 'Néhémie', 'Peddel', '1981-03-14', '1938081425', 154);
INSERT INTO homenet.personer (id, email, fornamn, efternamn, personnr, telefonnr, adress) VALUES (78, 'csommerland25@fotki.com', 'Östen', 'Sommerland', '1952-03-17', '1892798297', 156);
INSERT INTO homenet.personer (id, email, fornamn, efternamn, personnr, telefonnr, adress) VALUES (79, 'cplanks26@privacy.gov.au', 'Andrée', 'Planks', '1975-08-31', '8991471990', 158);
INSERT INTO homenet.personer (id, email, fornamn, efternamn, personnr, telefonnr, adress) VALUES (80, 'lgwinnel27@forbes.com', 'Almérinda', 'Gwinnel', '1965-04-07', '8531338476', 160);
INSERT INTO homenet.personer (id, email, fornamn, efternamn, personnr, telefonnr, adress) VALUES (81, 'ajouannisson28@jiathis.com', 'Marie-françoise', 'Jouannisson', '1967-12-17', '7341848820', 162);
INSERT INTO homenet.personer (id, email, fornamn, efternamn, personnr, telefonnr, adress) VALUES (82, 'cfitchett29@mlb.com', 'Audréanne', 'Fitchett', '1956-05-03', '7081064055', 164);
INSERT INTO homenet.personer (id, email, fornamn, efternamn, personnr, telefonnr, adress) VALUES (83, 'kmccreadie2a@prlog.org', 'Maïwenn', 'McCreadie', '1973-12-07', '1003522299', 166);
INSERT INTO homenet.personer (id, email, fornamn, efternamn, personnr, telefonnr, adress) VALUES (84, 'tcorringham2b@last.fm', 'Marie-josée', 'Corringham', '1990-05-13', '5752736214', 168);
INSERT INTO homenet.personer (id, email, fornamn, efternamn, personnr, telefonnr, adress) VALUES (85, 'rsimo2c@guardian.co.uk', 'Océane', 'Simo', '1965-09-13', '8076131600', 170);
INSERT INTO homenet.personer (id, email, fornamn, efternamn, personnr, telefonnr, adress) VALUES (86, 'ddrewitt2d@goo.ne.jp', 'Zhì', 'Drewitt', '1957-11-17', '2705604822', 172);
INSERT INTO homenet.personer (id, email, fornamn, efternamn, personnr, telefonnr, adress) VALUES (87, 'aomohun2e@dropbox.com', 'Vérane', 'O''Mohun', '1975-08-08', '1196961678', 55);
INSERT INTO homenet.personer (id, email, fornamn, efternamn, personnr, telefonnr, adress) VALUES (88, 'mvautier2f@washington.edu', 'Léonie', 'Vautier', '1971-02-16', '1451696173', 176);
INSERT INTO homenet.personer (id, email, fornamn, efternamn, personnr, telefonnr, adress) VALUES (89, 'mlievesley2g@dagondesign.com', 'Méthode', 'Lievesley', '1970-04-14', '9883825448', 178);
INSERT INTO homenet.personer (id, email, fornamn, efternamn, personnr, telefonnr, adress) VALUES (90, 'zwyllt2h@discuz.net', 'Vénus', 'Wyllt', '1974-11-11', '4925380484', 180);
INSERT INTO homenet.personer (id, email, fornamn, efternamn, personnr, telefonnr, adress) VALUES (91, 'echild2i@xing.com', 'Océane', 'Child', '1965-10-06', '5689697541', 182);
INSERT INTO homenet.personer (id, email, fornamn, efternamn, personnr, telefonnr, adress) VALUES (92, 'hcordner2j@wired.com', 'Eliès', 'Cordner', '1969-04-09', '7639071218', 184);
INSERT INTO homenet.personer (id, email, fornamn, efternamn, personnr, telefonnr, adress) VALUES (93, 'tgullan2k@mapquest.com', 'Daphnée', 'Gullan', '1975-12-12', '8847594677', 186);
INSERT INTO homenet.personer (id, email, fornamn, efternamn, personnr, telefonnr, adress) VALUES (94, 'larnault2l@ihg.com', 'Gaétane', 'Arnault', '1952-03-11', '3888120287', 188);
INSERT INTO homenet.personer (id, email, fornamn, efternamn, personnr, telefonnr, adress) VALUES (95, 'mmcilwraith2m@yahoo.com', 'Joséphine', 'McIlwraith', '1989-07-13', '5201237939', 190);
INSERT INTO homenet.personer (id, email, fornamn, efternamn, personnr, telefonnr, adress) VALUES (96, 'gsunter2n@tamu.edu', 'Vénus', 'Sunter', '1970-11-23', '4812462210', 192);
INSERT INTO homenet.personer (id, email, fornamn, efternamn, personnr, telefonnr, adress) VALUES (97, 'aolpin2o@free.fr', 'Esbjörn', 'Olpin', '1965-08-23', '7044663701', 194);
INSERT INTO homenet.personer (id, email, fornamn, efternamn, personnr, telefonnr, adress) VALUES (98, 'porchard2p@cbslocal.com', 'Kù', 'Orchard', '1982-06-24', '5628349943', 196);
INSERT INTO homenet.personer (id, email, fornamn, efternamn, personnr, telefonnr, adress) VALUES (99, 'mmatejic2q@mail.ru', 'Åsa', 'Matejic', '1996-12-25', '6797637342', 198);
INSERT INTO homenet.personer (id, email, fornamn, efternamn, personnr, telefonnr, adress) VALUES (100, 'lhabbon2r@list-manage.com', 'Håkan', 'Habbon', '1981-05-02', '8822935581', 105);
INSERT INTO homenet.personer (id, email, fornamn, efternamn, personnr, telefonnr, adress) VALUES (101, 'krouzet2s@techcrunch.com', 'Naëlle', 'Rouzet', '1992-08-01', '5736471737', 150);
INSERT INTO homenet.personer (id, email, fornamn, efternamn, personnr, telefonnr, adress) VALUES (102, 'ctulloch2t@wiley.com', 'Clémentine', 'Tulloch', '1988-08-11', '9995888835', 151);
INSERT INTO homenet.personer (id, email, fornamn, efternamn, personnr, telefonnr, adress) VALUES (103, 'klagneaux2u@free.fr', 'Estève', 'Lagneaux', '1952-05-06', '3988096871', 151);
INSERT INTO homenet.personer (id, email, fornamn, efternamn, personnr, telefonnr, adress) VALUES (104, 'rdunthorn2v@alexa.com', 'Erwéi', 'Dunthorn', '1958-04-02', '8063500823', 152);
INSERT INTO homenet.personer (id, email, fornamn, efternamn, personnr, telefonnr, adress) VALUES (105, 'pderham2w@nifty.com', 'Zoé', 'Derham', '1982-09-28', '7392069591', 152);
INSERT INTO homenet.personer (id, email, fornamn, efternamn, personnr, telefonnr, adress) VALUES (106, 'bbicksteth2x@cyberchimps.com', 'Sòng', 'Bicksteth', '1970-10-30', '8187355151', 153);
INSERT INTO homenet.personer (id, email, fornamn, efternamn, personnr, telefonnr, adress) VALUES (107, 'eosbaldstone2y@mlb.com', 'Marie-noël', 'Osbaldstone', '1976-05-11', '3178324649', 153);
INSERT INTO homenet.personer (id, email, fornamn, efternamn, personnr, telefonnr, adress) VALUES (108, 'tshearn2z@printfriendly.com', 'Åke', 'Shearn', '1978-01-31', '7664048781', 154);
INSERT INTO homenet.personer (id, email, fornamn, efternamn, personnr, telefonnr, adress) VALUES (109, 'jgregore30@goo.ne.jp', 'Geneviève', 'Gregore', '1953-02-23', '4618406556', 154);
INSERT INTO homenet.personer (id, email, fornamn, efternamn, personnr, telefonnr, adress) VALUES (110, 'tturbard31@is.gd', 'Lauréna', 'Turbard', '1983-05-01', '3527835336', 155);
INSERT INTO homenet.personer (id, email, fornamn, efternamn, personnr, telefonnr, adress) VALUES (111, 'bivashin32@wikipedia.org', 'Géraldine', 'Ivashin', '1961-04-16', '8744472192', 155);
INSERT INTO homenet.personer (id, email, fornamn, efternamn, personnr, telefonnr, adress) VALUES (112, 'wscrannage33@marketwatch.com', 'Cléa', 'Scrannage', '1987-04-23', '2655498624', 156);
INSERT INTO homenet.personer (id, email, fornamn, efternamn, personnr, telefonnr, adress) VALUES (113, 'khollyman34@cbslocal.com', 'Mélodie', 'Hollyman', '1996-10-13', '9724104871', 156);
INSERT INTO homenet.personer (id, email, fornamn, efternamn, personnr, telefonnr, adress) VALUES (114, 'ccostain35@so-net.ne.jp', 'Lèi', 'Costain', '1973-08-22', '3418734531', 157);
INSERT INTO homenet.personer (id, email, fornamn, efternamn, personnr, telefonnr, adress) VALUES (115, 'pgillow36@163.com', 'Pål', 'Gillow', '1966-08-29', '4138317909', 157);
INSERT INTO homenet.personer (id, email, fornamn, efternamn, personnr, telefonnr, adress) VALUES (116, 'zleuchars37@blogspot.com', 'Eugénie', 'Leuchars', '1995-09-24', '3828924132', 158);
INSERT INTO homenet.personer (id, email, fornamn, efternamn, personnr, telefonnr, adress) VALUES (117, 'cthirst38@hibu.com', 'Andréanne', 'Thirst', '1993-10-04', '3513734376', 158);
INSERT INTO homenet.personer (id, email, fornamn, efternamn, personnr, telefonnr, adress) VALUES (118, 'bkaradzas39@gmpg.org', 'Yáo', 'Karadzas', '1976-02-07', '3084817856', 159);
INSERT INTO homenet.personer (id, email, fornamn, efternamn, personnr, telefonnr, adress) VALUES (119, 'vhastwell3a@ow.ly', 'Maïlis', 'Hastwell', '1962-09-24', '7184325952', 159);
INSERT INTO homenet.personer (id, email, fornamn, efternamn, personnr, telefonnr, adress) VALUES (120, 'rdinehart3b@taobao.com', 'Médiamass', 'Dine-Hart', '1959-10-24', '5448178935', 3);
INSERT INTO homenet.personer (id, email, fornamn, efternamn, personnr, telefonnr, adress) VALUES (121, 'tclist3c@examiner.com', 'Judicaël', 'Clist', '1957-12-30', '4807990691', 160);
INSERT INTO homenet.personer (id, email, fornamn, efternamn, personnr, telefonnr, adress) VALUES (122, 'wbasden3d@1und1.de', 'Gaëlle', 'Basden', '1975-12-30', '3283828526', 161);
INSERT INTO homenet.personer (id, email, fornamn, efternamn, personnr, telefonnr, adress) VALUES (123, 'rmartino3e@mail.ru', 'Marie-françoise', 'Martino', '2001-03-13', '5204571803', 161);
INSERT INTO homenet.personer (id, email, fornamn, efternamn, personnr, telefonnr, adress) VALUES (124, 'pmoro3f@meetup.com', 'Lorène', 'Moro', '1997-11-14', '1567005441', 9);
INSERT INTO homenet.personer (id, email, fornamn, efternamn, personnr, telefonnr, adress) VALUES (125, 'hlebosse3g@nytimes.com', 'Sélène', 'Le Bosse', '1962-05-12', '7323922821', 162);
INSERT INTO homenet.personer (id, email, fornamn, efternamn, personnr, telefonnr, adress) VALUES (126, 'cloosmore3h@ftc.gov', 'Lorène', 'Loosmore', '1995-06-10', '6352961826', 163);
INSERT INTO homenet.personer (id, email, fornamn, efternamn, personnr, telefonnr, adress) VALUES (127, 'cbascombe3i@nyu.edu', 'Nadège', 'Bascombe', '1952-12-11', '5827736845', 163);
INSERT INTO homenet.personer (id, email, fornamn, efternamn, personnr, telefonnr, adress) VALUES (128, 'hbater3j@pbs.org', 'Yénora', 'Bater', '1995-04-06', '7935939855', 164);
INSERT INTO homenet.personer (id, email, fornamn, efternamn, personnr, telefonnr, adress) VALUES (129, 'scrossfield3k@360.cn', 'Naéva', 'Crossfield', '1983-12-29', '1588970367', 164);
INSERT INTO homenet.personer (id, email, fornamn, efternamn, personnr, telefonnr, adress) VALUES (130, 'rgwatkins3l@163.com', 'Stéphanie', 'Gwatkins', '1987-04-19', '9734505823', 165);
INSERT INTO homenet.personer (id, email, fornamn, efternamn, personnr, telefonnr, adress) VALUES (131, 'gmorecomb3m@epa.gov', 'Laurélie', 'Morecomb', '1961-08-16', '7883576460', 165);
INSERT INTO homenet.personer (id, email, fornamn, efternamn, personnr, telefonnr, adress) VALUES (132, 'tgremain3n@blogtalkradio.com', 'Nadège', 'Gremain', '1968-10-26', '9139214331', 166);
INSERT INTO homenet.personer (id, email, fornamn, efternamn, personnr, telefonnr, adress) VALUES (133, 'rseiler3o@princeton.edu', 'Edmée', 'Seiler', '1956-02-26', '9841481083', 166);
INSERT INTO homenet.personer (id, email, fornamn, efternamn, personnr, telefonnr, adress) VALUES (134, 'bpallent3p@cbsnews.com', 'Andréanne', 'Pallent', '1989-07-28', '8676231368', 167);
INSERT INTO homenet.personer (id, email, fornamn, efternamn, personnr, telefonnr, adress) VALUES (135, 'lstuddert3q@illinois.edu', 'Mélodie', 'Studdert', '1967-12-27', '3897652918', 167);
INSERT INTO homenet.personer (id, email, fornamn, efternamn, personnr, telefonnr, adress) VALUES (136, 'vfidian3r@webs.com', 'Mà', 'Fidian', '1985-07-01', '7188476769', 168);
INSERT INTO homenet.personer (id, email, fornamn, efternamn, personnr, telefonnr, adress) VALUES (137, 'bdorr3s@networksolutions.com', 'Mà', 'Dorr', '2001-05-15', '9051700085', 168);
INSERT INTO homenet.personer (id, email, fornamn, efternamn, personnr, telefonnr, adress) VALUES (138, 'ethow3t@wordpress.org', 'Josée', 'Thow', '1984-12-07', '1015190569', 169);
INSERT INTO homenet.personer (id, email, fornamn, efternamn, personnr, telefonnr, adress) VALUES (139, 'tposnette3u@dailymotion.com', 'Naéva', 'Posnette', '1988-10-02', '2593180720', 169);
INSERT INTO homenet.personer (id, email, fornamn, efternamn, personnr, telefonnr, adress) VALUES (140, 'dsurplice3v@craigslist.org', 'Miléna', 'Surplice', '1955-05-30', '6049242147', 170);
INSERT INTO homenet.personer (id, email, fornamn, efternamn, personnr, telefonnr, adress) VALUES (141, 'dmerigot3w@army.mil', 'Lài', 'Merigot', '1969-06-29', '4937160673', 170);
INSERT INTO homenet.personer (id, email, fornamn, efternamn, personnr, telefonnr, adress) VALUES (142, 'pprest3x@jimdo.com', 'Andréanne', 'Prest', '1970-03-20', '1123839101', 171);
INSERT INTO homenet.personer (id, email, fornamn, efternamn, personnr, telefonnr, adress) VALUES (143, 'thowey3y@hibu.com', 'Gérald', 'Howey', '1951-06-27', '4759389770', 171);
INSERT INTO homenet.personer (id, email, fornamn, efternamn, personnr, telefonnr, adress) VALUES (144, 'oshurmore3z@samsung.com', 'Åslög', 'Shurmore', '1994-12-01', '4337344633', 172);
INSERT INTO homenet.personer (id, email, fornamn, efternamn, personnr, telefonnr, adress) VALUES (145, 'gslainey40@forbes.com', 'Anaé', 'Slainey', '1976-02-10', '1381389136', 172);
INSERT INTO homenet.personer (id, email, fornamn, efternamn, personnr, telefonnr, adress) VALUES (146, 'jdrysdale41@sohu.com', 'Gisèle', 'Drysdale', '1998-03-09', '7828194000', 173);
INSERT INTO homenet.personer (id, email, fornamn, efternamn, personnr, telefonnr, adress) VALUES (147, 'ikobiela42@flavors.me', 'Mélys', 'Kobiela', '1986-12-31', '1108095238', 173);
INSERT INTO homenet.personer (id, email, fornamn, efternamn, personnr, telefonnr, adress) VALUES (148, 'mcorpes43@icio.us', 'Lauréna', 'Corpes', '1964-08-23', '6121664102', 174);
INSERT INTO homenet.personer (id, email, fornamn, efternamn, personnr, telefonnr, adress) VALUES (149, 'mcuvley44@cnn.com', 'Gaïa', 'Cuvley', '1998-06-06', '6596255319', 174);
INSERT INTO homenet.personer (id, email, fornamn, efternamn, personnr, telefonnr, adress) VALUES (150, 'abartul45@deliciousdays.com', 'Salomé', 'Bartul', '1985-02-28', '3845344299', 175);
INSERT INTO homenet.personer (id, email, fornamn, efternamn, personnr, telefonnr, adress) VALUES (151, 'nbarnet46@bloglines.com', 'Pénélope', 'Barnet', '1952-01-03', '3694885392', 93);
INSERT INTO homenet.personer (id, email, fornamn, efternamn, personnr, telefonnr, adress) VALUES (152, 'mmair47@huffingtonpost.com', 'Märta', 'Mair', '1978-09-17', '5392579588', 176);
INSERT INTO homenet.personer (id, email, fornamn, efternamn, personnr, telefonnr, adress) VALUES (153, 'qing48@hhs.gov', 'Marylène', 'Ing', '1995-11-22', '6534655577', 176);
INSERT INTO homenet.personer (id, email, fornamn, efternamn, personnr, telefonnr, adress) VALUES (154, 'tphilp49@alibaba.com', 'Hélène', 'Philp', '1961-08-14', '6017464486', 177);
INSERT INTO homenet.personer (id, email, fornamn, efternamn, personnr, telefonnr, adress) VALUES (155, 'vmccroft4a@livejournal.com', 'Annotés', 'McCroft', '1976-07-02', '6393280727', 177);
INSERT INTO homenet.personer (id, email, fornamn, efternamn, personnr, telefonnr, adress) VALUES (156, 'mcollar4b@engadget.com', 'Ruò', 'Collar', '1996-11-17', '9657264789', 178);
INSERT INTO homenet.personer (id, email, fornamn, efternamn, personnr, telefonnr, adress) VALUES (157, 'pstebbing4c@amazonaws.com', 'Maï', 'Stebbing', '1974-08-14', '3223484577', 178);
INSERT INTO homenet.personer (id, email, fornamn, efternamn, personnr, telefonnr, adress) VALUES (158, 'lgorrie4d@answers.com', 'Edmée', 'Gorrie', '1997-01-05', '8098787998', 179);
INSERT INTO homenet.personer (id, email, fornamn, efternamn, personnr, telefonnr, adress) VALUES (159, 'myeldon4e@utexas.edu', 'Loïc', 'Yeldon', '1952-10-31', '4351017157', 179);
INSERT INTO homenet.personer (id, email, fornamn, efternamn, personnr, telefonnr, adress) VALUES (160, 'cschimann4f@wordpress.org', 'Cléa', 'Schimann', '1973-08-12', '2922796859', 180);
INSERT INTO homenet.personer (id, email, fornamn, efternamn, personnr, telefonnr, adress) VALUES (161, 'sharder4g@edublogs.org', 'Cléa', 'Harder', '1973-12-19', '7847486437', 58);
INSERT INTO homenet.personer (id, email, fornamn, efternamn, personnr, telefonnr, adress) VALUES (162, 'lwickins4h@vkontakte.ru', 'Salomé', 'Wickins', '2001-05-16', '9947257500', 181);
INSERT INTO homenet.personer (id, email, fornamn, efternamn, personnr, telefonnr, adress) VALUES (163, 'sjouanot4i@forbes.com', 'Célestine', 'Jouanot', '1958-08-21', '5556366280', 181);
INSERT INTO homenet.personer (id, email, fornamn, efternamn, personnr, telefonnr, adress) VALUES (164, 'dsinson4j@telegraph.co.uk', 'Desirée', 'Sinson', '1993-07-20', '8348361912', 182);
INSERT INTO homenet.personer (id, email, fornamn, efternamn, personnr, telefonnr, adress) VALUES (165, 'cstrute4k@g.co', 'Marlène', 'Strute', '1952-08-23', '5668809828', 182);
INSERT INTO homenet.personer (id, email, fornamn, efternamn, personnr, telefonnr, adress) VALUES (166, 'rjeanequin4l@yahoo.co.jp', 'Pélagie', 'Jeanequin', '1986-09-19', '2568187431', 183);
INSERT INTO homenet.personer (id, email, fornamn, efternamn, personnr, telefonnr, adress) VALUES (167, 'sweafer4m@dot.gov', 'Torbjörn', 'Weafer', '1976-12-11', '3178763785', 183);
INSERT INTO homenet.personer (id, email, fornamn, efternamn, personnr, telefonnr, adress) VALUES (168, 'ihayers4n@yahoo.com', 'Méline', 'Hayers', '1991-03-16', '1011322767', 184);
INSERT INTO homenet.personer (id, email, fornamn, efternamn, personnr, telefonnr, adress) VALUES (169, 'lpatriche4o@cpanel.net', 'Naéva', 'Patriche', '1987-06-25', '7761582619', 184);
INSERT INTO homenet.personer (id, email, fornamn, efternamn, personnr, telefonnr, adress) VALUES (170, 'dfrancis4p@vistaprint.com', 'Béatrice', 'Francis', '1955-08-03', '8607474006', 185);
INSERT INTO homenet.personer (id, email, fornamn, efternamn, personnr, telefonnr, adress) VALUES (171, 'kbusby4q@wunderground.com', 'Eliès', 'Busby', '1987-02-07', '9414155529', 185);
INSERT INTO homenet.personer (id, email, fornamn, efternamn, personnr, telefonnr, adress) VALUES (172, 'ywilderspoon4r@sourceforge.net', 'Sélène', 'Wilderspoon', '1952-07-19', '6764600118', 186);
INSERT INTO homenet.personer (id, email, fornamn, efternamn, personnr, telefonnr, adress) VALUES (173, 'jbrazier4s@addthis.com', 'Gaïa', 'Brazier', '1995-09-13', '4402547779', 186);
INSERT INTO homenet.personer (id, email, fornamn, efternamn, personnr, telefonnr, adress) VALUES (174, 'riggalden4t@imgur.com', 'Gösta', 'Iggalden', '1979-02-09', '9437097795', 187);
INSERT INTO homenet.personer (id, email, fornamn, efternamn, personnr, telefonnr, adress) VALUES (175, 'hjaffrey4u@ning.com', 'Solène', 'Jaffrey', '1973-08-09', '9506181900', 187);
INSERT INTO homenet.personer (id, email, fornamn, efternamn, personnr, telefonnr, adress) VALUES (176, 'adrinan4v@instagram.com', 'Tán', 'Drinan', '1985-06-11', '8922032485', 188);
INSERT INTO homenet.personer (id, email, fornamn, efternamn, personnr, telefonnr, adress) VALUES (177, 'dgrattage4w@netvibes.com', 'Jú', 'Grattage', '1982-02-04', '1046900010', 188);
INSERT INTO homenet.personer (id, email, fornamn, efternamn, personnr, telefonnr, adress) VALUES (178, 'jkissock4x@liveinternet.ru', 'Bécassine', 'Kissock', '1993-03-24', '4364806561', 189);
INSERT INTO homenet.personer (id, email, fornamn, efternamn, personnr, telefonnr, adress) VALUES (179, 'bblakeslee4y@cargocollective.com', 'Lèi', 'Blakeslee', '1969-12-11', '3129716863', 189);
INSERT INTO homenet.personer (id, email, fornamn, efternamn, personnr, telefonnr, adress) VALUES (180, 'ddunlop4z@blinklist.com', 'Angélique', 'Dunlop', '1961-11-08', '6092419769', 190);
INSERT INTO homenet.personer (id, email, fornamn, efternamn, personnr, telefonnr, adress) VALUES (181, 'sbermingham50@tripadvisor.com', 'Frédérique', 'Bermingham', '1988-09-09', '8887995566', 190);
INSERT INTO homenet.personer (id, email, fornamn, efternamn, personnr, telefonnr, adress) VALUES (182, 'ewasylkiewicz51@arstechnica.com', 'Håkan', 'Wasylkiewicz', '1986-09-17', '1065406949', 191);
INSERT INTO homenet.personer (id, email, fornamn, efternamn, personnr, telefonnr, adress) VALUES (183, 'mvannuccinii52@usatoday.com', 'Nadège', 'Vannuccinii', '1983-03-21', '4162155912', 5);
INSERT INTO homenet.personer (id, email, fornamn, efternamn, personnr, telefonnr, adress) VALUES (184, 'rduffet53@gnu.org', 'Laurélie', 'Duffet', '1955-07-19', '8953271697', 192);
INSERT INTO homenet.personer (id, email, fornamn, efternamn, personnr, telefonnr, adress) VALUES (185, 'ebeathem54@discovery.com', 'Daphnée', 'Beathem', '1953-06-17', '3427963583', 192);
INSERT INTO homenet.personer (id, email, fornamn, efternamn, personnr, telefonnr, adress) VALUES (186, 'hbeceril55@photobucket.com', 'Åke', 'Beceril', '1987-03-23', '2287731971', 12);
INSERT INTO homenet.personer (id, email, fornamn, efternamn, personnr, telefonnr, adress) VALUES (187, 'bashburne56@facebook.com', 'Françoise', 'Ashburne', '1960-09-01', '2791021997', 193);
INSERT INTO homenet.personer (id, email, fornamn, efternamn, personnr, telefonnr, adress) VALUES (188, 'bocorr57@europa.eu', 'Médiamass', 'O''Corr', '1991-01-14', '2632066855', 194);
INSERT INTO homenet.personer (id, email, fornamn, efternamn, personnr, telefonnr, adress) VALUES (189, 'nwykey58@hostgator.com', 'Maïly', 'Wykey', '1960-06-14', '1955341624', 24);
INSERT INTO homenet.personer (id, email, fornamn, efternamn, personnr, telefonnr, adress) VALUES (190, 'bellwand59@fc2.com', 'Mégane', 'Ellwand', '1956-06-26', '4465037689', 195);
INSERT INTO homenet.personer (id, email, fornamn, efternamn, personnr, telefonnr, adress) VALUES (191, 'eclabburn5a@infoseek.co.jp', 'Félicie', 'Clabburn', '2000-10-11', '9465055386', 195);
INSERT INTO homenet.personer (id, email, fornamn, efternamn, personnr, telefonnr, adress) VALUES (192, 'jivimey5b@accuweather.com', 'Pò', 'Ivimey', '1981-11-16', '8654907048', 196);
INSERT INTO homenet.personer (id, email, fornamn, efternamn, personnr, telefonnr, adress) VALUES (193, 'wrollason5c@lycos.com', 'Maéna', 'Rollason', '1976-12-30', '7409537547', 11);
INSERT INTO homenet.personer (id, email, fornamn, efternamn, personnr, telefonnr, adress) VALUES (194, 'lharniman5d@deliciousdays.com', 'Amélie', 'Harniman', '1979-07-23', '5311434827', 197);
INSERT INTO homenet.personer (id, email, fornamn, efternamn, personnr, telefonnr, adress) VALUES (195, 'bloftus5e@usgs.gov', 'Mahélie', 'Loftus', '1986-05-01', '8588637730', 197);
INSERT INTO homenet.personer (id, email, fornamn, efternamn, personnr, telefonnr, adress) VALUES (196, 'mcoger5f@foxnews.com', 'Faîtes', 'Coger', '1983-09-28', '3999669262', 198);
INSERT INTO homenet.personer (id, email, fornamn, efternamn, personnr, telefonnr, adress) VALUES (197, 'rcoppen5g@usatoday.com', 'Cloé', 'Coppen', '1972-12-12', '8641028995', 198);
INSERT INTO homenet.personer (id, email, fornamn, efternamn, personnr, telefonnr, adress) VALUES (198, 'rmiles5h@imdb.com', 'Valérie', 'Miles', '1960-03-19', '8463939461', 199);
INSERT INTO homenet.personer (id, email, fornamn, efternamn, personnr, telefonnr, adress) VALUES (199, 'mbriatt5i@biglobe.ne.jp', 'Nadège', 'Briatt', '1990-01-14', '4087268998', 4);
INSERT INTO homenet.personer (id, email, fornamn, efternamn, personnr, telefonnr, adress) VALUES (200, 'nconws5j@live.com', 'Sòng', 'Conws', '1983-11-28', '7895246525', 100);


--
-- Name: adresser_id_seq; Type: SEQUENCE SET; Schema: homenet; Owner: postgres
--

SELECT pg_catalog.setval('homenet.adresser_id_seq', 1, false);


--
-- Name: maklare_id_seq; Type: SEQUENCE SET; Schema: homenet; Owner: postgres
--

SELECT pg_catalog.setval('homenet.maklare_id_seq', 1, false);


--
-- Name: objekt_id_seq; Type: SEQUENCE SET; Schema: homenet; Owner: postgres
--

SELECT pg_catalog.setval('homenet.objekt_id_seq', 1, false);


--
-- Name: personer_id_seq; Type: SEQUENCE SET; Schema: homenet; Owner: postgres
--

SELECT pg_catalog.setval('homenet.personer_id_seq', 1, false);


--
-- Name: adresser adresser_pk; Type: CONSTRAINT; Schema: homenet; Owner: postgres
--

ALTER TABLE ONLY homenet.adresser
    ADD CONSTRAINT adresser_pk PRIMARY KEY (id);


--
-- Name: maklare maklare_pk; Type: CONSTRAINT; Schema: homenet; Owner: postgres
--

ALTER TABLE ONLY homenet.maklare
    ADD CONSTRAINT maklare_pk PRIMARY KEY (id);


--
-- Name: objekt objekt_pk; Type: CONSTRAINT; Schema: homenet; Owner: postgres
--

ALTER TABLE ONLY homenet.objekt
    ADD CONSTRAINT objekt_pk PRIMARY KEY (id);


--
-- Name: personer personer_pk; Type: CONSTRAINT; Schema: homenet; Owner: postgres
--

ALTER TABLE ONLY homenet.personer
    ADD CONSTRAINT personer_pk PRIMARY KEY (id);


--
-- Name: objekt objekt_adresser_id_fk; Type: FK CONSTRAINT; Schema: homenet; Owner: postgres
--

ALTER TABLE ONLY homenet.objekt
    ADD CONSTRAINT objekt_adresser_id_fk FOREIGN KEY (adress) REFERENCES homenet.adresser(id);


--
-- Name: objekt objekt_maklare_id_fk; Type: FK CONSTRAINT; Schema: homenet; Owner: postgres
--

ALTER TABLE ONLY homenet.objekt
    ADD CONSTRAINT objekt_maklare_id_fk FOREIGN KEY (maklare) REFERENCES homenet.maklare(id);


--
-- Name: objekt objekt_personer_id_fk; Type: FK CONSTRAINT; Schema: homenet; Owner: postgres
--

ALTER TABLE ONLY homenet.objekt
    ADD CONSTRAINT objekt_personer_id_fk FOREIGN KEY (saljare) REFERENCES homenet.personer(id);


--
-- Name: objekt objekt_personer_id_fk_2; Type: FK CONSTRAINT; Schema: homenet; Owner: postgres
--

ALTER TABLE ONLY homenet.objekt
    ADD CONSTRAINT objekt_personer_id_fk_2 FOREIGN KEY (kopare) REFERENCES homenet.personer(id);


--
-- Name: personer personer_adresser_id_fk; Type: FK CONSTRAINT; Schema: homenet; Owner: postgres
--

ALTER TABLE ONLY homenet.personer
    ADD CONSTRAINT personer_adresser_id_fk FOREIGN KEY (adress) REFERENCES homenet.adresser(id);


--
-- PostgreSQL database dump complete
--

