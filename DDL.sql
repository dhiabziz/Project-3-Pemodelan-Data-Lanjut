--
-- PostgreSQL database dump
--

-- Dumped from database version 17.4
-- Dumped by pg_dump version 17.3

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: penggunaan_lahan_2021; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.penggunaan_lahan_2021 (
    objectid integer NOT NULL,
    d_pengguna character varying(254),
    d_sub_peng character varying(254),
    d_kegiatan character varying(254),
    shape_leng double precision,
    shape_le_1 double precision,
    wadmkd character varying(50),
    wadmkc character varying(50),
    wadmkk character varying(50),
    kdepum character varying(13),
    kdcpum character varying(8),
    kdpkab character varying(5),
    luaswh double precision,
    srs_id character varying(50),
    shape_length double precision,
    shape_area double precision,
    geom public.geometry(MultiPolygonZM,32748)
);


ALTER TABLE public.penggunaan_lahan_2021 OWNER TO postgres;

--
-- Name: penggunaan_lahan_2021_objectid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.penggunaan_lahan_2021_objectid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.penggunaan_lahan_2021_objectid_seq OWNER TO postgres;

--
-- Name: penggunaan_lahan_2021_objectid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.penggunaan_lahan_2021_objectid_seq OWNED BY public.penggunaan_lahan_2021.objectid;


--
-- Name: relka_ar_1k; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relka_ar_1k (
    objectid integer NOT NULL,
    geom public.geometry(MultiPolygonZ,900914),
    shape_length double precision,
    shape_area double precision,
    namobj character varying(250),
    fcode character varying(50) DEFAULT 'CD02080080'::character varying NOT NULL,
    remark character varying(250),
    metadata character varying(50),
    srs_id character varying(50),
    jmlrel integer,
    kebrel integer,
    klsrel integer,
    kmxrel double precision,
    tiprel integer
);


ALTER TABLE public.relka_ar_1k OWNER TO postgres;

--
-- Name: relka_ar_1k_objectid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.relka_ar_1k_objectid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.relka_ar_1k_objectid_seq OWNER TO postgres;

--
-- Name: relka_ar_1k_objectid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.relka_ar_1k_objectid_seq OWNED BY public.relka_ar_1k.objectid;


--
-- Name: relka_ln_1k; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relka_ln_1k (
    objectid integer NOT NULL,
    namobj character varying(250),
    fcode character varying(50) DEFAULT 'CD02080080'::character varying NOT NULL,
    remark character varying(250),
    metadata character varying(50),
    srs_id character varying(50),
    jmlrel integer,
    kebrel integer,
    klsrel integer,
    kmxrel double precision,
    tiprel integer,
    shape_length double precision,
    geom public.geometry(MultiLineString,900914)
);


ALTER TABLE public.relka_ln_1k OWNER TO postgres;

--
-- Name: relka_ln_1k_objectid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.relka_ln_1k_objectid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.relka_ln_1k_objectid_seq OWNER TO postgres;

--
-- Name: relka_ln_1k_objectid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.relka_ln_1k_objectid_seq OWNED BY public.relka_ln_1k.objectid;


--
-- Name: stasiunka_pt_1k; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.stasiunka_pt_1k (
    objectid integer NOT NULL,
    namobj character varying(250),
    fcode character varying(50) DEFAULT 'CD01080140'::character varying NOT NULL,
    remark character varying(250),
    metadata character varying(50),
    srs_id character varying(50),
    dopsta character varying(50),
    fgssta integer,
    klssta integer,
    kmtsta double precision,
    kodkod character varying(50),
    konkon integer,
    linsta character varying(50),
    wilsta character varying(50),
    geom public.geometry(MultiPoint,900914)
);


ALTER TABLE public.stasiunka_pt_1k OWNER TO postgres;

--
-- Name: stasiunka_pt_1k_objectid_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.stasiunka_pt_1k_objectid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.stasiunka_pt_1k_objectid_seq OWNER TO postgres;

--
-- Name: stasiunka_pt_1k_objectid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.stasiunka_pt_1k_objectid_seq OWNED BY public.stasiunka_pt_1k.objectid;


--
-- Name: penggunaan_lahan_2021 objectid; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.penggunaan_lahan_2021 ALTER COLUMN objectid SET DEFAULT nextval('public.penggunaan_lahan_2021_objectid_seq'::regclass);


--
-- Name: relka_ar_1k objectid; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relka_ar_1k ALTER COLUMN objectid SET DEFAULT nextval('public.relka_ar_1k_objectid_seq'::regclass);


--
-- Name: relka_ln_1k objectid; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relka_ln_1k ALTER COLUMN objectid SET DEFAULT nextval('public.relka_ln_1k_objectid_seq'::regclass);


--
-- Name: stasiunka_pt_1k objectid; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stasiunka_pt_1k ALTER COLUMN objectid SET DEFAULT nextval('public.stasiunka_pt_1k_objectid_seq'::regclass);


--
-- Name: penggunaan_lahan_2021 penggunaan_lahan_2021_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.penggunaan_lahan_2021
    ADD CONSTRAINT penggunaan_lahan_2021_pkey PRIMARY KEY (objectid);


--
-- Name: relka_ar_1k relka_ar_1k_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relka_ar_1k
    ADD CONSTRAINT relka_ar_1k_pkey PRIMARY KEY (objectid);


--
-- Name: relka_ln_1k relka_ln_1k_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relka_ln_1k
    ADD CONSTRAINT relka_ln_1k_pkey PRIMARY KEY (objectid);


--
-- Name: stasiunka_pt_1k stasiunka_pt_1k_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.stasiunka_pt_1k
    ADD CONSTRAINT stasiunka_pt_1k_pkey PRIMARY KEY (objectid);


--
-- Name: penggunaan_lahan_2021_geom_geom_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX penggunaan_lahan_2021_geom_geom_idx ON public.penggunaan_lahan_2021 USING gist (geom);


--
-- Name: relka_ar_1k_geom_geom_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX relka_ar_1k_geom_geom_idx ON public.relka_ar_1k USING gist (geom);


--
-- Name: relka_ln_1k_geom_geom_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX relka_ln_1k_geom_geom_idx ON public.relka_ln_1k USING gist (geom);


--
-- Name: stasiunka_pt_1k_geom_geom_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX stasiunka_pt_1k_geom_geom_idx ON public.stasiunka_pt_1k USING gist (geom);


--
-- PostgreSQL database dump complete
--

