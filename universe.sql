--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

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
INSERT INTO public.galaxy VALUES (7, 'Whirlpool Galaxy', 15, 3, false, true, 'WG');
INSERT INTO public.galaxy VALUES (8, 'Pinwheel Galaxy', 12, 5, false, false, 'PG');
INSERT INTO public.galaxy VALUES (9, 'Sombrero Galaxy', 18, 6, false, true, 'SG');
INSERT INTO public.galaxy VALUES (10, 'Cartwheel Galaxy', 20, 4, false, false, 'CG2');
INSERT INTO public.galaxy VALUES (11, 'Cigar Galaxy', 8, 7, true, false, 'CG3');
INSERT INTO public.galaxy VALUES (12, 'Sunflower Galaxy', 14, 2, false, true, 'SFG');
INSERT INTO public.galaxy VALUES (13, 'Triangulum Galaxy', 10, 3, false, true, 'TG2');
INSERT INTO public.galaxy VALUES (14, 'Messier Galaxy', 9, 5, true, false, 'MG');
INSERT INTO public.galaxy VALUES (15, 'Milky Way', 25, 13, true, true, 'MW');
INSERT INTO public.galaxy VALUES (16, 'Drunken Galaxy', 11, 6, false, true, 'DG');
INSERT INTO public.galaxy VALUES (17, 'Caldwell Galaxy', 7, 2, false, false, 'CG4');
INSERT INTO public.galaxy VALUES (18, 'Needle Galaxy', 5, 1, false, true, 'NG');
INSERT INTO public.galaxy VALUES (19, 'Fireworks Galaxy', 20, 3, true, true, 'FG');
INSERT INTO public.galaxy VALUES (20, 'Bode’s Galaxy', 15, 4, false, false, 'BG2');
INSERT INTO public.galaxy VALUES (21, 'Silver Dollar Galaxy', 12, 5, false, true, 'SDG');
INSERT INTO public.galaxy VALUES (22, 'NGC Galaxy', 8, 2, true, false, 'NGC');
INSERT INTO public.galaxy VALUES (23, 'Shapley Galaxy', 16, 6, false, true, 'SG2');
INSERT INTO public.galaxy VALUES (24, 'Hoag’s Galaxy', 7, 3, false, false, 'HG');
INSERT INTO public.galaxy VALUES (25, 'Messier 81', 18, 5, false, true, 'M81');
INSERT INTO public.galaxy VALUES (26, 'Messier 82', 9, 4, true, false, 'M82');
INSERT INTO public.galaxy VALUES (27, 'NGC 1300', 14, 7, false, true, 'N1300');
INSERT INTO public.galaxy VALUES (28, 'NGC 1365', 13, 6, false, true, 'N1365');
INSERT INTO public.galaxy VALUES (29, 'NGC 1097', 11, 5, false, false, 'N1097');
INSERT INTO public.galaxy VALUES (30, 'NGC 6946', 21, 9, false, true, 'N6946');
INSERT INTO public.galaxy VALUES (31, 'NGC 253', 19, 8, true, false, 'N253');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', -20, 384400, false, true, -150, 'L', 1);
INSERT INTO public.moon VALUES (2, 'Titan', -180, 1221870000, false, true, -290, 'T', 2);
INSERT INTO public.moon VALUES (3, 'Europa', -170, 671034, false, true, -300, 'E', 3);
INSERT INTO public.moon VALUES (4, 'Enceladus', -201, 238020, false, true, -205, 'En', 4);
INSERT INTO public.moon VALUES (5, 'Callisto', -150, 1883000, false, true, -190, 'C', 5);
INSERT INTO public.moon VALUES (6, 'Phobos', -40, 9377, false, true, -130, 'P', 6);
INSERT INTO public.moon VALUES (7, 'Deimos', -45, 23460, false, true, -135, 'D', 7);
INSERT INTO public.moon VALUES (8, 'Ganymede', -160, 1070400, false, true, -220, 'G', 8);
INSERT INTO public.moon VALUES (9, 'Io', -130, 628300, false, true, -180, 'I', 9);
INSERT INTO public.moon VALUES (10, 'Mimas', -200, 185539, false, true, -210, 'M', 10);
INSERT INTO public.moon VALUES (11, 'Tethys', -195, 294619, false, true, -215, 'T', 11);
INSERT INTO public.moon VALUES (12, 'Rhea', -180, 527040, false, true, -210, 'R', 12);
INSERT INTO public.moon VALUES (13, 'Dione', -170, 377400, false, true, -200, 'D', 13);
INSERT INTO public.moon VALUES (14, 'Titania', -200, 436300, false, true, -220, 'T', 14);
INSERT INTO public.moon VALUES (15, 'Oberon', -195, 583500, false, true, -225, 'O', 15);
INSERT INTO public.moon VALUES (16, 'Miranda', -210, 129900, false, true, -240, 'M', 16);
INSERT INTO public.moon VALUES (17, 'Ariel', -205, 191020, false, true, -230, 'A', 17);
INSERT INTO public.moon VALUES (18, 'Umbriel', -190, 266000, false, true, -220, 'U', 18);
INSERT INTO public.moon VALUES (19, 'Titan', -180, 1221870000, false, true, -290, 'Ti', 19);
INSERT INTO public.moon VALUES (20, 'Enceladus', -201, 238020, false, true, -205, 'En', 20);
INSERT INTO public.moon VALUES (21, 'Io 2', -125, 628350, false, true, -185, 'I2', 21);
INSERT INTO public.moon VALUES (22, 'Europa 2', -170, 671034, false, true, -300, 'E2', 22);
INSERT INTO public.moon VALUES (23, 'Ganymede 2', -160, 1070500, false, true, -220, 'G2', 23);
INSERT INTO public.moon VALUES (24, 'Callisto 2', -150, 1883100, false, true, -190, 'C2', 24);
INSERT INTO public.moon VALUES (25, 'Phobos 2', -40, 9400, false, true, -130, 'P2', 25);
INSERT INTO public.moon VALUES (26, 'Deimos 2', -45, 23500, false, true, -135, 'D2', 26);
INSERT INTO public.moon VALUES (27, 'Mimas 2', -200, 186000, false, true, -210, 'M2', 27);
INSERT INTO public.moon VALUES (28, 'Tethys 2', -195, 295000, false, true, -215, 'T2', 28);
INSERT INTO public.moon VALUES (29, 'Rhea 2', -180, 528000, false, true, -210, 'R2', 29);
INSERT INTO public.moon VALUES (30, 'Dione 2', -170, 378000, false, true, -200, 'D3', 30);
INSERT INTO public.moon VALUES (31, 'Titania 2', -200, 437000, false, true, -220, 'T3', 31);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 8000, 10, true, true, 5, 100, 'ETH', 1);
INSERT INTO public.planet VALUES (2, 'Mercure', 1, 1000, true, true, 5, 1, 'MER', 2);
INSERT INTO public.planet VALUES (3, 'Venus', 1, 500, false, true, 2, 10, 'MER', 3);
INSERT INTO public.planet VALUES (4, 'Mars', 5, 250, false, true, 3, 50, 'MER', 4);
INSERT INTO public.planet VALUES (5, 'Jupiter', 100, 800, true, true, 1, 5100, 'Jupiter', 5);
INSERT INTO public.planet VALUES (6, 'Saturn', 50, 750, true, false, 1, 2500, 'SAT', 6);
INSERT INTO public.planet VALUES (7, 'Uranus', 0, 700, false, true, 1, 2000, 'URA', 7);
INSERT INTO public.planet VALUES (8, 'Neptune', 0, 650, false, true, 1, 1800, 'NEP', 8);
INSERT INTO public.planet VALUES (9, 'Pluto', 0, 1000, false, true, 1, 50, 'PLU', 9);
INSERT INTO public.planet VALUES (10, 'Kepler-22b', 500, 600, true, true, 2, 400, 'K22B', 10);
INSERT INTO public.planet VALUES (11, 'Gliese 581g', 50, 450, true, true, 2, 350, 'G581G', 11);
INSERT INTO public.planet VALUES (12, 'Proxima b', 10, 100, true, true, 1, 300, 'PROB', 12);
INSERT INTO public.planet VALUES (13, 'Zeta Prime', 120, 500, true, true, 1, 450, 'ZPR', 13);
INSERT INTO public.planet VALUES (14, 'Carina Minor', 0, 300, false, true, 1, 100, 'CMI', 14);
INSERT INTO public.planet VALUES (15, 'Cepheus B', 5, 200, true, true, 1, 300, 'CEB', 15);
INSERT INTO public.planet VALUES (16, 'Pavo IV', 0, 400, false, true, 1, 500, 'PAV', 16);
INSERT INTO public.planet VALUES (17, 'Eridani Nova', 50, 350, true, true, 1, 400, 'EN', 17);
INSERT INTO public.planet VALUES (18, 'Tau Prime', 0, 600, false, true, 1, 600, 'TP', 18);
INSERT INTO public.planet VALUES (19, 'Draco Minor', 10, 700, true, true, 1, 550, 'DM', 19);
INSERT INTO public.planet VALUES (20, 'Andromeda Beta', 0, 800, false, true, 1, 500, 'AB', 20);
INSERT INTO public.planet VALUES (21, 'Ara Nova', 20, 450, true, true, 1, 420, 'AN', 21);
INSERT INTO public.planet VALUES (22, 'Octantis Prime', 0, 900, false, true, 1, 300, 'OP', 22);
INSERT INTO public.planet VALUES (23, 'Persei V', 35, 250, true, true, 1, 350, 'PER', 23);
INSERT INTO public.planet VALUES (24, 'Mensae II', 0, 500, false, true, 1, 400, 'MM', 24);
INSERT INTO public.planet VALUES (25, 'Cassiopeia Minor', 5, 600, true, true, 1, 450, 'CMI', 25);
INSERT INTO public.planet VALUES (26, 'Octantis Nova', 0, 300, false, true, 1, 500, 'ON', 26);
INSERT INTO public.planet VALUES (27, 'Auriga Beta', 25, 350, true, true, 1, 600, 'AB', 27);
INSERT INTO public.planet VALUES (28, 'Andromeda Delta', 0, 700, false, true, 1, 450, 'AD', 28);
INSERT INTO public.planet VALUES (29, 'Ceti Gamma', 30, 400, true, true, 1, 500, 'CG', 29);
INSERT INTO public.planet VALUES (30, 'Draconis Prime', 0, 800, false, true, 1, 300, 'DP', 30);
INSERT INTO public.planet VALUES (31, 'Lyra Nova', 15, 650, true, true, 1, 550, 'LN', 31);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'KK Andromedae', 4, 456, true, false, 5, 'KKA', 1);
INSERT INTO public.star VALUES (2, '88 Aquarii', 2, 100, true, false, 2, 'KKA', 2);
INSERT INTO public.star VALUES (3, 'Arcturus', 7, 345, true, false, 3, 'KKA', 3);
INSERT INTO public.star VALUES (4, 'HD 128333', 2, 68, true, false, 9, 'KKA', 4);
INSERT INTO public.star VALUES (5, 'Theta Coronae', 9, 99, true, false, 0, 'KKA', 5);
INSERT INTO public.star VALUES (6, 'Aldebaran', 2, 22, true, false, 2, 'KKA', 6);
INSERT INTO public.star VALUES (7, 'Sirius', 5, 9940, true, true, 4, 'SIR', 7);
INSERT INTO public.star VALUES (8, 'Betelgeuse', 10, 3500, true, false, 7, 'BET', 8);
INSERT INTO public.star VALUES (9, 'Rigel', 8, 12100, true, true, 3, 'RIG', 9);
INSERT INTO public.star VALUES (10, 'Vega', 4, 9602, true, true, 6, 'VEG', 10);
INSERT INTO public.star VALUES (11, 'Polaris', 7, 6015, true, false, 2, 'POL', 11);
INSERT INTO public.star VALUES (12, 'Antares', 12, 3500, true, true, 1, 'ANT', 12);
INSERT INTO public.star VALUES (13, 'Capella', 6, 4940, true, false, 5, 'CAP', 13);
INSERT INTO public.star VALUES (14, 'Zeta Reticuli', 5, 4200, true, false, 3, 'ZR', 14);
INSERT INTO public.star VALUES (15, 'Eta Carinae', 11, 15000, true, false, 4, 'EC', 15);
INSERT INTO public.star VALUES (16, 'Gamma Cephei', 8, 4800, true, false, 2, 'GC', 16);
INSERT INTO public.star VALUES (17, 'Delta Pavonis', 7, 5700, true, false, 1, 'DP', 17);
INSERT INTO public.star VALUES (18, 'Epsilon Eridani', 9, 5100, true, false, 3, 'EE', 18);
INSERT INTO public.star VALUES (19, 'Tau Ceti', 10, 5300, true, false, 2, 'TC', 19);
INSERT INTO public.star VALUES (20, 'Sigma Draconis', 6, 4600, true, false, 4, 'SD', 20);
INSERT INTO public.star VALUES (21, 'Lambda Andromedae', 5, 4300, true, false, 3, 'LA', 21);
INSERT INTO public.star VALUES (22, 'Mu Arae', 8, 5600, true, false, 2, 'MA', 22);
INSERT INTO public.star VALUES (23, 'Nu Octantis', 12, 5900, true, false, 5, 'NO', 23);
INSERT INTO public.star VALUES (24, 'Omicron Persei', 7, 6200, true, false, 1, 'OP', 24);
INSERT INTO public.star VALUES (25, 'Pi Mensae', 9, 4800, true, false, 2, 'PM', 25);
INSERT INTO public.star VALUES (26, 'Rho Cassiopeiae', 10, 5400, true, false, 3, 'RC', 26);
INSERT INTO public.star VALUES (27, 'Sigma Octantis', 6, 4700, true, false, 2, 'SO', 27);
INSERT INTO public.star VALUES (28, 'Theta Aurigae', 8, 5100, true, false, 4, 'TA', 28);
INSERT INTO public.star VALUES (29, 'Upsilon Andromedae', 7, 5300, true, false, 3, 'UA', 29);
INSERT INTO public.star VALUES (30, 'Phi Ceti', 5, 4900, true, false, 1, 'PH', 30);
INSERT INTO public.star VALUES (31, 'Chi Draconis', 6, 5200, true, false, 2, 'CD', 31);


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

