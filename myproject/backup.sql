--
-- PostgreSQL database dump
--

-- Dumped from database version 16.3
-- Dumped by pg_dump version 16.3

-- Started on 2024-09-17 10:28:47

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

--
-- TOC entry 8 (class 2615 OID 17595)
-- Name: topology; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA topology;


ALTER SCHEMA topology OWNER TO postgres;

--
-- TOC entry 5964 (class 0 OID 0)
-- Dependencies: 8
-- Name: SCHEMA topology; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA topology IS 'PostGIS Topology schema';


--
-- TOC entry 2 (class 3079 OID 16519)
-- Name: postgis; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS postgis WITH SCHEMA public;


--
-- TOC entry 5965 (class 0 OID 0)
-- Dependencies: 2
-- Name: EXTENSION postgis; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION postgis IS 'PostGIS geometry and geography spatial types and functions';


--
-- TOC entry 3 (class 3079 OID 17596)
-- Name: postgis_topology; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS postgis_topology WITH SCHEMA topology;


--
-- TOC entry 5966 (class 0 OID 0)
-- Dependencies: 3
-- Name: EXTENSION postgis_topology; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION postgis_topology IS 'PostGIS topology spatial types and functions';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 229 (class 1259 OID 18533)
-- Name: Activity; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Activity" (
    id integer NOT NULL,
    geom public.geometry(Point,32647),
    type character varying,
    lat double precision,
    lng double precision,
    area character varying,
    "time" character varying,
    facilities character varying,
    operationa character varying,
    service character varying,
    images character varying,
    contact character varying,
    note character varying
);


ALTER TABLE public."Activity" OWNER TO postgres;

--
-- TOC entry 230 (class 1259 OID 18540)
-- Name: CoffeeShop; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."CoffeeShop" (
    id integer NOT NULL,
    geom public.geometry(Point,32647),
    type character varying,
    lat double precision,
    lng double precision,
    area character varying,
    "time" character varying,
    facilities character varying,
    operationa character varying,
    service character varying,
    images character varying,
    contact character varying,
    note character varying
);


ALTER TABLE public."CoffeeShop" OWNER TO postgres;

--
-- TOC entry 231 (class 1259 OID 18547)
-- Name: EVcharger; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."EVcharger" (
    id integer NOT NULL,
    geom public.geometry(Point,32647),
    lat double precision,
    lng double precision,
    type character varying,
    area character varying,
    "time" character varying,
    operationa character varying,
    images character varying,
    contact character varying,
    note character varying
);


ALTER TABLE public."EVcharger" OWNER TO postgres;

--
-- TOC entry 232 (class 1259 OID 18554)
-- Name: PhotocopyShop; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."PhotocopyShop" (
    id integer NOT NULL,
    geom public.geometry(Point,32647),
    type character varying,
    lat double precision,
    lng double precision,
    area character varying,
    "time" character varying,
    facilities character varying,
    operationa character varying,
    service character varying,
    images character varying,
    contact character varying,
    note character varying
);


ALTER TABLE public."PhotocopyShop" OWNER TO postgres;

--
-- TOC entry 233 (class 1259 OID 18561)
-- Name: Restaurant1; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Restaurant1" (
    id integer NOT NULL,
    geom public.geometry(Point,32647),
    type character varying,
    lat double precision,
    lng double precision,
    area character varying,
    "time" character varying,
    facilities character varying,
    operationa character varying,
    service character varying,
    images character varying,
    contact character varying,
    note character varying
);


ALTER TABLE public."Restaurant1" OWNER TO postgres;

--
-- TOC entry 234 (class 1259 OID 18568)
-- Name: Store1; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Store1" (
    id integer NOT NULL,
    geom public.geometry(Point,32647),
    type character varying,
    lat double precision,
    lng double precision,
    area character varying,
    "time" character varying,
    facilities character varying,
    operationa character varying,
    service character varying,
    images character varying,
    contact character varying,
    note character varying
);


