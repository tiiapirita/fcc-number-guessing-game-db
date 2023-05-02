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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    user_id integer NOT NULL,
    guesses integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 30, 608);
INSERT INTO public.games VALUES (2, 30, 556);
INSERT INTO public.games VALUES (3, 31, 163);
INSERT INTO public.games VALUES (4, 31, 514);
INSERT INTO public.games VALUES (5, 30, 536);
INSERT INTO public.games VALUES (6, 30, 542);
INSERT INTO public.games VALUES (7, 30, 161);
INSERT INTO public.games VALUES (8, 29, 14);
INSERT INTO public.games VALUES (9, 32, 299);
INSERT INTO public.games VALUES (10, 32, 434);
INSERT INTO public.games VALUES (11, 33, 564);
INSERT INTO public.games VALUES (12, 33, 485);
INSERT INTO public.games VALUES (13, 32, 497);
INSERT INTO public.games VALUES (14, 32, 290);
INSERT INTO public.games VALUES (15, 32, 375);
INSERT INTO public.games VALUES (16, 29, 3);
INSERT INTO public.games VALUES (17, 34, 372);
INSERT INTO public.games VALUES (18, 34, 616);
INSERT INTO public.games VALUES (19, 35, 478);
INSERT INTO public.games VALUES (20, 35, 636);
INSERT INTO public.games VALUES (21, 34, 625);
INSERT INTO public.games VALUES (22, 34, 130);
INSERT INTO public.games VALUES (23, 34, 143);
INSERT INTO public.games VALUES (24, 29, 23);
INSERT INTO public.games VALUES (25, 36, 1);
INSERT INTO public.games VALUES (26, 36, 582);
INSERT INTO public.games VALUES (27, 37, 393);
INSERT INTO public.games VALUES (28, 37, 187);
INSERT INTO public.games VALUES (29, 36, 11);
INSERT INTO public.games VALUES (30, 36, 596);
INSERT INTO public.games VALUES (31, 36, 545);
INSERT INTO public.games VALUES (32, 38, 479);
INSERT INTO public.games VALUES (33, 38, 567);
INSERT INTO public.games VALUES (34, 39, 615);
INSERT INTO public.games VALUES (35, 39, 571);
INSERT INTO public.games VALUES (36, 38, 218);
INSERT INTO public.games VALUES (37, 38, 28);
INSERT INTO public.games VALUES (38, 38, 590);
INSERT INTO public.games VALUES (39, 29, 20);
INSERT INTO public.games VALUES (40, 40, 454);
INSERT INTO public.games VALUES (41, 40, 12);
INSERT INTO public.games VALUES (42, 41, 573);
INSERT INTO public.games VALUES (43, 41, 247);
INSERT INTO public.games VALUES (44, 40, 615);
INSERT INTO public.games VALUES (45, 40, 628);
INSERT INTO public.games VALUES (46, 40, 625);
INSERT INTO public.games VALUES (47, 29, 1);
INSERT INTO public.games VALUES (48, 29, 1);
INSERT INTO public.games VALUES (49, 29, 1);
INSERT INTO public.games VALUES (50, 29, 7);
INSERT INTO public.games VALUES (51, 42, 232);
INSERT INTO public.games VALUES (52, 42, 113);
INSERT INTO public.games VALUES (53, 42, 387);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'user_1683016451940');
INSERT INTO public.users VALUES (3, 'user_1683016451939');
INSERT INTO public.users VALUES (8, 'user_1683016796597');
INSERT INTO public.users VALUES (10, 'user_1683016796596');
INSERT INTO public.users VALUES (15, 'user_1683016977015');
INSERT INTO public.users VALUES (17, 'user_1683016977014');
INSERT INTO public.users VALUES (22, 'user_1683017836786');
INSERT INTO public.users VALUES (24, 'user_1683017836785');
INSERT INTO public.users VALUES (29, 'Tiia');
INSERT INTO public.users VALUES (30, 'user_1683019382251');
INSERT INTO public.users VALUES (31, 'user_1683019382250');
INSERT INTO public.users VALUES (32, 'user_1683019566126');
INSERT INTO public.users VALUES (33, 'user_1683019566125');
INSERT INTO public.users VALUES (34, 'user_1683019714903');
INSERT INTO public.users VALUES (35, 'user_1683019714902');
INSERT INTO public.users VALUES (36, 'user_1683019848562');
INSERT INTO public.users VALUES (37, 'user_1683019848561');
INSERT INTO public.users VALUES (38, 'user_1683020074947');
INSERT INTO public.users VALUES (39, 'user_1683020074946');
INSERT INTO public.users VALUES (40, 'user_1683020224544');
INSERT INTO public.users VALUES (41, 'user_1683020224543');
INSERT INTO public.users VALUES (42, 'user_1683021004307');
INSERT INTO public.users VALUES (43, 'user_1683021004306');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 53, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 43, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

