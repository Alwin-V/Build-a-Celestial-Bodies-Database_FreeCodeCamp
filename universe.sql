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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id numeric NOT NULL,
    name character varying(20) NOT NULL,
    number_of_planets integer,
    age_in_millions_of_years integer,
    has_humans boolean,
    has_blackholes boolean,
    initials text
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
    moon_id numeric NOT NULL,
    name character varying(20) NOT NULL,
    temperature_celsius integer,
    distance_from_earth_in_km integer,
    has_life boolean,
    is_spherical boolean,
    temperature_min numeric,
    initials text,
    planet_id numeric
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
    planet_id numeric NOT NULL,
    name character varying(20) NOT NULL,
    number_of_inhabitants_millions integer,
    age integer,
    has_life boolean,
    is_spherical boolean,
    number_of_stars numeric,
    temperature_max numeric,
    initials text,
    star_id numeric
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
    star_id numeric NOT NULL,
    name character varying(20) NOT NULL,
    age_in_millions_of_years integer,
    temperature_celsius integer,
    has_alive boolean,
    has_inhabitants boolean,
    number_of_peaks numeric,
    initials text,
    galaxy_id numeric NOT NULL
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
-- Name: utilisateurs; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.utilisateurs (
    utilisateurs_id integer NOT NULL,
    name character varying(100) NOT NULL,
    prenom character varying(100) NOT NULL,
    age integer,
    adresse character varying(200),
    email character varying(200) NOT NULL,
    est_actif boolean DEFAULT true
);


ALTER TABLE public.utilisateurs OWNER TO freecodecamp;

--
-- Name: utilisateurs_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.utilisateurs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.utilisateurs_id_seq OWNER TO freecodecamp;