ALTER TABLE public."Store1" OWNER TO postgres;

--
-- TOC entry 235 (class 1259 OID 18575)
-- Name: data; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.data (
    id bigint NOT NULL,
    geom public.geometry(Point,32647),
    type character varying(80),
    lat numeric,
    lng numeric,
    area character varying(80),
    "time" character varying(80),
    facilities character varying(80),
    operationa character varying(80),
    service character varying(80),
    images character varying(80),
    contact character varying(132),
    note character varying(80)
);


ALTER TABLE public.data OWNER TO postgres;

--
-- TOC entry 5952 (class 0 OID 18533)
-- Dependencies: 229
-- Data for Name: Activity; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Activity" (id, geom, type, lat, lng, area, "time", facilities, operationa, service, images, contact, note) FROM stdin;
1	0101000020877F00001CAB25DEC42323416D2C90B6CE433C41	type	627170.433881	1852366.713137	สนามกีฬา อาคารอเนกประสงค์	-	สนามกีฬาในร่ม	op	-	files/20240816161632398_received_986327916572040.jpeg	sa.nu.ac.th	-
2	0101000020877F0000DD07CAE669232341E78693D6B0433C41	type	627124.95076	1852336.838189	อาคารกีฬาอเนกประสงค์ มหาวิทยาลัยนเรศวร	-	ลานจัดกิจกรรม	op	-	files/20240816161957246_received_956869069529467.jpeg	sa.nu.ac.th	-
3	0101000020877F00007353222A5A242341ECF1EE422A443C41	type	627245.082293	1852458.261459	สนามเทนนิส1	-	สนามกีฬา	op	-	files/20240816162557702_received_507805071728408.jpeg	sa.nu.ac.th	-
4	0101000020877F00009506751B3A2323417F47CA0708443C41	type	627101.053627	1852424.03043	สนามฟุตซอล1	-	สนามกีฬา	op	-	files/20240816162914818_received_469127726015005.jpeg	sa.nu.ac.th	-
5	0101000020877F00003CF461879423234182B6F3A713443C41	type	627146.264419	1852435.656063	สนามวอลเลย์บอล	-	สนามกีฬา	op	-	files/20240816163040668_received_863995861771073.jpeg	sa.nu.ac.th	-
6	0101000020877F00007057F05DEC232341F8AF7BDD21443C41	type	627190.183474	1852449.865169	สนามบาสเกตบอล	-	สนามกีฬา	op	-	files/20240816163114308_received_517491277616205.jpeg	sa.nu.ac.th	-
7	0101000020877F00000F551A83C828234105488E49D93E3C41	type	627812.25606	1851097.287327	สยามเทนนิส2	-	สนามกีฬา	op	-	files/20240816163706695_received_1628251021075857.jpeg	sa.nu.ac.th	-
8	0101000020877F0000A6DD0A6BE72823419D0C29A9763E3C41	type	627827.709067	1850998.660783	สนามกีฬา	-	สนามกีฬา	op	-	files/20240816163842618_received_1254649822368544.jpeg	sa.nu.ac.th	-
9	0101000020877F000076D819B67D272341DEC1835B01423C41	type	627646.855666	1851905.357479	สระว่ายน้ำสุพรรณกัลยา	-	สนามกีฬา	op	-	files/20240816164144124_received_528830659585161.jpeg	sa.nu.ac.th	-
10	0101000020877F00007A06AD5232272341CBE38CF530423C41	type	627609.161476	1851952.959181	อาคารกีฬาในร่ม	-	สนามกีฬา	op	-	files/20240816164503768_received_413650251730999.jpeg	sa.nu.ac.th	-
11	0101000020877F00001D36C608E4262341500B464F16423C41	type	627570.017137	1851926.309663	สนามเปตอง	-	สนามกีฬา	op	-	files/20240816170107822_received_1029849518721476.jpeg	sa.nu.ac.th	-
12	0101000020877F0000DA2E85D1EA272341B72AC05D18403C41	type	627701.409219	1851416.366213	สนามฟุตบอล 2 มหาวิทยาลัยนเรศวร	-	สนามกีฬา	op	-	files/20240816171402200_received_1163691544921870.jpeg	sa.nu.ac.th	-
\.


