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
-- Name: extra; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.extra (
    extra_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text
);


ALTER TABLE public.extra OWNER TO freecodecamp;

--
-- Name: extra_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.extra_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.extra_id_seq OWNER TO freecodecamp;

--
-- Name: extra_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.extra_id_seq OWNED BY public.extra.extra_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    type text,
    distance integer,
    size integer,
    apparent_magnitude numeric(4,2)
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    bigger_than_our_moon boolean,
    surface_area_in_earths numeric(5,3),
    volume_in_earths numeric(5,3),
    planet_id integer
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
    bigger_than_earth boolean,
    orbital_period_in_julian_years numeric(5,2),
    orbital_period_in_native_days numeric(7,2),
    star_id integer
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
    orbital_period_in_earth_days integer,
    mass_in_solar_mass numeric(3,2),
    temperature_in_kelvin integer,
    galaxy_id integer
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
-- Name: extra extra_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.extra ALTER COLUMN extra_id SET DEFAULT nextval('public.extra_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_id_seq'::regclass);


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
-- Data for Name: extra; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.extra VALUES (1, 'test', 'some stuff');
INSERT INTO public.extra VALUES (2, 'test2', 'some stuff2');
INSERT INTO public.extra VALUES (3, 'test3', 'some stuff3');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda', 'SA(s)b', 765, 47, 3.44);
INSERT INTO public.galaxy VALUES (2, 'Comet', NULL, NULL, 180000, 18.70);
INSERT INTO public.galaxy VALUES (3, 'Condor', 'SB(s)b pec', 212, 160, 10.69);
INSERT INTO public.galaxy VALUES (4, 'Hoag''s Object', '(RP)E0', 188, 121, 16.20);
INSERT INTO public.galaxy VALUES (5, 'Large Magellanic Cloud', 'SB(s)m', 163, 10, 0.13);
INSERT INTO public.galaxy VALUES (6, 'Small Magellanic Cloud', 'SB(s)m', 204, 6, 2.70);
INSERT INTO public.galaxy VALUES (7, 'Milky Way', 'Sb;Sbc;SB(rs)bc', 8, 27, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon', false, 0.074, 0.020, 3);
INSERT INTO public.moon VALUES (2, 'Phobos', true, 3.040, 5.340, 4);
INSERT INTO public.moon VALUES (3, 'Deimos', true, 0.970, 0.920, 4);
INSERT INTO public.moon VALUES (4, 'Metis', false, 0.300, 0.450, 38);
INSERT INTO public.moon VALUES (5, 'Adrastea', false, 0.210, 0.340, 38);
INSERT INTO public.moon VALUES (6, 'Amalthea', false, 0.133, 0.240, 38);
INSERT INTO public.moon VALUES (7, 'Thebe', true, 2.080, 1.290, 38);
INSERT INTO public.moon VALUES (8, 'Io', false, 0.980, 0.430, 38);
INSERT INTO public.moon VALUES (9, 'Europa', false, 0.140, 0.190, 38);
INSERT INTO public.moon VALUES (10, 'Ganymede', false, 0.670, 0.260, 38);
INSERT INTO public.moon VALUES (11, 'Callisto', false, 0.670, 0.260, 38);
INSERT INTO public.moon VALUES (12, 'Themisto', false, 0.670, 0.260, 38);
INSERT INTO public.moon VALUES (13, 'Leda', false, 0.670, 0.260, 38);
INSERT INTO public.moon VALUES (14, 'Ersa', false, 0.670, 0.260, 38);
INSERT INTO public.moon VALUES (15, 'Carpo', false, 0.670, 0.260, 38);
INSERT INTO public.moon VALUES (16, 'Euphorie', false, 0.670, 0.260, 38);
INSERT INTO public.moon VALUES (17, 'Mneme', false, 0.670, 0.260, 38);
INSERT INTO public.moon VALUES (18, 'Euanthe', false, 0.670, 0.260, 38);
INSERT INTO public.moon VALUES (19, 'Harpalyke', false, 0.670, 0.260, 38);
INSERT INTO public.moon VALUES (20, 'Orthosie', false, 0.670, 0.260, 38);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', false, 0.24, 115.88, 7);
INSERT INTO public.planet VALUES (2, 'Venus', false, 0.62, 224.70, 7);
INSERT INTO public.planet VALUES (3, 'Earth', false, 1.00, 365.26, 7);
INSERT INTO public.planet VALUES (4, 'Mars', false, 1.88, 779.94, 7);
INSERT INTO public.planet VALUES (37, 'Saturn', true, 29.46, 10759.00, 7);
INSERT INTO public.planet VALUES (38, 'Jupiter', true, 11.86, 10479.00, 7);
INSERT INTO public.planet VALUES (39, 'Uranus', true, 84.02, 30689.00, 7);
INSERT INTO public.planet VALUES (40, 'Neptune', true, 165.00, 60195.00, 7);
INSERT INTO public.planet VALUES (41, 'Ceres', false, 4.60, 466.70, 7);
INSERT INTO public.planet VALUES (42, 'Orcus', false, 245.20, 89557.00, 7);
INSERT INTO public.planet VALUES (43, 'Pluto', false, 247.90, 366.70, 7);
INSERT INTO public.planet VALUES (44, 'Haumea', false, 283.12, 47193.00, 7);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Alpha Andromedae', 97, 3.80, 13800, 1);
INSERT INTO public.star VALUES (2, 'Delta Andromedae', 15000, 1.30, 4315, 1);
INSERT INTO public.star VALUES (3, 'Alpha Sculptoris', NULL, 5.01, 13600, 2);
INSERT INTO public.star VALUES (4, 'Beta Sculptoris', NULL, 2.98, 12110, 2);
INSERT INTO public.star VALUES (5, 'Alpha Pavonis', NULL, 5.91, 17711, 3);
INSERT INTO public.star VALUES (6, 'Beta Pavonis', NULL, 2.51, 8184, 3);
INSERT INTO public.star VALUES (7, 'Sol', NULL, NULL, 5772, 7);


--
-- Name: extra_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.extra_id_seq', 3, true);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 7, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 44, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


--
-- Name: extra extra_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.extra
    ADD CONSTRAINT extra_name_key UNIQUE (name);


--
-- Name: extra extra_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.extra
    ADD CONSTRAINT extra_pkey PRIMARY KEY (extra_id);


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
