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
    number integer NOT NULL,
    tries integer
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

INSERT INTO public.games VALUES (1, 2, 855, 3);
INSERT INTO public.games VALUES (2, 2, 931, 5);
INSERT INTO public.games VALUES (3, 2, 772, 2);
INSERT INTO public.games VALUES (4, 5, 272, 273);
INSERT INTO public.games VALUES (5, 6, 723, NULL);
INSERT INTO public.games VALUES (6, 5, 471, NULL);
INSERT INTO public.games VALUES (7, 5, 505, NULL);
INSERT INTO public.games VALUES (8, 5, 657, NULL);
INSERT INTO public.games VALUES (9, 2, 194, 5);
INSERT INTO public.games VALUES (10, 2, 651, 2);
INSERT INTO public.games VALUES (11, 2, 71, 3);
INSERT INTO public.games VALUES (12, 10, 255, 6);
INSERT INTO public.games VALUES (13, 2, 441, 3);
INSERT INTO public.games VALUES (14, 11, 803, 4);
INSERT INTO public.games VALUES (15, 9, 986, 4);
INSERT INTO public.games VALUES (16, 2, 670, 1);
INSERT INTO public.games VALUES (17, 12, 408, 5);
INSERT INTO public.games VALUES (18, 13, 88, 89);
INSERT INTO public.games VALUES (19, 13, 413, NULL);
INSERT INTO public.games VALUES (20, 14, 760, NULL);
INSERT INTO public.games VALUES (21, 14, 266, 267);
INSERT INTO public.games VALUES (22, 13, 421, 424);
INSERT INTO public.games VALUES (23, 13, 174, 175);
INSERT INTO public.games VALUES (24, 13, 772, NULL);
INSERT INTO public.games VALUES (25, 2, 580, 11);
INSERT INTO public.games VALUES (26, 15, 376, 17);
INSERT INTO public.games VALUES (27, 16, 206, 207);
INSERT INTO public.games VALUES (28, 16, 862, NULL);
INSERT INTO public.games VALUES (29, 17, 536, NULL);
INSERT INTO public.games VALUES (30, 17, 114, 115);
INSERT INTO public.games VALUES (31, 16, 379, NULL);
INSERT INTO public.games VALUES (32, 16, 963, NULL);
INSERT INTO public.games VALUES (33, 16, 403, NULL);
INSERT INTO public.games VALUES (34, 18, 937, NULL);
INSERT INTO public.games VALUES (35, 18, 146, 147);
INSERT INTO public.games VALUES (36, 19, 763, NULL);
INSERT INTO public.games VALUES (37, 19, 845, NULL);
INSERT INTO public.games VALUES (38, 18, 462, NULL);
INSERT INTO public.games VALUES (39, 18, 707, NULL);
INSERT INTO public.games VALUES (40, 18, 468, NULL);
INSERT INTO public.games VALUES (41, 2, 848, NULL);
INSERT INTO public.games VALUES (42, 2, 786, NULL);
INSERT INTO public.games VALUES (43, 2, 880, NULL);
INSERT INTO public.games VALUES (44, 2, 482, NULL);
INSERT INTO public.games VALUES (45, 2, 156, NULL);
INSERT INTO public.games VALUES (46, 2, 638, NULL);
INSERT INTO public.games VALUES (47, 2, 268, 5);
INSERT INTO public.games VALUES (48, 2, 540, 4);
INSERT INTO public.games VALUES (49, 2, 447, 4);
INSERT INTO public.games VALUES (50, 20, 720, 721);
INSERT INTO public.games VALUES (51, 20, 19, 20);
INSERT INTO public.games VALUES (52, 21, 82, 83);
INSERT INTO public.games VALUES (53, 21, 975, 976);
INSERT INTO public.games VALUES (54, 20, 581, 584);
INSERT INTO public.games VALUES (55, 20, 3, 4);
INSERT INTO public.games VALUES (56, 20, 406, 407);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'Pooley');
INSERT INTO public.users VALUES (2, 'test');
INSERT INTO public.users VALUES (3, 'user_1722894205984');
INSERT INTO public.users VALUES (4, 'user_1722894205983');
INSERT INTO public.users VALUES (5, 'user_1722895829255');
INSERT INTO public.users VALUES (6, 'user_1722895829254');
INSERT INTO public.users VALUES (7, 'gamer');
INSERT INTO public.users VALUES (8, 'smithy');
INSERT INTO public.users VALUES (9, 'janet');
INSERT INTO public.users VALUES (10, 'jason');
INSERT INTO public.users VALUES (11, 'michael');
INSERT INTO public.users VALUES (12, 'jonathan');
INSERT INTO public.users VALUES (13, 'user_1722898504240');
INSERT INTO public.users VALUES (14, 'user_1722898504239');
INSERT INTO public.users VALUES (15, 'testy');
INSERT INTO public.users VALUES (16, 'user_1722899051320');
INSERT INTO public.users VALUES (17, 'user_1722899051319');
INSERT INTO public.users VALUES (18, 'user_1722899201991');
INSERT INTO public.users VALUES (19, 'user_1722899201990');
INSERT INTO public.users VALUES (20, 'user_1722900761311');
INSERT INTO public.users VALUES (21, 'user_1722900761310');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 56, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 21, true);


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