--
-- TOC entry 5953 (class 0 OID 18540)
-- Dependencies: 230
-- Data for Name: CoffeeShop; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."CoffeeShop" (id, geom, type, lat, lng, area, "time", facilities, operationa, service, images, contact, note) FROM stdin;
1	0101000020877F00008DBB798CF8222341C32F97FAA4413C41	type	627068.274366	1851812.978869	ใต้ตึกคณะวิทยาศาสตร์การแพทย์	09:00-17:00	ที่นั่ง	op	น้ำดื่ม,ชา,กาแฟ	files/20240723062902985_IMG_25670722_155750.jpg	-	-
2	0101000020877F000006B1AAA99C22234100F6DE7BFA413C41	type	627022.33138	1851898.483871	Rakun cha สาขามหาวิทยาลัยนเรศวร พิษณุโลก ข้างคณะเภสัชศาสตร์	09:00-17:00	ที่นั่ง	op	น้ำดื่ม,ชา,กาแฟ	files/20240723063114112_IMG_25670722_155634.jpg	-	-
3	0101000020877F0000E29F8D2383222341DD79CCC5D3413C41	type	627009.56944	1851859.772651	Dee-cafe  ข้างคณะวิทยาศาสตร์การแพทย์	09:00-17:00	ที่นั่ง	op	น้ำดื่ม,ชา,กาแฟ	files/20240723063550845_IMG_25670722_155619.jpg	-	-
4	0101000020877F0000C579CE9763242341C69C9597E23F3C41	type	627249.796497	1851362.592127	Coffee at Science ใต้ตึกกลางคณะวิทยาศาสตร์	09:00-17:00	ที่นั่ง	op	น้ำดื่ม,ชา,กาแฟ	files/20240723063847363_IMG_25670722_154149.jpg	-	-
5	0101000020877F00004C0BEA7C4B252341A2ACC1700F433C41	type	627365.743973	1852175.440455	WYNE COFFEE คณะมนุษยศาสตร์	08:00-17:00	ที่นั่ง	op	น้ำดื่ม,ชา,กาแฟ	files/20240723064538185_IMG_25670722_161436.jpg	-	-
6	0101000020877F0000503FD780FB262341FB90C0C3E9423C41	type	627581.751642	1852137.764657	Café Amazon สาขาคณะบริหารธุรกิจ เศรษฐศาสตร์และการสื่อสาร	09:00-17:00	ที่นั่ง	op	น้ำดื่ม,ชา,กาแฟ	files/20240723064636138_IMG_25670722_161223.jpg	-	-
7	0101000020877F0000755A5FF26B242341B3B8F05EA1413C41	type	627253.973384	1851809.370861	Love Lib café หน้าสำนักหอสมุด	09:00-17:00	ที่นั่ง	op	น้ำดื่ม,ชา,กาแฟ	files/20240723064924240_IMG_25670722_155958.jpg	-	-
8	0101000020877F0000D691CE2F07202341CCC9374A4D423C41	type	626691.593373	1851981.289914	Café Amazon สาขาโรงพยาบาลมหาวิทยาลัยนเรศวร	09:00-17:00	ที่นั่ง	op	น้ำดื่ม,ชา,กาแฟ	files/20240730020610884_IMG_25670729_171744.jpg	-	-
9	0101000020877F0000CF0CA78A68202341D6668E518B423C41	type	626740.270806	1852043.318579	ร้าน ผึ้งน้อย เบอเกอรี่ สาขา โรงพยาบาล ม.นเรศวร	09:00-17:00	ที่นั่ง	op	น้ำดื่ม,ชา,กาแฟ	files/20240730021102619_IMG_25670729_171644.jpg	-	-
10	0101000020877F000087F395A87020234156174A1D93423C41	type	626744.329269	1852051.114412	Black Canyon คณะ​แพทยศาสต​ร์ มหาวิทยาลัย​นเรศวร	09:00-17:00	ที่นั่ง	op	น้ำดื่ม,ชา,กาแฟ	files/20240730021313986_IMG_25670729_171632.jpg	-	-
11	0101000020877F0000405800D377202341F914E0919A423C41	type	626747.912112	1852058.569825	ทางเดินโรงพยาบาลมหาวิทยาลัยนเรศวร	09:00-17:00	ที่นั่ง	op	น้ำดื่ม,ชา,กาแฟ	files/20240730021404899_IMG_25670729_171605.jpg	-	-
12	0101000020877F0000EA83BF4B452023413E1D423C5F423C41	type	626722.647946	1851999.235384	Fresh me สาขารพ.มหาวิทยาลัยนเรศวร	09:00-17:00	ที่นั่ง	op	น้ำดื่ม,ชา,กาแฟ	files/20240730021643563_IMG_25670729_171710.jpg	-	-
13	0101000020877F00009CF777A4A0252341DA636694DE403C41	type	627408.321228	1851614.579687	USIT    คณะวิศวกรรมศาสตร์ มหาวิทยาลัยนเรศวร	09:00-17:00	ที่นั่ง	op	น้ำดื่ม,ชา,กาแฟ	files/20240723062902985_IMG_25670722_155750.jpg	-	-
\.


