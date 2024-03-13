--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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
    galaxy_id integer NOT NULL,
    name character varying(255) NOT NULL,
    distance_from_earth integer,
    number_of_stars integer,
    age_in_millions_of_years numeric,
    description text,
    has_life boolean NOT NULL
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
    name character varying(255) NOT NULL,
    temperature integer,
    distance_from_earth integer,
    diameter numeric,
    description text,
    has_life boolean NOT NULL,
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
    name character varying(255) NOT NULL,
    distance_from_earth integer,
    number_of_stars integer,
    age_in_millions_of_years numeric,
    description text,
    is_spherical boolean NOT NULL,
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
-- Name: spacecraft; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.spacecraft (
    spacecraft_id integer NOT NULL,
    name character varying(255) NOT NULL,
    mission_type character varying(255) NOT NULL,
    launch_date date,
    is_manned boolean NOT NULL,
    destination character varying(255)
);


ALTER TABLE public.spacecraft OWNER TO freecodecamp;

--
-- Name: spacecraft_spacecraft_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.spacecraft_spacecraft_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spacecraft_spacecraft_id_seq OWNER TO freecodecamp;

--
-- Name: spacecraft_spacecraft_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.spacecraft_spacecraft_id_seq OWNED BY public.spacecraft.spacecraft_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(255) NOT NULL,
    temperature integer,
    distance_from_earth numeric,
    diameter numeric,
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
-- Name: spacecraft spacecraft_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.spacecraft ALTER COLUMN spacecraft_id SET DEFAULT nextval('public.spacecraft_spacecraft_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda', 2537000, 1000000000, 10000, 'The nearest spiral galaxy to the Milky Way', false);
INSERT INTO public.galaxy VALUES (2, 'Triangulum', 3000000, 40000000, 13000, 'Part of the Local Group', false);
INSERT INTO public.galaxy VALUES (3, 'Sombrero', 29000000, 800000000, 12500, 'Known for its bright nucleus and large central bulge', false);
INSERT INTO public.galaxy VALUES (4, 'Whirlpool', 23000, 10000, 14000, 'A classical spiral galaxy', false);
INSERT INTO public.galaxy VALUES (5, 'Large Magellanic Cloud', 163000, 10000, 1400, 'A satellite galaxy of the Milky Way, visible from the Southern Hemisphere.', false);
INSERT INTO public.galaxy VALUES (6, 'Messier 87', 5300, 1000, 1200, 'A supergiant elliptical galaxy in the Virgo constellation with a massive black hole at its center.', false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', -20, 384, 3474.8, 'The Earth''s only natural satellite.', false, 1);
INSERT INTO public.moon VALUES (2, 'Phobos', -40, 6280, 22.2, 'Largest moon of Mars, with a fearfully fast orbit.', false, 2);
INSERT INTO public.moon VALUES (3, 'Deimos', -45, 23460, 12.4, 'Smaller, outer moon of Mars, named after dread.', false, 2);
INSERT INTO public.moon VALUES (4, 'Io', -130, 628300, 3643.2, 'Volcanically active moon of Jupiter.', false, 3);
INSERT INTO public.moon VALUES (5, 'Europa', -160, 670900, 3121.6, 'Icy surface with a potential subsurface ocean.', false, 3);
INSERT INTO public.moon VALUES (6, 'Ganymede', -140, 1070400, 5268.2, 'Largest moon in the Solar System.', false, 3);
INSERT INTO public.moon VALUES (7, 'Callisto', -140, 1882700, 4820.6, 'A heavily cratered moon of Jupiter.', false, 3);
INSERT INTO public.moon VALUES (8, 'Titan', -180, 1216000, 5150, 'Largest moon of Saturn, with thick atmosphere.', false, 4);
INSERT INTO public.moon VALUES (9, 'Rhea', -174, 527040, 1527.6, 'Second largest moon of Saturn, icy body.', false, 4);
INSERT INTO public.moon VALUES (10, 'Iapetus', -143, 3561300, 1468.6, 'Third largest moon of Saturn, two-faced.', false, 4);
INSERT INTO public.moon VALUES (11, 'Miranda', -187, 2610000, 471.6, 'One of Uranus'' moons, with dramatic cliffs.', false, 5);
INSERT INTO public.moon VALUES (12, 'Ariel', -183, 1910200, 1157.8, 'Brightest of Uranus'' large moons.', false, 5);
INSERT INTO public.moon VALUES (13, 'Umbriel', -185, 2660000, 1169.4, 'Dark moon of Uranus, with a mysterious crater.', false, 5);
INSERT INTO public.moon VALUES (14, 'Titania', -182, 4359100, 1577.8, 'Largest moon of Uranus, with canyons.', false, 5);
INSERT INTO public.moon VALUES (15, 'Oberon', -193, 5835200, 1522.8, 'Second largest moon of Uranus, icy.', false, 5);
INSERT INTO public.moon VALUES (16, 'Triton', -235, 3547600, 2706.8, 'Largest moon of Neptune, orbits backward.', false, 6);
INSERT INTO public.moon VALUES (17, 'Nereid', -235, 5513800, 340, 'One of Neptune''s outer moons, with an erratic orbit.', false, 6);
INSERT INTO public.moon VALUES (18, 'Charon', -220, 4867000, 1212, 'Largest moon of Pluto, nearly half its size.', false, 7);
INSERT INTO public.moon VALUES (19, 'Nix', -223, 4868000, 50, 'A small natural satellite of Pluto.', false, 7);
INSERT INTO public.moon VALUES (20, 'Hydra', -225, 4869000, 45, 'Another small moon orbiting Pluto.', false, 7);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 58, 0, 4500, 'The smallest planet in our Solar System.', true, 1);
INSERT INTO public.planet VALUES (2, 'Venus', 108, 0, 4500, 'Second planet from the Sun with a toxic atmosphere.', true, 1);
INSERT INTO public.planet VALUES (3, 'Earth', 150, 1, 4500, 'Our home planet, the only one known to harbor life.', true, 1);
INSERT INTO public.planet VALUES (4, 'Mars', 228, 2, 4500, 'The Red Planet, known for its dust storms.', true, 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', 778, 79, 4500, 'The largest planet in our Solar System.', true, 1);
INSERT INTO public.planet VALUES (6, 'Saturn', 1434, 82, 4500, 'Famous for its beautiful ring system.', true, 1);
INSERT INTO public.planet VALUES (7, 'Uranus', 2871, 27, 4500, 'An ice giant with a unique tilt.', true, 1);
INSERT INTO public.planet VALUES (8, 'Neptune', 4495, 14, 4500, 'The farthest known planet from the Sun in our Solar System.', true, 1);
INSERT INTO public.planet VALUES (9, 'Proxima Centauri b', 40, 0, 4500, 'An exoplanet orbiting within the habitable zone of Proxima Centauri.', true, 2);
INSERT INTO public.planet VALUES (10, 'Kepler-442b', 1200, 0, 4500, 'One of the most Earth-like exoplanets discovered.', true, 3);
INSERT INTO public.planet VALUES (11, 'TRAPPIST-1d', 40, 7, 4500, 'Part of a system with seven Earth-sized planets.', true, 4);
INSERT INTO public.planet VALUES (12, 'LHS 1140 b', 15, 0, 5000, 'A super-Earth exoplanet in the habitable zone of its star.', true, 5);


--
-- Data for Name: spacecraft; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.spacecraft VALUES (1, 'Voyager 1', 'Interstellar', '1977-09-05', false, 'Interstellar Space');
INSERT INTO public.spacecraft VALUES (2, 'Curiosity Rover', 'Mars Rover', '2011-11-26', false, 'Mars');
INSERT INTO public.spacecraft VALUES (3, 'Apollo 11', 'Lunar Landing', '1969-07-16', true, 'Moon');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 5772, 0, 1.3927, 1);
INSERT INTO public.star VALUES (2, 'Proxima Centauri', 3042, 4.24, 0.1542, 1);
INSERT INTO public.star VALUES (3, 'Betelgeuse', 3500, 642.5, 887, 1);
INSERT INTO public.star VALUES (4, 'Alpha Centauri A', 5790, 4.37, 1.227, 1);
INSERT INTO public.star VALUES (5, 'Sirius', 9940, 8.6, 1.711, 1);
INSERT INTO public.star VALUES (6, 'Vega', 9602, 25, 2.362, 1);


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

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: spacecraft_spacecraft_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.spacecraft_spacecraft_id_seq', 3, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


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
-- Name: spacecraft spacecraft_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.spacecraft
    ADD CONSTRAINT spacecraft_name_key UNIQUE (name);


--
-- Name: spacecraft spacecraft_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.spacecraft
    ADD CONSTRAINT spacecraft_pkey PRIMARY KEY (spacecraft_id);


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

