--
-- PostgreSQL database dump
--

\restrict tatdWNeXYa94xIjnQTSaBHV4f6Vcw2Po0AHlcIkmVFyCE0xflSg4jukEjKSP5zU

-- Dumped from database version 18.3
-- Dumped by pg_dump version 18.3

-- Started on 2026-06-08 07:56:44

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

--
-- TOC entry 7 (class 2615 OID 16389)
-- Name: pgagent; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA pgagent;


ALTER SCHEMA pgagent OWNER TO postgres;

--
-- TOC entry 5148 (class 0 OID 0)
-- Dependencies: 7
-- Name: SCHEMA pgagent; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA pgagent IS 'pgAgent system tables';


--
-- TOC entry 2 (class 3079 OID 16390)
-- Name: pgagent; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS pgagent WITH SCHEMA pgagent;


--
-- TOC entry 5149 (class 0 OID 0)
-- Dependencies: 2
-- Name: EXTENSION pgagent; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION pgagent IS 'A PostgreSQL job scheduler';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 242 (class 1259 OID 16635)
-- Name: cars; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cars (
    brand character varying(255),
    model character varying(255),
    year integer
);


ALTER TABLE public.cars OWNER TO postgres;

--
-- TOC entry 240 (class 1259 OID 16623)
-- Name: customers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.customers (
    customerid integer,
    name character varying(50)
);


ALTER TABLE public.customers OWNER TO postgres;

--
-- TOC entry 241 (class 1259 OID 16626)
-- Name: orders; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.orders (
    orderid integer,
    customerid integer,
    total integer
);


ALTER TABLE public.orders OWNER TO postgres;

--
-- TOC entry 243 (class 1259 OID 16649)
-- Name: shop_customers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.shop_customers (
    customer_id integer,
    name character varying(50),
    country character varying(50)
);


ALTER TABLE public.shop_customers OWNER TO postgres;

--
-- TOC entry 244 (class 1259 OID 16652)
-- Name: shop_items; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.shop_items (
    item_id integer,
    order_id integer,
    product character varying(50),
    quantity integer,
    price integer
);


ALTER TABLE public.shop_items OWNER TO postgres;

--
-- TOC entry 245 (class 1259 OID 16655)
-- Name: shop_orders; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.shop_orders (
    order_id integer,
    customer_id integer,
    order_date character varying(50),
    amount integer
);


ALTER TABLE public.shop_orders OWNER TO postgres;

--
-- TOC entry 4918 (class 0 OID 16391)
-- Dependencies: 225
-- Data for Name: pga_jobagent; Type: TABLE DATA; Schema: pgagent; Owner: postgres
--

COPY pgagent.pga_jobagent (jagpid, jaglogintime, jagstation) FROM stdin;
3628	2026-05-27 01:34:53.414846+02	OMENNZ
\.


--
-- TOC entry 4919 (class 0 OID 16403)
-- Dependencies: 227
-- Data for Name: pga_jobclass; Type: TABLE DATA; Schema: pgagent; Owner: postgres
--

COPY pgagent.pga_jobclass (jclid, jclname) FROM stdin;
\.


--
-- TOC entry 4920 (class 0 OID 16415)
-- Dependencies: 229
-- Data for Name: pga_job; Type: TABLE DATA; Schema: pgagent; Owner: postgres
--

COPY pgagent.pga_job (jobid, jobjclid, jobname, jobdesc, jobhostagent, jobenabled, jobcreated, jobchanged, jobagentid, jobnextrun, joblastrun) FROM stdin;
\.


--
-- TOC entry 4922 (class 0 OID 16481)
-- Dependencies: 233
-- Data for Name: pga_schedule; Type: TABLE DATA; Schema: pgagent; Owner: postgres
--

COPY pgagent.pga_schedule (jscid, jscjobid, jscname, jscdesc, jscenabled, jscstart, jscend, jscminutes, jschours, jscweekdays, jscmonthdays, jscmonths) FROM stdin;
\.


--
-- TOC entry 4923 (class 0 OID 16520)
-- Dependencies: 235
-- Data for Name: pga_exception; Type: TABLE DATA; Schema: pgagent; Owner: postgres
--

COPY pgagent.pga_exception (jexid, jexscid, jexdate, jextime) FROM stdin;
\.


--
-- TOC entry 4924 (class 0 OID 16536)
-- Dependencies: 237
-- Data for Name: pga_joblog; Type: TABLE DATA; Schema: pgagent; Owner: postgres
--

COPY pgagent.pga_joblog (jlgid, jlgjobid, jlgstatus, jlgstart, jlgduration) FROM stdin;
\.


--
-- TOC entry 4921 (class 0 OID 16447)
-- Dependencies: 231
-- Data for Name: pga_jobstep; Type: TABLE DATA; Schema: pgagent; Owner: postgres
--