--
-- TOC entry 5954 (class 0 OID 18547)
-- Dependencies: 231
-- Data for Name: EVcharger; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."EVcharger" (id, geom, lat, lng, type, area, "time", operationa, images, contact, note) FROM stdin;
1	0101000020877F00000D480C2516292341A48167BD233E3C41	627851.072359	1850915.739861	type	หน้า N จอย	24 ชม.	operational	files/20240817202641551_IMG_25670729_173025.jpg	-	-
2	0101000020877F00001EE45D8BB224234179E4BA97D43E3C41	627289.272201	1851092.592696	type	-	24 ชม.	operational	files/20240817202930819_IMG_25670729_172632.jpg	-	-
\.


--
-- TOC entry 5955 (class 0 OID 18554)
-- Dependencies: 232
-- Data for Name: PhotocopyShop; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."PhotocopyShop" (id, geom, type, lat, lng, area, "time", facilities, operationa, service, images, contact, note) FROM stdin;
1	0101000020877F0000F21522FD092923411E1CF034373E3C41	type	627844.994401	1850935.206789	1	08:00-16:30	คอมพิวเตอร์และถ่ายเอกสาร	op	ราคาการถ่ายเอกสารตามจำนวนกระดาษแลเและการใช้สี	files/20240723014254097_IMG_25670722_154555.jpg	ตรงข้ามที่จอดรถหอพักชาย	-
2	0101000020877F0000400D2054CE242341A1527C4BA93F3C41	type	627303.164307	1851305.294866	2	08:30-16:30	ถ่ายเอกสาร	op	ราคาขึ้นอยู่กับจำนวนกระดาษและสีที่ใช้	files/20240723014542480_IMG_25670722_153817.jpg	ใต้ตึกคณะวิทยาศาสตร์ สาขาวิชาฟิสิกส์	-
3	0101000020877F000049B8C34931252341BDC3E34CE5413C41	type	627352.644071	1851877.30035	3	08:30-16:30	ถ่ายเอกสาร	op	ราคาขึ้นอยู่กับจะนวนกระดาษและสีที่ใช้	files/20240723014931030_IMG_25670722_161022.jpg	ใต้ตึกคณะสถาปัตยกรรมศาสตร์ศิลปะและการออดแบบ	-
\.


