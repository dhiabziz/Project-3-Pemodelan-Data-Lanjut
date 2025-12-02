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

---
--- SQL QUERIES
---

--
-- Pertanyaan Deskriptif dan Agregat (Atribut)
--

-- 1. Stasiun kereta api mana saja yang namanya mengandung kata 'Pasar' atau 'Kota'?
SELECT namobj FROM stasiunka_pt_1k
WHERE namobj LIKE '%PASAR%' OR namobj LIKE'%KOTA%';

-- 2. Apa saja 5 jenis penggunaan lahan yang paling banyak di Jakarta?
SELECT d_sub_peng, count(*) AS jumlah
FROM penggunaan_lahan_2021
GROUP BY d_sub_peng
ORDER BY jumlah DESC
LIMIT 5;

-- 3. Bagaimana distribusi jumlah poligon penggunaan lahan untuk setiap Kota/Kabupaten?
SELECT 
    wadmkk,
    COUNT(*) AS jumlah_poligon
FROM penggunaan_lahan_2021
WHERE wadmkk IS NOT NULL
GROUP BY wadmkk
ORDER BY jumlah_poligon DESC;

--
-- Pertanyaan Spasial Murni
--

-- 1. Berapa total panjang seluruh jaringan rel kereta api yang ada di Jakarta?
SELECT 
    SUM(ST_Length(ST_Transform(geom, 32748))) / 1000 AS total_panjang_km
FROM relka_ln_1k;

-- 2. Objek area rel kereta manakah yang memiliki ukuran paling luas, dan berapa luasnya?
SELECT 
    fcode, metadata, srs_id,
    ST_Area(ST_Transform(geom, 32748)) AS luas_m2
FROM relka_ar_1k
WHERE geom IS NOT NULL
ORDER BY luas_m2 DESC NULLS LAST
LIMIT 1;

-- 3. Pasangan stasiun mana saja yang memiliki jarak sangat dekat satu sama lain (kurang dari 1 kilometer)?
SELECT 
    a.namobj AS stasiun_1,
    b.namobj AS stasiun_2,
    ST_Distance(ST_Transform(a.geom, 32748), ST_Transform(b.geom, 32748)) AS jarak_meter
FROM stasiunka_pt_1k a, stasiunka_pt_1k b
WHERE a.objectid < b.objectid
  AND ST_DWithin(ST_Transform(a.geom, 32748), ST_Transform(b.geom, 32748), 1000)
ORDER BY jarak_meter ASC;

--
-- Pertanyaan Hybrid dan Analisis Lintas Tabel
--

-- 1. Stasiun kereta api mana saja yang memiliki fasilitas pendidikan terdekat (radius 300m), dan apa jenis pendidikannya? 
SELECT 
    s.namobj AS nama_stasiun,
    p.wadmkd AS kelurahan,
    p.wadmkc AS kecamatan,
    p.d_kegiatan AS jenis_pendidikan,
    ROUND(ST_Distance(
        ST_Transform(ST_SetSRID(s.geom, 4326), 32748), 
        p.geom
    )::numeric, 2) AS jarak_meter
FROM stasiunka_pt_1k s, penggunaan_lahan_2021 p
WHERE p.d_sub_peng = 'PELAYANAN PENDIDIKAN'
  AND ST_DWithin(
        ST_Transform(ST_SetSRID(s.geom, 4326), 32748), 
        p.geom, 
        300
      )
ORDER BY jarak_meter
LIMIT 10;

-- 2. Stasiun kereta api mana saja yang memiliki area pertokoan/mall/pasar terdekat? 
SELECT 
    s.namobj AS nama_stasiun,
    p.wadmkd AS kelurahan,
    p.wadmkc AS kecamatan,
    p.d_kegiatan AS jenis_usaha,
    ROUND(ST_Distance(
        ST_Transform(ST_SetSRID(s.geom, 4326), 32748), 
        p.geom
    )::numeric, 2) AS jarak_meter