COPY pgagent.pga_jobstep (jstid, jstjobid, jstname, jstdesc, jstenabled, jstkind, jstcode, jstconnstr, jstdbname, jstonerror, jscnextrun) FROM stdin;
\.


--
-- TOC entry 4925 (class 0 OID 16556)
-- Dependencies: 239
-- Data for Name: pga_jobsteplog; Type: TABLE DATA; Schema: pgagent; Owner: postgres
--

COPY pgagent.pga_jobsteplog (jslid, jsljlgid, jsljstid, jslstatus, jslresult, jslstart, jslduration, jsloutput) FROM stdin;
\.


--
-- TOC entry 5139 (class 0 OID 16635)
-- Dependencies: 242
-- Data for Name: cars; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cars (brand, model, year) FROM stdin;
Ford	Mustang	1964
Volvo	p1800	1968
BMW	M1	1978
Toyota	Celica	1975
\.


--
-- TOC entry 5137 (class 0 OID 16623)
-- Dependencies: 240
-- Data for Name: customers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.customers (customerid, name) FROM stdin;
1	Alice
2	Bob
3	Carol
\.


--
-- TOC entry 5138 (class 0 OID 16626)
-- Dependencies: 241
-- Data for Name: orders; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.orders (orderid, customerid, total) FROM stdin;
101	1	50
102	1	75
103	2	20
\.


--
-- TOC entry 5140 (class 0 OID 16649)
-- Dependencies: 243
-- Data for Name: shop_customers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.shop_customers (customer_id, name, country) FROM stdin;
2001	Alice Johnson	USA
2002	Bob Smith	Canada
2003	Charlie Brown	Germany
2005	Ethan Clark	France
2006	Fiona Davis	USA
2007	George Miller	Canada
2010	Julia Taylor	France
2011	Kevin Anderson	USA
2012	Laura Thomas	Canada
2013	Michael White	Germany
2014	Nina Harris	Poland
2016	Paula Thompson	USA
2017	Quentin Garcia	Canada
2018	Rachel Martinez	Germany
2020	Tina Lewis	France
2004	Diana Kowalska	Poland
2008	Hannah Wilson	USA
2009	Ewa Nowak	Poland
2015	Oskar Marcin	Poland
2019	Jan Kowalski	Poland
\.


--
-- TOC entry 5141 (class 0 OID 16652)
-- Dependencies: 244
-- Data for Name: shop_items; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.shop_items (item_id, order_id, product, quantity, price) FROM stdin;
9001	5001	Gaming Laptop	1	1200
9002	5002	Mechanical Keyboard	2	150
9003	5003	Gaming Monitor	1	450
9004	5004	Wireless Mouse	3	40
9005	5005	Graphics Card RTX 4070	1	2100
9006	5006	SSD 1TB	2	120
9007	5007	Gaming Laptop	1	760
9008	5008	Gaming Monitor	2	660
9009	5009	Graphics Card RTX 4070	1	1750
9010	5010	Mechanical Keyboard	3	120
9011	5011	Gaming Laptop	2	1200
9012	5012	Wireless Mouse	4	35
9013	5013	SSD 1TB	3	140
9014	5014	Gaming Monitor	1	990
9015	5015	Graphics Card RTX 4070	1	1840
9016	5016	Mechanical Keyboard	2	110
9017	5017	Gaming Laptop	1	1650
9018	5018	SSD 1TB	4	280
9019	5019	Gaming Monitor	2	1025
9020	5020	Wireless Mouse	5	38
\.


--
-- TOC entry 5142 (class 0 OID 16655)
-- Dependencies: 245
-- Data for Name: shop_orders; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.shop_orders (order_id, customer_id, order_date, amount) FROM stdin;
5001	2001	2025-01-10	1200
5002	2002	2025-01-12	850
5003	2003	2025-01-15	1450
5004	2004	2025-01-18	670
5005	2005	2025-01-20	2100
5006	2006	2025-01-23	980
5007	2007	2025-01-25	760
5008	2008	2025-01-28	1320
5009	2009	2025-02-01	1750
5010	2010	2025-02-03	890
5011	2011	2025-02-05	2400
5012	2012	2025-02-08	640
5013	2013	2025-02-10	1580
5014	2014	2025-02-12	990
5015	2015	2025-02-15	1840
5016	2016	2025-02-18	720
5017	2017	2025-02-20	1650
5018	2018	2025-02-22	1120
5019	2019	2025-02-25	2050
5020	2020	2025-02-28	940
\.


-- Completed on 2026-06-08 07:56:44

--
-- PostgreSQL database dump complete
--

\unrestrict tatdWNeXYa94xIjnQTSaBHV4f6Vcw2Po0AHlcIkmVFyCE0xflSg4jukEjKSP5zU