--
-- TOC entry 5956 (class 0 OID 18561)
-- Dependencies: 233
-- Data for Name: Restaurant1; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Restaurant1" (id, geom, type, lat, lng, area, "time", facilities, operationa, service, images, contact, note) FROM stdin;
1	0101000020877F00001AE25196BD2823419880FAE7093E3C41	type	627806.793593	1850889.906166	ศูนย์อาหาร NU (หอใน)	07:00-19:00	ที่นั่ง	op	อาหารตามสั่ง, เครื่องดื่ม, ของว่าง, ข้าวราดแกง, ผลไม้	files/20240817075906781_IMG_25670817_142046.jpg	-	-
2	0101000020877F0000643BAC56EB242341F581C46DAB3F3C41	type	627317.669283	1851307.42878	ภาควิชาฟิสิกส์ คณะวิทยาศาสตร์	07:00-19:00	ที่นั่ง	op	อาหารตามสั่ง, เครื่องดื่ม, ของว่าง, ข้าวราดแกง	files/20240817080119351_IMG_25670817_142358.jpg	-	-
3	0101000020877F00004A46660159242341E918133831403C41	type	627244.502733	1851441.219041	ภาควิชาวิทยาการคอมพิวเตอร์และเทคโนโลยีสารสนเทศ คณะวิทยาศาสตร์	07:00-16:00	ที่นั่ง	op	อาหารตามสั่ง, เครื่องดื่ม, ของว่าง, ข้าวราดแกง	files/20240817080607302_IMG_25670817_142710.jpg	-	-
4	0101000020877F0000358768C524242341C440EDE6E8403C41	type	627218.385563	1851624.902058	ศูนย์อาหาร NU Canteen	07:00-17:00	ที่นั่ง	op	อาหารตามสั่ง, เครื่องดื่ม, ของว่าง, ข้าวราดแกง, ผลไม้	files/20240817080712582_IMG_25670817_143014.jpg	-	-
5	0101000020877F00000A4480F5DF2223412E6EBB44B4413C41	type	627055.979494	1851828.268485	คณะวิทยาศาสตร์การแพทย์ มหาวิทยาลัยนเรศวร	07:00-17:00	ที่นั่ง	op	อาหารตามสั่ง, เครื่องดื่ม, ของว่าง, ข้าวราดแกง, ผลไม้	files/20240817081004375_IMG_25670817_143336.jpg	-	-
6	0101000020877F0000148042A62F232341B20A65D937423C41	type	627095.824726	1851959.849198	อาคารเฉลิมพระเกียรติ 72 พรรษา (อาคารเรียนรวม QS)	07:00-17:00	ที่นั่ง	op	อาหารตามสั่ง, เครื่องดื่ม, ของว่าง	files/20240817081032593_IMG_25670817_143746.jpg	-	-
7	0101000020877F000013C8DC84B6212341CEB537063D423C41	type	626907.259497	1851965.024288	คณะเภสัชศาสตร์	07:00-17:00	ที่นั่ง	op	อาหารตามสั่ง, เครื่องดื่ม, ของว่าง	files/20240817081528197_IMG_25670817_144345.jpg	-	-
8	0101000020877F00004060BC3B7020234139A0902273423C41	type	626744.116672	1852019.135019	โรงอาหารโรงพยาบาลนเรศวร	07:00-19:00	ที่นั่ง	op	อาหารตามสั่ง, เครื่องดื่ม, ของว่าง, ข้าวราดแกง, ผลไม้	files/20240817081617513_IMG_25670817_145128.jpg	-	-
9	0101000020877F0000E84B32EDE92323419834E37C91423C41	type	627188.963274	1852049.487842	อาคารปราบไตรจักร	08:00-17:00	ที่นั่ง	op	เครื่องดื่ม, ของว่าง	files/20240817161805887_IMG_25670817_153117.jpg	-	-
10	0101000020877F000090E6BDA78A242341FB8D3C32C6423C41	type	627269.327621	1852102.196236	คณะมนุษยศาสตร์	08:00-17:00	ที่นั่ง	op	อาหารตามสั่ง, เครื่องดื่ม, ของว่าง	files/20240817161934566_IMG_25670817_153204.jpg	-	-
11	0101000020877F00009649FBE32D2523414F61A8A4A8413C41	type	627350.945277	1851816.643194	คณะสถาปัตยกรรมศาสตร์ ศิลปะและการออกแบบ	08:00-17:00	ที่นั่ง	op	อาหารตามสั่ง, เครื่องดื่ม, ของว่าง, ข้าวราดแกง	files/20240817163553089_IMG_25670817_153647.jpg	-	-
12	0101000020877F0000375592BFB4252341B5EF12BAC6413C41	type	627418.374163	1851846.726851	คณะเกษตรศาสตร์ ทรัพยากรธรรมชาติ และ สิ่งแวดล้อม	08:00-17:00	ที่นั่ง	op	อาหารตามสั่ง, เครื่องดื่ม, ของว่าง, ข้าวราดแกง	files/20240817163753109_IMG_25670817_153858.jpg	-	-
13	0101000020877F0000FE3B126BE92523410D7406EFE6403C41	type	627444.709123	1851622.933692	คณะวิศวกรรมศาสตร์ มหาวิทยาลัยนเรศวร	07:00-17:00	ที่นั่ง	op	อาหารตามสั่ง, เครื่องดื่ม, ของว่าง, ข้าวราดแกง	files/20240817163904444_IMG_25670817_154922.jpg	-	-
\.