FROM stasiunka_pt_1k s, penggunaan_lahan_2021 p
WHERE p.d_pengguna = 'USAHA'
  AND p.d_kegiatan IN ('MALL', 'PERTOKOAN', 'PASAR')
  AND ST_DWithin(
        ST_Transform(ST_SetSRID(s.geom, 4326), 32748), 
        p.geom, 
        200
      )
ORDER BY jarak_meter
LIMIT 10;

-- 3. Jalur rel mana saja yang melintasi atau membelah area yang diperuntukkan sebagai 'Ruang Terbuka Hijau'?
SELECT 
    ln.objectid AS id_jalur_rel,
    p.wadmkd AS kelurahan,
    p.wadmkc AS kecamatan,
    p.d_kegiatan AS jenis_rth,
    ROUND(p.shape_area::numeric, 2) AS luas_rth_m2
FROM relka_ln_1k ln, penggunaan_lahan_2021 p
WHERE p.d_kegiatan IN (
    'HIJAU LAINNYA', 'TAMAN KOTA', 'TAMAN REKREASI', 
    'TAMAN BERMAIN LINGKUNGAN', 'TAMAN HIBURAN', 'TAMAN PERKEMAHAN'
)
AND ST_DWithin(
    ST_Transform(ST_SetSRID(ln.geom, 4326), 32748), 
    p.geom, 
    10
)
ORDER BY p.shape_area DESC
LIMIT 10;

--
-- Pertanyaan Interaktif
--
-- (Tidak ada query SQL karena ini terkait dengan UI/UX peta interaktif)

--
-- Agregasi Spasial
--

-- 1. Bagaimana cara mendapatkan agregat penggunaan lahan berdasarkan jenis penggunaannya?
SELECT 
    row_number() OVER () AS id,
    d_pengguna,
    ST_Multi(ST_Union(geom)) AS geom_dissolved,
    (ST_Area(ST_Union(geom))/10000) AS total_luas_ha 
FROM public.penggunaan_lahan_2021
WHERE d_pengguna IS NOT NULL
GROUP BY d_pengguna;

-- 2. Jalur rel kereta mana saja yang melalui Stasiun Jatinegara?
SELECT 
	row_number() OVER () AS id,
    ln.geom AS rel_geom,
    st.geom AS stasiun_geom,
    st.namobj AS nama_stasiun
FROM relka_ln_1k ln
JOIN relka_ar_1k ar
  ON ST_Intersects(ln.geom, ar.geom)
JOIN stasiunka_pt_1k st
  ON ST_Intersects(st.geom, ar.geom)
WHERE st.namobj = 'STASIUN JATINEGARA';

-- 3. Berapa total panjang seluruh jalur rel kereta di DKI Jakarta?
SELECT 
    COUNT(*) AS jumlah_segmen,
    ROUND(SUM(ST_Length(ST_Transform(geom, 32748)))::numeric, 2) AS total_panjang_m,
    ROUND((SUM(ST_Length(ST_Transform(geom, 32748))) / 1000)::numeric, 2) AS total_panjang_km,
    ST_GeometryType(ST_Union(geom)) AS tipe_geometri,
    ST_NPoints(ST_Union(geom)) AS jumlah_titik
FROM relka_ln_1k;

-- 4. Berapa total luas area perumahan/hunian di setiap kota administrasi Jakarta setelah dilakukan union berdasarkan wilayah kota?
SELECT 
    wadmkk AS "Kota",
    COUNT(*) AS "Jumlah Polygon Perumahan",
    ROUND(SUM(luaswh)::numeric, 2) AS "Total Luas (ha)",
    ST_Union(geom) AS geom
FROM penggunaan_lahan_2021
WHERE (d_pengguna LIKE '%HUNIAN%')
  AND wadmkk IS NOT NULL
GROUP BY wadmkk
ORDER BY "Total Luas (ha)" DESC;
