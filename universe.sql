--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: flag; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.flag (
    flag_id integer NOT NULL,
    name character varying(30) NOT NULL,
    is_accounted boolean
);


ALTER TABLE public.flag OWNER TO freecodecamp;

--
-- Name: flag_flag_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.flag_flag_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.flag_flag_id_seq OWNER TO freecodecamp;

--
-- Name: flag_flag_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.flag_flag_id_seq OWNED BY public.flag.flag_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age integer,
    distance numeric(9,0),
    description text
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age integer,
    planet_id integer,
    description text
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age integer,
    star_id integer,
    is_habitable boolean,
    description text
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age integer,
    galaxy_id integer,
    description text
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: flag flag_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.flag ALTER COLUMN flag_id SET DEFAULT nextval('public.flag_flag_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: flag; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.flag VALUES (1, 'name1', NULL);
INSERT INTO public.flag VALUES (2, 'name2', NULL);
INSERT INTO public.flag VALUES (3, 'name3', NULL);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'YEETUS', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'LAST', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, '"THE RED ONE"', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'name1', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'name2', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'name3', NULL, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'loon', NULL, 5, NULL);
INSERT INTO public.moon VALUES (2, 'coon', NULL, 7, NULL);
INSERT INTO public.moon VALUES (3, 'doom', NULL, 6, NULL);
INSERT INTO public.moon VALUES (22, 'THIS', NULL, 2, NULL);
INSERT INTO public.moon VALUES (23, 'IS', NULL, 3, NULL);
INSERT INTO public.moon VALUES (24, 'NOT', NULL, 4, NULL);
INSERT INTO public.moon VALUES (25, 'VERY', NULL, 5, NULL);
INSERT INTO public.moon VALUES (26, 'FUN', NULL, 6, NULL);
INSERT INTO public.moon VALUES (27, 'BUT', NULL, 7, NULL);
INSERT INTO public.moon VALUES (28, 'I', NULL, 8, NULL);
INSERT INTO public.moon VALUES (29, 'GUESS', NULL, 9, NULL);
INSERT INTO public.moon VALUES (30, 'IT', NULL, 1, NULL);
INSERT INTO public.moon VALUES (31, 'SOME', NULL, 3, NULL);
INSERT INTO public.moon VALUES (32, 'WHAT', NULL, 4, NULL);
INSERT INTO public.moon VALUES (33, 'PRACTICAL', NULL, 5, NULL);
INSERT INTO public.moon VALUES (34, 'NOW', NULL, 6, NULL);
INSERT INTO public.moon VALUES (35, 'THAT', NULL, 7, NULL);
INSERT INTO public.moon VALUES (36, 'ALL', NULL, 9, NULL);
INSERT INTO public.moon VALUES (37, 'GOOD', NULL, 1, NULL);
INSERT INTO public.moon VALUES (38, 'AND', NULL, 2, NULL);
INSERT INTO public.moon VALUES (39, 'STILL', NULL, 6, NULL);
INSERT INTO public.moon VALUES (40, 'HATE', NULL, 7, NULL);
INSERT INTO public.moon VALUES (41, 'WASTE', NULL, 9, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'player1', NULL, 1, NULL, NULL);
INSERT INTO public.planet VALUES (2, 'HOUSE OF CHARLES', NULL, 2, NULL, NULL);
INSERT INTO public.planet VALUES (3, 'Do not go here', NULL, 3, NULL, NULL);
INSERT INTO public.planet VALUES (4, 'House Horcarft', NULL, 1, NULL, NULL);
INSERT INTO public.planet VALUES (5, 'YOU SHALL NOT PASS', NULL, 2, NULL, NULL);
INSERT INTO public.planet VALUES (6, 'GG', NULL, 3, NULL, NULL);
INSERT INTO public.planet VALUES (7, 'Planet 1', NULL, 1, NULL, NULL);
INSERT INTO public.planet VALUES (8, 'why', NULL, 2, NULL, NULL);
INSERT INTO public.planet VALUES (9, 'did', NULL, 3, NULL, NULL);
INSERT INTO public.planet VALUES (10, 'BRICK 9', NULL, 5, NULL, NULL);
INSERT INTO public.planet VALUES (11, 'lat 22', NULL, 7, NULL, NULL);
INSERT INTO public.planet VALUES (12, 'lat 73', NULL, 6, NULL, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'BRICK 1', NULL, 1, NULL);
INSERT INTO public.star VALUES (2, 'BRICK 2', NULL, 1, NULL);
INSERT INTO public.star VALUES (3, 'WHY IS THERE A THIRD ONE?!', NULL, 1, NULL);
INSERT INTO public.star VALUES (4, 'There is cheese.', NULL, 2, NULL);
INSERT INTO public.star VALUES (5, 'I EXIST', NULL, 3, NULL);
INSERT INTO public.star VALUES (6, 'delete ENTRY', NULL, 3, NULL);
INSERT INTO public.star VALUES (7, 'BRICK 7', NULL, 3, NULL);
INSERT INTO public.star VALUES (8, 'lat 2', NULL, 2, NULL);
INSERT INTO public.star VALUES (9, 'lat 3', NULL, 2, NULL);


--
-- Name: flag_flag_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.flag_flag_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 41, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 9, true);


--
-- Name: flag flag_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.flag
    ADD CONSTRAINT flag_name_key UNIQUE (name);


--
-- Name: flag flag_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.flag
    ADD CONSTRAINT flag_pkey PRIMARY KEY (flag_id);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