--
-- TOC entry 5957 (class 0 OID 18568)
-- Dependencies: 234
-- Data for Name: Store1; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Store1" (id, geom, type, lat, lng, area, "time", facilities, operationa, service, images, contact, note) FROM stdin;
1	0101000020877F00006F266172C52823416490B6ADE23D3C41	type	627810.723397	1850850.678567	7-Eleven สาขามหาวิทยาลัยนเรศวร (หอพักนิสิต)	24 ชม.	ของกินและของใช้	op	service	files/20240806033824439_IMG_25670804_175659.jpg	หน้าหอพักหญิง(หอใน)	-
2	0101000020877F0000BB711EFCC9282341603B1C0FEA3D3C41	type	627812.99242	1850858.059025	ท็อปมาร์ท สาขา หอพักขวัญเมือง	08:00-18:00	ของกินและของใช้	op	service	files/20240806033931858_IMG_25670804_175959.jpg	หน้าหอพักหญิง(หอใน)	-
3	0101000020877F00009AB701200829234159B7BB01243E3C41	type	627844.062513	1850916.006771	N จอย	08:00-18:00	ของกินและของใช้	op	service	files/20240806034229343_IMG_25670804_180911.jpg	ตรงข้างหอพักชาย(หอใน)	-
4	0101000020877F0000962E22FA4A292341C49507FE273E3C41	type	627877.488542	1850919.992303	-	08:00-18:00	ของกินและของใช้	op	service	files/20240806034404450_IMG_25670804_180903.jpg	ฝั่งหอพักชาย(หอใน)	-
5	0101000020877F0000DB372FCE12202341EDB00C6D5E423C41	type	626697.402704	1851998.425975	7-Eleven สาขามหาวิทยาลัยนเรศวร (หอพักนิสิต)	24 ชม.	ของกินและของใช้	op	service	files/20240806035840402_IMG_25670729_171818.jpg	โรงอาหารโรงพยาบาลมหาวิทยาลัยนเรศวร	-
\.