--
-- Name: utilisateurs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.utilisateurs_id_seq OWNED BY public.utilisateurs.utilisateurs_id;


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
-- Name: utilisateurs utilisateurs_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.utilisateurs ALTER COLUMN utilisateurs_id SET DEFAULT nextval('public.utilisateurs_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda Galaxy', 23, 4, false, true, 'AG');
INSERT INTO public.galaxy VALUES (2, 'Antennea Galaxies', 9, 2, true, true, 'ATG');
INSERT INTO public.galaxy VALUES (3, 'Backward Galaxy', 1, 9, false, true, 'BG');
INSERT INTO public.galaxy VALUES (4, 'Black Eye Galaxy', 10, 2, true, false, 'BEG');
INSERT INTO public.galaxy VALUES (5, 'Comet Galaxy', 6, 2, true, true, 'CG');
INSERT INTO public.galaxy VALUES (6, 'Tadpole Galaxy', 23, 9, false, false, 'TG');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', -20, 384400, false, true, -150, 'L', 1);
INSERT INTO public.moon VALUES (2, 'Titan', -180, 1221870000, false, true, -290, 'T', 2);
INSERT INTO public.moon VALUES (3, 'Europa', -170, 671034, false, true, -300, 'E', 3);
INSERT INTO public.moon VALUES (4, 'Enceladus', -201, 238020, false, true, -205, 'En', 4);
INSERT INTO public.moon VALUES (5, 'Callisto', -150, 1883000, false, true, -190, 'C', 5);
INSERT INTO public.moon VALUES (6, 'Phobos', -40, 9380, false, true, -120, 'Ph', NULL);
INSERT INTO public.moon VALUES (7, 'Deimos', -20, 23460, false, true, -130, 'D', NULL);
INSERT INTO public.moon VALUES (8, 'Ganymede', -163, 1070400, false, true, -193, 'G', NULL);
INSERT INTO public.moon VALUES (9, 'Mimas', -195, 185520, false, true, -230, 'M', NULL);
INSERT INTO public.moon VALUES (10, 'Miranda', -187, 129390, false, true, -190, 'Mi', NULL);
INSERT INTO public.moon VALUES (11, 'Charon', -220, 19591, false, true, -240, 'Ch', NULL);
INSERT INTO public.moon VALUES (12, 'Io', -150, 421700, false, true, -240, 'I', NULL);
INSERT INTO public.moon VALUES (13, 'Ariel', -200, 191020, false, true, -210, 'A', NULL);
INSERT INTO public.moon VALUES (14, 'Umbriel', -193, 266300, false, true, -220, 'U', NULL);
INSERT INTO public.moon VALUES (15, 'Dione', -186, 377420, false, true, -220, 'D', NULL);
INSERT INTO public.moon VALUES (16, 'Rhea', -184, 527070, false, true, -220, 'R', NULL);
INSERT INTO public.moon VALUES (17, 'Tethys', -187, 294660, false, true, -220, 'T', NULL);
INSERT INTO public.moon VALUES (18, 'Hyperion', -203, 1481000, false, true, -240, 'H', NULL);
INSERT INTO public.moon VALUES (19, 'Proteus', -203, 117647, false, true, -235, 'P', NULL);
INSERT INTO public.moon VALUES (20, 'Proteus', -203, 117647, false, true, -235, 'P', NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 8000, 10, true, true, 5, 100, 'ETH', 1);
INSERT INTO public.planet VALUES (2, 'Mercure', 1, 1000, true, true, 5, 1, 'MER', 2);
INSERT INTO public.planet VALUES (3, 'Venus', 1, 500, false, true, 2, 10, 'MER', 3);
INSERT INTO public.planet VALUES (4, 'Mars', 5, 250, false, true, 3, 50, 'MER', 4);
INSERT INTO public.planet VALUES (5, 'Jupiter', 100, 800, true, true, 1, 5100, 'Jupiter', 5);
INSERT INTO public.planet VALUES (6, 'Saturn', 50, 750, true, false, 1, 2500, 'SAT', 6);
INSERT INTO public.planet VALUES (10, 'Uranus', 4, 1000, false, false, 4, 3, 'URA', NULL);
INSERT INTO public.planet VALUES (11, 'Neptune', 150, 600, true, true, 2, 100, 'NEP', NULL);
INSERT INTO public.planet VALUES (12, 'Pluton', 1000, 200, true, true, 6, 500, 'PLU', NULL);
INSERT INTO public.planet VALUES (13, 'Ceres', 0, 10, false, true, 0, 10, 'CER', NULL);
INSERT INTO public.planet VALUES (14, 'Charon', 0, 5, false, false, 1, 0, 'CHA', NULL);
INSERT INTO public.planet VALUES (15, '2003 UB313', 10, 25, true, true, 1, 29, 'UB3', NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'KK Andromedae', 4, 456, true, false, 5, 'KKA', 1);
INSERT INTO public.star VALUES (2, '88 Aquarii', 2, 100, true, false, 2, 'KKA', 2);
INSERT INTO public.star VALUES (3, 'Arcturus', 7, 345, true, false, 3, 'KKA', 3);
INSERT INTO public.star VALUES (4, 'HD 128333', 2, 68, true, false, 9, 'KKA', 4);
INSERT INTO public.star VALUES (5, 'Theta Coronae', 9, 99, true, false, 0, 'KKA', 5);
INSERT INTO public.star VALUES (6, 'Aldebaran', 2, 22, true, false, 2, 'KKA', 6);


--
-- Data for Name: utilisateurs; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.utilisateurs VALUES (1, 'Dupont', 'Jean', 30, '12 Rue des Fleurs, Paris', 'jean.dupont@gmail.com', true);
INSERT INTO public.utilisateurs VALUES (2, 'Martin', 'Sophie', 25, '8 Avenue du Soleil, Lyon', 'sophie.martin@gmail.com', true);
INSERT INTO public.utilisateurs VALUES (3, 'Garcia', 'Pierre', 25, '5 Rue des Champs, Marseille', 'pierre.garcia@gmail.com', false);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 15, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: utilisateurs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.utilisateurs_id_seq', 3, true);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_id_planet_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_id_planet_key UNIQUE (planet_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_id_star_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_id_star_key UNIQUE (star_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_id_galaxy_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_id_galaxy_key UNIQUE (galaxy_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: galaxy unique_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_name UNIQUE (name);


--
-- Name: planet unique_name_moon; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_name_moon UNIQUE (name);


--
-- Name: planet unique_name_planet; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_name_planet UNIQUE (name);


--
-- Name: star unique_name_star; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_name_star UNIQUE (name);


--
-- Name: utilisateurs utilisateurs_email_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.utilisateurs
    ADD CONSTRAINT utilisateurs_email_key UNIQUE (email);


--
-- Name: utilisateurs utilisateurs_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.utilisateurs
    ADD CONSTRAINT utilisateurs_pkey PRIMARY KEY (utilisateurs_id);


--
-- Name: moon fk_moon_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_moon_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_planet_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_planet_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star fk_star_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_star_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