--
-- TOC entry 5958 (class 0 OID 18575)
-- Dependencies: 235
-- Data for Name: data; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.data (id, geom, type, lat, lng, area, "time", facilities, operationa, service, images, contact, note) FROM stdin;
1	0101000020877F000067BFCD6BA8282341E4534F4FD13D3C41	type	627796.210554	1850833.309804	1	08:00-17:00	ธนาคารให้บริการ	operational	service	files/20240724173443183_Screenshot_2567_0717_113356.jpg	ตรงข้ามหอพักนิสิต(หญิง)	-
3	0101000020877F0000C13343EDEC2823418D868367083E3C41	type	627830.463403	1850888.404351	2	24ชม.	ตู้กดเงิน	operational	service	files/20240724173842836_Screenshot_2567_0717_113454.jpg	หน้าโรงอาหารหอในมนเรศวร ตรงข้ามหอพักนิสิต(ชาย)	-
5	0101000020877F0000391E3BA3F3222341DF35F9A116423C41	type	627065.81881	1851926.632709	3	24ชม.	ตู้กดเงินสด	operational	service	files/20240724174418561_Screenshot_2567_0717_113619.jpg	อาคารเฉลิมพระเกียรติ	-
6	0101000020877F000028A402E0FD22234116CF721E19423C41	type	627070.93752	1851929.118939	3	24ชม.	ตู้กดเงินสด.	operational	service	files/20240724174526727_Screenshot_2567_0717_113601.jpg	อาคารเฉลิมพระเกียรติ	-
7	0101000020877F00005BED811D0423234154BBE8FC1A423C41	type	627074.057632	1851930.987926	3	24ชม.	ตู้กดเงินสด	operational	service	files/20240724174809859_Screenshot_2567_0717_113539.jpg	อาคารเฉลิมพระเกียรติ	-
8	0101000020877F0000517F3BA70B20234150C356B862423C41	type	626693.826626	1852002.720074	4	24ชม.	ตู้กดเงินสด	operational	service	files/20240724175201942_IMG_25670717_172804.jpg	โรงอาหารโรงพยาบาลมนเรศวร หน้าเซเว่น	ตู้กดเงินสดกรุงศรีอยุธยา
9	0101000020877F00001B8A2A61052023417AA6289A64423C41	type	626690.689778	1852004.602183	4	24ชม.	ตู้กดเงินสด	operational	service	files/20240724175555682_IMG_25670717_172808.jpg	โรงอาหารโรงพยาบาลมนเรศวร หน้าเซเว่น	ตู้กดเงินสดกรุงไทย
10	0101000020877F0000FDC46807072123416ADE43B9FD423C41	type	626819.514471	1852157.723692	4	24ชม.	ตู้ฝาก-กดเงินสด	operational	service	files/20240729065110979_IMG_25670717_173937.jpg	ขางเข้าด้านหน้าโรงพยาบาลมหาวิทยาลัยนเรศวร	-
11	0101000020877F0000A2682F81FE2023413E302776F9423C41	type	626815.252315	1852153.461535	4	08:00-16:30	ธนาคารให้บริการ	operational	service	files/20240729065237518_IMG_25670717_173937.jpg	ด้านหน้าทางเข้าโรงพยาบาลมหาวิทยาลัยนเรศวร	-
12	0101000020877F0000E9DCEA81FF202341D717AC7F06433C41	type	626815.753745	1852166.49872	4	24ชม.	ตู้กดเงินสด	operational	service	files/20240729065443603_IMG_25670717_174029.jpg	หน้าทางเข้าโรงพยาบาลมหาวิทยาลัยนเรศวร	-
14	0101000020877F00005E8E1E1444212341681A9A8B00423C41	type	626850.039296	1851904.54532	5	24ชม.	ตู้กด-ฝากเงินสดและแรับสมุด	operational	service	files/20240729065833882_IMG_25670717_173631.jpg	คณะเภสัชศาสตร์	-
15	0101000020877F00002808A9BC51212341595FC9C303423C41	type	626856.868477	1851907.764791	5	08:30-16:30	ธนาคารให้บริการ	operational	service	files/20240729070256438_IMG_25670717_173634.jpg	คณะเภสัชศาสตร์	-
2	0101000020877F000011E39B45B028234178D18169D43D3C41	type	627800.135955	1850836.412137	1	24ชม.	ตู้กดเงิน,ถอนเงิน,ปรับสมุด	operational	service	files/20240724173612052_Screenshot_2567_0717_113431.jpg	ตรงข้ามหอพักนิสิต(หญิง)	-
4	0101000020877F00005E28530AF9282341A8FC7BD50C3E3C41	type	627836.520166	1850892.833923	2	08:00-16:30	ธนาคารให้บริการ	operational	service	files/20240724174022482_Screenshot_2567_0717_113515.jpg	หน้าโรงอาหารหอในมนเรศวร ตรงข้ามหอพักนิสิต(ชาย)	-
13	0101000020877F00004123867DF92023415323F44008433C41	type	626812.745164	1852168.253725	4	24ชม.	ตู้กดเงินสด	operational	service	files/20240729065545401_IMG_25670717_173921.jpg	ด้านหน้าทางเข้าโรงพยาบาลมหาวิทยาลัยนเรศวร	-
\.


--
-- TOC entry 5772 (class 0 OID 16837)
-- Dependencies: 219
-- Data for Name: spatial_ref_sys; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.spatial_ref_sys (srid, auth_name, auth_srid, srtext, proj4text) FROM stdin;
\.


--
-- TOC entry 5774 (class 0 OID 17598)
-- Dependencies: 224
-- Data for Name: topology; Type: TABLE DATA; Schema: topology; Owner: postgres
--

COPY topology.topology (id, name, srid, "precision", hasz) FROM stdin;
\.


--
-- TOC entry 5775 (class 0 OID 17610)
-- Dependencies: 225
-- Data for Name: layer; Type: TABLE DATA; Schema: topology; Owner: postgres
--

COPY topology.layer (topology_id, layer_id, schema_name, table_name, feature_column, feature_type, level, child_id) FROM stdin;
\.


--
-- TOC entry 5967 (class 0 OID 0)
-- Dependencies: 223
-- Name: topology_id_seq; Type: SEQUENCE SET; Schema: topology; Owner: postgres
--

SELECT pg_catalog.setval('topology.topology_id_seq', 1, false);


--
-- TOC entry 5791 (class 2606 OID 18537)
-- Name: Activity Activity_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Activity"
    ADD CONSTRAINT "Activity_pkey" PRIMARY KEY (id);


--
-- TOC entry 5793 (class 2606 OID 18544)
-- Name: CoffeeShop CoffeeShop_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."CoffeeShop"
    ADD CONSTRAINT "CoffeeShop_pkey" PRIMARY KEY (id);


--
-- TOC entry 5795 (class 2606 OID 18551)
-- Name: EVcharger EVcharger_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."EVcharger"
    ADD CONSTRAINT "EVcharger_pkey" PRIMARY KEY (id);


--
-- TOC entry 5797 (class 2606 OID 18558)
-- Name: PhotocopyShop PhotocopyShop_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."PhotocopyShop"
    ADD CONSTRAINT "PhotocopyShop_pkey" PRIMARY KEY (id);


--
-- TOC entry 5799 (class 2606 OID 18565)
-- Name: Restaurant1 Restaurant1_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Restaurant1"
    ADD CONSTRAINT "Restaurant1_pkey" PRIMARY KEY (id);


--
-- TOC entry 5801 (class 2606 OID 18572)
-- Name: Store1 Store1_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Store1"
    ADD CONSTRAINT "Store1_pkey" PRIMARY KEY (id);


--
-- TOC entry 5803 (class 2606 OID 18579)
-- Name: data data_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.data
    ADD CONSTRAINT data_pkey PRIMARY KEY (id);


-- Completed on 2024-09-17 10:28:48

--
-- PostgreSQL database dump complete
--

