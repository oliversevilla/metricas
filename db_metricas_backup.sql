--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = off;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET escape_string_warning = off;

SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: mecatalogo; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE mecatalogo (
    ta_id smallint NOT NULL,
    ca_id character varying(64) NOT NULL,
    ca_desc character varying(64),
    ca_etiqueta character varying(64),
    ca_subgrupo character varying(64),
    ca_peso numeric
);


ALTER TABLE public.mecatalogo OWNER TO postgres;

--
-- Name: meinstancia; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE meinstancia (
    ta_id smallint NOT NULL,
    ca_id character varying(64) NOT NULL,
    in_id integer NOT NULL,
    in_nombre character varying(64),
    in_desc character varying(255)
);


ALTER TABLE public.meinstancia OWNER TO postgres;

--
-- Name: meinstancia_in_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE meinstancia_in_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.meinstancia_in_id_seq OWNER TO postgres;

--
-- Name: meinstancia_in_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE meinstancia_in_id_seq OWNED BY meinstancia.in_id;


--
-- Name: meinstancia_in_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('meinstancia_in_id_seq', 1, false);


--
-- Name: memeta; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE memeta (
    re_id smallint NOT NULL,
    oa_id integer NOT NULL,
    me_id character varying(64) NOT NULL,
    me_val numeric,
    me_content text,
    me_etiqueta character varying(64),
    me_completitud numeric,
    me_consistencia numeric,
    me_coherencia numeric
);


ALTER TABLE public.memeta OWNER TO postgres;

--
-- Name: meoa; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE meoa (
    re_id smallint NOT NULL,
    oa_id integer NOT NULL,
    oa_titulo text,
    oa_std character varying(64),
    oa_url text,
    oa_tot_completitud numeric,
    oa_tot_consistencia numeric,
    oa_tot_coherencia numeric,
    oa_fec timestamp without time zone
);


ALTER TABLE public.meoa OWNER TO postgres;

--
-- Name: merepo; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE merepo (
    re_id smallint NOT NULL,
    re_dominio character varying(255),
    re_url character varying(255)
);


ALTER TABLE public.merepo OWNER TO postgres;

--
-- Name: metabla; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE metabla (
    ta_id smallint NOT NULL,
    ta_nombre character varying(32)
);


ALTER TABLE public.metabla OWNER TO postgres;

--
-- Name: in_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY meinstancia ALTER COLUMN in_id SET DEFAULT nextval('meinstancia_in_id_seq'::regclass);


--
-- Data for Name: mecatalogo; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY mecatalogo (ta_id, ca_id, ca_desc, ca_etiqueta, ca_subgrupo, ca_peso) FROM stdin;
3	DCCONTEN	Contenido	\N	\N	\N
3	DCPROINT	Propiedad Intelectual	\N	\N	\N
3	general	General	\N	\N	\N
3	lifeCycle	Ciclo de Vida	\N	\N	\N
2	LOALEVEL	Nivel de Agregacion	aggregationLevel	general	0.0274
2	LOPCLAVE	Palabra Clave	keyword	general	0.195
2	LOVERSIO	Version	version	lifeCycle	0.0274
2	LOENTIDA	Entidad	entity	lifeCycle	0.1248
2	LOTIREED	Tipo de Recurso Educativo	learningResourceType	educational	0.0867
2	LOIDENTI	Identificador	identifier	general	0.0274
1	DCTITULO	Titulo	dc_title	DCCONTEN	0.15
2	LOESTRUC	Estructura	structure	general	0.0274
2	LOESTADO	Estado	status	lifeCycle	0.0274
2	LOROL	Rol	role	lifeCycle	0.0274
2	LOFECHA	Fecha	dateTime	lifeCycle	0.0274
2	LOIDIOMA	Idioma	language	general	0.0551
1	DCDESCRI	Descripcion	dc_description	DCCONTEN	0.12
1	DCRELACI	Relacion	dc_relation	DCCONTEN	0.0192
1	DCFUENTE	Fuente	citation_publisher	DCCONTEN	0.0308
1	DCABSTRA	Resumen	dcterms_abstract	DCCONTEN	0.03
1	DCPALCLA	Palabras Claves	citation_keywords	DCCONTEN	0.14
1	DCAUTOR	Autor	dc_creator	DCPROINT	0.11
1	DCCLAVES	Claves	dc_subject	DCCONTEN	0.13
1	DCEDITOR	Editor	dc_publisher	DCPROINT	0.13
1	DCTIPORE	Tipo de Recurso	dc_type	DCCONTEN	0.07
1	DCIDENTI	Identificador del Recurso	dc_identifier	DCINSTAN	0.03
1	DCIDIOMA	Idioma	dc_language	DCINSTAN	0.02
1	DCFECHA	Fecha	dcterms_dateaccepted	DCINSTAN	0.01
1	DCCOLABO	Colaboradores	dc_contributor	DCPROINT	0.01
3	DCINSTAN	Instanciacion	\N	\N	\N
3	educational	Caracteristicas Pedagogicas	\N	\N	\N
2	LOTITULO	Titulo	title	general	0.2218
2	LODESCRI	Descripcion	description	general	0.1248
\.


--
-- Data for Name: meinstancia; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY meinstancia (ta_id, ca_id, in_id, in_nombre, in_desc) FROM stdin;
1	DCTIPORE	2	article	\N
1	DCTIPORE	3	masterThesis	\N
1	DCTIPORE	4	doctoralThesis	\N
1	DCTIPORE	5	book	\N
1	DCTIPORE	6	bookPart	\N
1	DCTIPORE	7	review	\N
1	DCTIPORE	8	conferenceObject	\N
1	DCTIPORE	9	lecture	\N
1	DCTIPORE	10	workingPaper	\N
1	DCTIPORE	11	preprint	\N
1	DCTIPORE	12	report	\N
1	DCTIPORE	13	annotation	\N
1	DCTIPORE	14	contributionToPeriodical	\N
1	DCTIPORE	15	patent	\N
1	DCTIPORE	16	other	\N
2	LOESTRUC	21	atomic	\N
2	LOESTRUC	22	collection	\N
2	LOESTRUC	23	networked	\N
2	LOESTRUC	24	hierarchical	\N
2	LOESTRUC	25	linear	\N
2	LOROL	27	publisher	\N
2	LOROL	28	unknown	\N
2	LOROL	29	terminator	\N
2	LOROL	30	validator	\N
2	LOROL	31	editor	\N
2	LOROL	32	initiator	\N
2	LOROL	33	graphical designer	\N
2	LOROL	34	technical implementer	\N
2	LOROL	35	content provider	\N
2	LOROL	36	technical validator	\N
2	LOROL	37	educational validator	\N
2	LOROL	38	script writer	\N
2	LOROL	39	instructional designer	\N
2	LOROL	40	subject matter expert	\N
2	LOESTADO	41	draft	\N
2	LOESTADO	42	final	\N
2	LOESTADO	43	revised	\N
2	LOESTADO	44	unavailable	\N
2	LOTIREED	45	exercise	\N
2	LOTIREED	46	simulation	\N
2	LOTIREED	47	questionnaire	\N
2	LOTIREED	48	diagram	\N
2	LOTIREED	49	figure	\N
2	LOTIREED	50	graph	\N
2	LOTIREED	51	index	\N
2	LOTIREED	52	slide	\N
2	LOTIREED	53	table	\N
2	LOTIREED	54	narrative text	\N
2	LOTIREED	55	exam	\N
2	LOTIREED	56	experiment	\N
2	LOTIREED	57	problem	\N
2	LOTIREED	58	statement	\N
2	LOTIREED	59	self assessment	\N
2	LOROL	26	author	\N
1	DCTIPORE	1	bachelorThesis	\N
2	LOTIREED	60	lecture	\N
2	LOALEVEL	17	1	Representa el nivel más pequeño de agregación (el aplicable a material aparentemente indivisible, como una imagen, un archivo PDF, etc.)
2	LOALEVEL	18	3	Colección de materiales atómicos (por ejemplo, un archivo HTML junto con las imágenes referidas desde el mismo).
2	LOALEVEL	19	2	Una colección de dos o más materiales de nivel 2 (por ejemplo, una web formada por múltiples documenttos HTML).
2	LOALEVEL	20	4	El nivel mayor de granularidad (por ejemplo, un conjunto de cursos que conducen a la obtención de un grado).
\.


--
-- Data for Name: memeta; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY memeta (re_id, oa_id, me_id, me_val, me_content, me_etiqueta, me_completitud, me_consistencia, me_coherencia) FROM stdin;
1	25	DCFUENTE	-1		citation_publisher	0	-1	-1
1	25	DCABSTRA	-1	Abstract:The present titling work aims to analyze and evaluate the current situation in which the Municipal GAD of Zamora is find through an architectural framework, this information will serve as base to be able determine her level of maturity through a model of architectural maturity, and subsequently propose a business management model that allows the organization to execute the transition towards a next level of maturity. TOGAF is a business architecture framework, account with a Architectural Development Method which is conformed by different phases in which they develop deliverables and artifacts that serve to be able to collect information and know the current status of an organization. The Business Architecture Maturity model account different levels and statements that serve to measure and determine the level of maturity in which an organization is located. In base to the results it is posed a business management model for the Municipal GAD of Zamora that allows to upload of maturity level of and in this way be more efficient when it comes to providing a product or service.	dcterms_abstract	0.03	-1	-1
1	25	DCPALCLA	-1	GAD Municipal – Zamora( Zamora Chinchipe, Ecuador) –Estudio; Gestión empresarial- Modelo – Propuesta; TOGAF; Arquitectura de software; Ingeniero en informática – Tesis y disertaciones académicas.; bachelorThesis	citation_keywords	0.14	-1	-1
1	9	DCDESCRI	-1	El presente  trabajo  es sobre  la reestructuración del Mercado Gran Colombia de la ciudad de Loja, en el cual se ha buscado encontrar soluciones a sus problemasde  diseño y utlizacion.	dc_description	0.12	-1	0.43
3	46	LOALEVEL	-1	2	aggregationLevel	0.0274	1	-1
3	46	LOPCLAVE	-1	Incubadora	keyword	0.195	-1	-1
3	46	LOVERSIO	-1	v2019.05.28	version	0.0274	-1	-1
3	46	LOENTIDA	-1	BEGIN:VCARD&#xD;VERSION:3.0&#xD;N:Freddy Sumba&#xD;FN:Freddy Sumba&#xD;END:VCARD	entity	0.1248	-1	-1
3	46	LOTIREED	-1	lecture	learningResourceType	0.0867	1	-1
3	46	LOIDENTI	-1	http://roa.cedia.edu.ec/excursions/7	identifier	0.0274	-1	-1
3	46	LOESTRUC	-1	hierarchical	structure	0.0274	1	-1
2	45	DCRELACI	-1		dc_relation	0	-1	-1
2	45	DCFUENTE	-1	Universidad de Chile	citation_publisher	0.0308	-1	-1
2	45	DCABSTRA	-1	El presente documento expone en detalle el desarrollo de un modelo de gestión de inventarios realizado en Rafael Arana y Cía., una mediana empresa inmersa en el rubro de los repuestos automotrices.&#xD;&#xA;En los últimos cinco años la empresa ha aumentado su nivel de inventario en un 40,2% y aun así continua trabajando con los mismos sistemas de gestión de hace una década atrás. Esto ha generado la pérdida sobre el control de los costos de inventario y mercaderías faltantes, ambos estimados en un 18,87% de la mercadería almacenada y un 13,1% de las ventas respectivamente.&#xD;&#xA;Para llevar a cabo el estudio se clasificó la base de datos de productos en categorías según características técnicas. Luego, según su aporte económico se logró establecer el alcance final en las siete primeras categorías, a las cuales pertenece el 5,64% de los ítems, segmento que aportó en los últimos años el 40% del margen total de la empresa.&#xD;&#xA;Para la administración de los inventarios se utilizó una metodología de pronóstico agregado, la cual según la porción que ocupaba cada ítem en su categoría, repartía cantidades esperadas de demanda. Luego, mediante el uso del modelo EOQ con extensión probabilística se obtuvieron las cantidades de pedido y de seguridad de inventario óptimas para cada producto.&#xD;&#xA;Al simular el modelo para los niveles de servicios actuales, se obtuvo que dos categorías no presentaron variaciones en sus resultados, mientras que entre las otras cinco se lograron disminuciones promedio del 7,9% de los costos.&#xD;&#xA;Se evaluó también el comportamiento del modelo ante variaciones en el nivel de servicio. Frente a esto, seis de las siete categorías obtuvieron alzas en sus desempeños al aumentar sus niveles. Dichas mejoras generaron beneficios cercanos a $111 MM, cifra equivalente al 4,74% de las ventas. Los niveles de servicio aumentaron en un 5,5% promedio, crecimiento que trae consigo una valoración intrínseca por parte de los clientes al contar con un mayor stock.&#xD;&#xA;En cuanto a los productos no analizados se sugirió implementar políticas acordes a sus características, que incluye un proceso similar al de clasificación, pero menos riguroso en la medida que disminuya su aporte a la empresa. &#xD;&#xA;Finalmente, se concluyó que el modelo es capaz de hacer mejorar los resultados de la empresa, aun así es fundamental implementar junto a él algunas políticas de control que permitan su óptima ejecución.	dcterms_abstract	0.03	-1	-1
2	45	DCPALCLA	-1	Autom&oacute;viles - Repuestos; Control de inventario; Tesis	citation_keywords	0.14	-1	-1
2	45	DCAUTOR	-1	Arana Lemus, Felipe Andrés	dc_creator	0.11	-1	-1
2	45	DCCLAVES	-1	Control de inventario	dc_subject	0.13	-1	-1
1	3	DCFUENTE	-1		citation_publisher	0	-1	-1
1	3	DCABSTRA	-1		dcterms_abstract	0	-1	-1
1	3	DCPALCLA	-1	Métodos de estudios; Innovación educativa; Calidad educativa; Maestría en Gerencia y Liderazgo Educacional - Disertaciones académicas; masterThesis	citation_keywords	0.14	-1	-1
1	3	DCTITULO	-1	Gestión del liderazgo y valores en el Instituto Técnico Superior Salesiano de la ciudad de Cuenca, provincia del Azuay, Sección Bachillerato durante el período lectivo 2011 – 2012	dc_title	0.15	-1	0.96
2	45	DCEDITOR	-1	Universidad de Chile	dc_publisher	0.13	-1	-1
2	45	DCTIPORE	-1	Tesis	dc_type	0.07	-1	-1
2	45	DCIDENTI	-1	http://repositorio.uchile.cl/handle/2250/132985	dc_identifier	0.03	-1	-1
2	45	DCIDIOMA	-1	es	dc_language	0.02	-1	-1
2	45	DCFECHA	-1	2015-08-20T21:02:29Z	dcterms_dateaccepted	0.01	-1	-1
2	45	DCCOLABO	-1	San Martín Zurita, Ricardo	dc_contributor	0.01	-1	-1
2	45	DCTITULO	-1	Gestión de inventarios en una empresa de respuestos automotrices	dc_title	0.15	-1	0
2	45	DCDESCRI	-1	Ingeniero Civil Industrial	dc_description	0.12	-1	0
3	46	LOESTADO	-1	final	status	0.0274	1	-1
1	9	DCAUTOR	-1	Caraguay Pucha, Galo	dc_creator	0.11	-1	-1
1	9	DCCLAVES	-1	Arquitecto-Tesis y disertacdiones académicas	dc_subject	0.13	-1	-1
1	9	DCEDITOR	-1		dc_publisher	0	-1	-1
1	9	DCTIPORE	-1	bachelorThesis	dc_type	0.07	-1	-1
1	9	DCIDENTI	-1	http://dspace.utpl.edu.ec/handle/123456789/16659	dc_identifier	0.03	-1	-1
1	9	DCIDIOMA	-1	spa	dc_language	0.02	-1	-1
3	46	LOROL	-1	author	role	0.0274	1	-1
3	46	LOFECHA	-1	2019-05-28	dateTime	0.0274	-1	-1
3	46	LOIDIOMA	-1		language	0	-1	-1
3	46	LOTITULO	-1	Incubadora de proyectos	title	0.2218	-1	1
3	46	LODESCRI	-1	Incubadora de proyectos	description	0.1248	-1	1
1	3	DCAUTOR	-1	Feijoó Pontón, Juan Fausto	dc_creator	0.11	-1	-1
1	3	DCCLAVES	-1	Maestría en Gerencia y Liderazgo Educacional - Disertaciones académicas	dc_subject	0.13	-1	-1
1	3	DCEDITOR	-1		dc_publisher	0	-1	-1
1	3	DCTIPORE	-1	masterThesis	dc_type	0.07	-1	-1
1	3	DCIDENTI	-1	http:/dspace.utpl.edu.ec/handle/123456789/9563	dc_identifier	0.03	-1	-1
1	3	DCIDIOMA	-1	es	dc_language	0.02	-1	-1
1	3	DCFECHA	-1	2014-05-08T15:43:32Z	dcterms_dateaccepted	0.01	-1	-1
1	3	DCCOLABO	-1	Hernández Cueva, Marita	dc_contributor	0.01	-1	-1
1	3	DCRELACI	-1		dc_relation	0	-1	-1
1	3	DCDESCRI	-1	El trabajo de investigación se lo realizó en el Instituto Técnico Superior Salesiano de la ciudad de Cuenca “Gestión del liderazgo y valores en el Instituto Técnico Superior Salesiano de la ciudad de Cuenca, provincia del Azuay, Sección Bachillerato, durante el período lectivo 2011 - 2012”. El objetivo del trabajo de investigación es analizar la capacidad de gestión y liderazgo integrado a los valores personales e institucionales y que fundamentalmente permitan contribuir a elevar la calidad de la educación en la Institución. Para el logro del presente trabajo se dio la colaboración y participación de todos quienes pertenecen al Instituto: Directivos, Personal Administrativo, Docentes, Alumnos y Padres de Familia, por lo que se pudo recabar información mediante encuestas y entrevistas, información que fue procesada permitiendo llegar a resultados que mostraron ciertas falencias a la gestión del liderazgo y valores en la institución. Motivo por la cual se plantea una propuesta de mejora, para el personal que labora en la institución, especialmente para la Sección Bachillerato, mediante una capacitación con temas que permitan superar los problemas en la Institución.	dc_description	0.12	-1	0.96
3	4	LOPCLAVE	-1	SIG	keyword	0.195	-1	-1
3	4	LOENTIDA	-1	BEGIN:VCARD&#xD;VERSION:3.0&#xD;N:Jorge Silva&#xD;FN:Jorge Silva&#xD;END:VCARD	entity	0.1248	-1	-1
3	4	LOTIREED	-1	lecture	learningResourceType	0.0867	1	-1
3	4	LOIDENTI	-1	http://roa.cedia.edu.ec/excursions/4	identifier	0.0274	-1	-1
3	4	LOESTRUC	-1	hierarchical	structure	0.0274	1	-1
3	4	LOALEVEL	-1	2	aggregationLevel	0.0274	1	-1
3	4	LOVERSIO	-1	v2018.05.21	version	0.0274	-1	-1
3	4	LOESTADO	-1	final	status	0.0274	1	-1
3	4	LOROL	-1	author	role	0.0274	1	-1
3	4	LOFECHA	-1	2018-05-21	dateTime	0.0274	-1	-1
3	4	LOIDIOMA	-1	es	language	0.0551	-1	-1
3	4	LOTITULO	-1	MAPAS TEMÁTICOS	title	0.2218	-1	0.7
3	4	LODESCRI	-1	•\t“Los mapas temáticos tienen siempre como fondo y soporte los que representan la superficie terrestre” (Joly, 1979:23).\nLas posibilidades de aplicación del mapa temático son prácticamente ilimitadas, por lo que se convierte en un elemento didáctico con innumerables manejos. En la cartografía temática ya no se trata de penetrar en la comprensión de elementos ideológicos o culturales con el fin apreciar el documento; en este caso han de emplearse mapas que resultan de la aplicación de proyecciones modernas, de tal forma que el contorno del territorio cartografiado estará dispuesto de una manera más real y objetiva, acompañado de la información que se ha vaciado en él. En ella puede concentrarse cualquier hecho que pertenezca a los grandes “feudos” del acontecer humano: históricos, económicos, políticos, sociales y militares. 	description	0.1248	-1	0.7
1	25	DCAUTOR	-1	Cruz Berrú, Alexander Patricio	dc_creator	0.11	-1	-1
1	25	DCCLAVES	-1	Ingeniero en informática – Tesis y disertaciones académicas.	dc_subject	0.13	-1	-1
1	25	DCEDITOR	-1		dc_publisher	0	-1	-1
1	25	DCTIPORE	-1	bachelorThesis	dc_type	0.07	-1	-1
1	25	DCIDENTI	-1	http://dspace.utpl.edu.ec/handle/20.500.11962/24179	dc_identifier	0.03	-1	-1
1	10	DCFUENTE	-1		citation_publisher	0	-1	-1
1	10	DCABSTRA	-1	Currently the Internet is considered as one of the most powerful means of information and communication, this has caused the most intensive use of this service and at the same time a great demand for access to it regardless of the location of the user. Wireless networks are one of the technologies that provide mobility and flexibility in accessing the Internet from wherever there is coverage, its acceptance grows more and more, however, as its use increases, so does the need to support these Environments the same applications that work in wired networks, such need can not be easily covered because the availability of bandwidth in wireless networks is significantly lower than in wired networks, therefore, it is imperative to provide them with quality characteristics (Q or S)	dcterms_abstract	0.03	-1	-1
1	6	DCFUENTE	-1		citation_publisher	0	-1	-1
1	6	DCABSTRA	-1		dcterms_abstract	0	-1	-1
1	6	DCPALCLA	-1	Programas de computadores; Informática – Derecho; Ingeniero en sistemas informáticos y computación – Tesis y disertaciones académicas; bachelorThesis	citation_keywords	0.14	-1	-1
1	6	DCTITULO	-1	Implementación de un sistema de gestión y control de un despacho jurídico.	dc_title	0.15	-1	0.39
1	25	DCIDIOMA	-1	spa	dc_language	0.02	-1	-1
1	25	DCFECHA	-1	2019-05-31T13:43:52Z	dcterms_dateaccepted	0.01	-1	-1
1	25	DCCOLABO	-1	Condolo Herrera, Lorena del Cisne	dc_contributor	0.01	-1	-1
1	25	DCRELACI	-1		dc_relation	0	-1	-1
1	25	DCTITULO	-1	Evaluación de la madurez de la arquitectura de negocio de pequeña y mediana empresa (PYME) en el Ecuador y propuesta de modelo de gestión	dc_title	0.15	-1	0.36
1	9	DCFECHA	-1	2017-02-17T16:36:57Z	dcterms_dateaccepted	0.01	-1	-1
1	9	DCCOLABO	-1	Medina Maldonado, William Rafael	dc_contributor	0.01	-1	-1
1	9	DCRELACI	-1		dc_relation	0	-1	-1
1	10	DCPALCLA	-1	Red inalámbrica; UTPL Campus; Ingeniero en sistemas informáticos y computación-Tesis y disertaciones académicas; bachelorThesis	citation_keywords	0.14	-1	-1
1	10	DCTITULO	-1	Gestión de anco de banda  a usuarios  Wifi  e integración de los servicios de la red  inalámbrica /	dc_title	0.15	-1	0.89
1	6	DCAUTOR	-1	Salazar Cordova, Carlos Marcelo	dc_creator	0.11	-1	-1
1	6	DCCLAVES	-1	Ingeniero en sistemas informáticos y computación – Tesis y disertaciones académicas	dc_subject	0.13	-1	-1
1	6	DCEDITOR	-1		dc_publisher	0	-1	-1
1	6	DCTIPORE	-1	bachelorThesis	dc_type	0.07	-1	-1
1	6	DCIDENTI	-1	http://dspace.utpl.edu.ec/handle/123456789/4253	dc_identifier	0.03	-1	-1
1	6	DCIDIOMA	-1	es	dc_language	0.02	-1	-1
1	6	DCFECHA	-1	2012-10-30T19:02:27Z	dcterms_dateaccepted	0.01	-1	-1
1	6	DCCOLABO	-1	Romero Pelaez, Audrey Elizabeth	dc_contributor	0.01	-1	-1
1	6	DCRELACI	-1		dc_relation	0	-1	-1
1	6	DCDESCRI	-1	La presente tesis trata sobre la implementación de un sistema de información para el ámbito de la gestión y control de despachos jurídicos que implica el seguimiento adecuado de los procesos y trámites, administración eficiente de las actividades relacionadas con los procesos, recuperación y tratamiento eficiente de la información generada en los despachos, etc.&#xD;&#xA;&#xD;&#xA;El sistema se ha construido siguiendo una metodología ágil de desarrollo scrum, que ha permitido controlar eficientemente cada una de las actividades y ser flexible a los cambios sugeridos por el cliente.&#xD;&#xA;&#xD;&#xA;La arquitectura que se ha utilizado para desarrollar el sistema fue la arquitectura modelo-vista-controlador que ha permitido desacoplar la interfaz del usuario de la lógica del negocio y el modelo de datos. La arquitectura física del sistema es cliente-servidor, dicha arquitectura se ejecutará en la intranet que posee el despacho.&#xD;&#xA;&#xD;&#xA;Al implementar un sistema de información en el ámbito de la gestión y control de despachos jurídicos, se ha logrado organizar, recuperar, controlar, administrar, manipular, y dar seguimiento a la información generada al trabajar con procesos judiciales y sus respectivas actividades.	dc_description	0.12	-1	0.39
7	30	DCTITULO	-1	El modelo tutorial en el sistema inglés: análisis de buenas prácticas en los estudios de master en el London Centre for History of Science, Technology and Medicine del Imperial College of London y el University College of London	dc_title	0.15	-1	0
1	8	DCFUENTE	-1		citation_publisher	0	-1	-1
1	8	DCABSTRA	-1	The present work is about a strategic planning project for the development of a Saraguro community, with this study will seek to offer scientific and technical alternatives to protect and spread Saraguro culture.	dcterms_abstract	0.03	-1	-1
1	8	DCPALCLA	-1	Planificación rural; Saraguro; Arquitecto-Tesis y disertacdiones académicas; bachelorThesis	citation_keywords	0.14	-1	-1
1	8	DCAUTOR	-1	Quizhpe  Vacacela, Pablo Fabián	dc_creator	0.11	-1	-1
1	8	DCCLAVES	-1	Arquitecto-Tesis y disertacdiones académicas	dc_subject	0.13	-1	-1
1	8	DCEDITOR	-1		dc_publisher	0	-1	-1
1	8	DCTIPORE	-1	bachelorThesis	dc_type	0.07	-1	-1
1	8	DCIDENTI	-1	http://dspace.utpl.edu.ec/handle/123456789/16647	dc_identifier	0.03	-1	-1
1	8	DCIDIOMA	-1	spa	dc_language	0.02	-1	-1
1	8	DCFECHA	-1	2017-02-16T18:00:29Z	dcterms_dateaccepted	0.01	-1	-1
1	8	DCCOLABO	-1	Moncayo Vega, Alexandra del Rosario	dc_contributor	0.01	-1	-1
1	8	DCRELACI	-1		dc_relation	0	-1	-1
1	8	DCTITULO	-1	Planificación estratégica territorial Ayllu Lakta Gunudel Gulakpamba	dc_title	0.15	-1	0.07
1	8	DCDESCRI	-1	El presente trabajo  trata acerca de  un proyecto de planificación estrtégica para el desarrollo de una comunidad Saraguro, con este estudio se buscará ofrecer alternativas científicas y técnicas para proteger y difundir la cultura Saraguro.	dc_description	0.12	-1	0.07
1	9	DCFUENTE	-1		citation_publisher	0	-1	-1
1	9	DCABSTRA	-1	The present work is about the restructuring of the Gran Colombia Market of the city of Loja, in which it has sought to find solutions to its problems of design and use.	dcterms_abstract	0.03	-1	-1
1	9	DCPALCLA	-1	Reestructuración arquitectonica; Mercado Gran Colombia; Arquitecto-Tesis y disertacdiones académicas; bachelorThesis	citation_keywords	0.14	-1	-1
1	9	DCTITULO	-1	Reestructuración arquitectónica  del Mercado Gran Colombia	dc_title	0.15	-1	0.43
1	22	DCFUENTE	-1		citation_publisher	0	-1	-1
1	22	DCPALCLA	-1	Literatura infantil; Literatura ecuatoriana – Crítica; Magíster en literatura infantil y juvenil – Tesis y disertaciones académicas; masterThesis	citation_keywords	0.14	-1	-1
1	22	DCTITULO	-1	Análisis de los temas y motivos presentes en las obras: Luz y Cristal, Romancero otavaleño y Palabras para jugar.	dc_title	0.15	-1	0.84
1	23	DCPALCLA	-1	Inglés-enseñanza; Quito - Pichincha - Ecuador; Ciencias de la educación - Inglés - Tesis; Lingüística constructiva; Lengua española; Ecuador; Tesis; bachelorThesis	citation_keywords	0.14	-1	-1
1	23	DCAUTOR	-1	Romero Espinoza, María Gabriela	dc_creator	0.11	-1	-1
1	23	DCCLAVES	-1	Tesis	dc_subject	0.13	-1	-1
1	23	DCEDITOR	-1		dc_publisher	0	-1	-1
1	23	DCTIPORE	-1	bachelorThesis	dc_type	0.07	-1	-1
1	23	DCIDENTI	-1	http://dspace.utpl.edu.ec/handle/123456789/5068	dc_identifier	0.03	-1	-1
1	23	DCIDIOMA	-1	es	dc_language	0.02	-1	-1
1	23	DCFECHA	-1	2012-12-19T15:33:57Z	dcterms_dateaccepted	0.01	-1	-1
1	23	DCCOLABO	-1	Arias Córdova, María	dc_contributor	0.01	-1	-1
1	23	DCRELACI	-1		dc_relation	0	-1	-1
1	23	DCDESCRI	-1	Features of the native language as pronunciation, grammatical structures, vocabulary and language habits have been found to be transferred from one language to another. Linguists say that there is interference still in competent speakers of a second language. And that the only native like competence or proficiency exists in native speakers.	dc_description	0.12	-1	0.7
1	23	DCTITULO	-1	Native Language Interference in the spoken target language: A case study of there speakers of english as a foreign language.	dc_title	0.15	-1	0.7
1	10	DCAUTOR	-1	Alba Nuñez, Janeth Marilu	dc_creator	0.11	-1	-1
1	10	DCCLAVES	-1	Ingeniero en sistemas informáticos y computación-Tesis y disertaciones académicas	dc_subject	0.13	-1	-1
1	10	DCEDITOR	-1		dc_publisher	0	-1	-1
1	10	DCTIPORE	-1	bachelorThesis	dc_type	0.07	-1	-1
1	10	DCIDENTI	-1	http://dspace.utpl.edu.ec/handle/123456789/16604	dc_identifier	0.03	-1	-1
1	10	DCIDIOMA	-1	spa	dc_language	0.02	-1	-1
1	10	DCFECHA	-1	2017-02-08T16:52:17Z	dcterms_dateaccepted	0.01	-1	-1
1	10	DCCOLABO	-1	Torres  Tandazo, Rommel Vicente	dc_contributor	0.01	-1	-1
1	10	DCRELACI	-1		dc_relation	0	-1	-1
1	10	DCDESCRI	-1	Actualmente el Internet es considerado como uno de los medios de información y comunicación más potentes, esto ha provocado el uso más intensivo de este servicio y a la vez una gran demanda de acceso al mismo sin importar la ubicación del usuario. Las redes inalámbricas son una de las tecnologías que proporcionan movilidad y flexibilidad en el acceso a Internet desde cualquier lugar donde haya cobertura, su aceptación crece cada vez más, sin embargo, a medida que incrementa su uso, crece también la necesidad de soportar en estos entornos las mismas aplicaciones que funcionan en las redes cableadas, dicha necesidad no puede ser cubierta fácilmente debido a que la disponibilidad de ancho de banda en las redes inalámbricas es notablemente menor que en las redes cableadas, por ello, es imprescindible dotarlas de características de calidad de servicio (Q o S)	dc_description	0.12	-1	0.89
4	11	DCFUENTE	-1		citation_publisher	0	-1	-1
4	11	DCABSTRA	-1		dcterms_abstract	0	-1	-1
4	11	DCPALCLA	-1	Estibina; Ortorómbico; Sulfuros; Ecuador; Imagen	citation_keywords	0.14	-1	-1
4	11	DCAUTOR	-1	Castillo, Carla	dc_creator	0.11	-1	-1
4	11	DCCLAVES	-1	Ecuador	dc_subject	0.13	-1	-1
4	11	DCEDITOR	-1		dc_publisher	0	-1	-1
4	11	DCTIPORE	-1	Imagen	dc_type	0.07	-1	-1
4	11	DCIDENTI	-1	http://bibdigital.epn.edu.ec/handle/15000/13195	dc_identifier	0.03	-1	-1
4	11	DCIDIOMA	-1		dc_language	0	-1	-1
4	11	DCFECHA	-1	2016-01-13T13:58:18Z	dcterms_dateaccepted	0.01	-1	-1
4	11	DCCOLABO	-1		dc_contributor	0	-1	-1
4	11	DCRELACI	-1		dc_relation	0	-1	-1
4	11	DCTITULO	-1	Antimonita (3.7.9-6)	dc_title	0.15	-1	0
4	11	DCDESCRI	-1	3.7.9-6 Consulta detallada http://museopetrografico.epn.edu.ec/	dc_description	0.12	-1	0
5	12	DCFUENTE	-1	Universidad de las Fuerzas Armadas ESPE. Carrera de Ciencias de la Seguridad Mención Aérea y Terrestre.	citation_publisher	0.0308	-1	-1
5	12	DCABSTRA	-1	Los trabajadores de la Industria Coppola del Ecuador se encuentran expuestos a constantes accidentes laborales lo cual impide el desarrollo y rendimiento normal de sus tareas diarias, por esta razón el presente trabajo está encaminado o dirigido al estudio de cada una de las seguridades personales que requiere el trabajador, brindándole las condiciones de trabajo adecuadas y proveer las medidas de seguridad dependiendo de las funciones asignadas a cada uno de los colaboradores de la Industria.&#xD;&#xA;Para la elaboración del trabajo investigativo, se utilizaron técnicas e instrumentos apropiados. Las técnicas aplicadas fueron la observación directa, entrevistas, se realizó encuestas a cada trabajador sobre riesgos...	dcterms_abstract	0.03	-1	-1
5	12	DCPALCLA	-1	RIESGOS LABORALES; ACCIDENTES; SEGURIDAD; SALUD OCUPACIONAL; bachelorThesis	citation_keywords	0.14	-1	-1
5	12	DCAUTOR	-1	Aimacaña Guamushig, Rodrigo	dc_creator	0.11	-1	-1
5	12	DCCLAVES	-1	SALUD OCUPACIONAL	dc_subject	0.13	-1	-1
5	12	DCEDITOR	-1	Universidad de las Fuerzas Armadas ESPE. Carrera de Ciencias de la Seguridad Mención Aérea y Terrestre.	dc_publisher	0.13	-1	-1
5	12	DCTIPORE	-1	bachelorThesis	dc_type	0.07	-1	-1
5	12	DCIDENTI	-1	http://repositorio.espe.edu.ec/handle/21000/7619	dc_identifier	0.03	-1	-1
5	12	DCIDIOMA	-1	spa	dc_language	0.02	-1	-1
5	12	DCFECHA	-1	2014-02-19T14:15:25Z	dcterms_dateaccepted	0.01	-1	-1
5	12	DCCOLABO	-1		dc_contributor	0	-1	-1
5	12	DCRELACI	-1		dc_relation	0	-1	-1
5	12	DCTITULO	-1	Identificación, análisis y evaluación de riesgos laborales en la Industria COPPOLA del ECUADOR.	dc_title	0.15	-1	0
5	12	DCDESCRI	-1		dc_description	0	-1	0
6	13	DCFUENTE	-1	Quito: Universidad de las Américas, 2008	citation_publisher	0.0308	-1	-1
1	18	DCEDITOR	-1		dc_publisher	0	-1	-1
1	18	DCTIPORE	-1	bachelorThesis	dc_type	0.07	-1	-1
1	18	DCIDENTI	-1	http://dspace.utpl.edu.ec/handle/123456789/5854	dc_identifier	0.03	-1	-1
1	18	DCIDIOMA	-1	es	dc_language	0.02	-1	-1
1	18	DCFECHA	-1	2013-01-18T15:29:01Z	dcterms_dateaccepted	0.01	-1	-1
1	18	DCCOLABO	-1	Castro Íñiguez, Graciela	dc_contributor	0.01	-1	-1
1	18	DCRELACI	-1		dc_relation	0	-1	-1
7	31	DCFUENTE	-1		citation_publisher	0	-1	-1
1	21	DCFUENTE	-1		citation_publisher	0	-1	-1
1	21	DCABSTRA	-1		dcterms_abstract	0	-1	-1
1	21	DCPALCLA	-1	Economia - Tesis; Tecnología del Ecuador - Análisis; Economía - Revolución tecnológica; Producción; Ecuador; Tesis; bachelorThesis	citation_keywords	0.14	-1	-1
1	21	DCTITULO	-1	“La nueva economía y el Ecuador, frente a la tecnología de información y comunicación en un mundo globalizado”	dc_title	0.15	-1	0.88
1	23	DCFUENTE	-1		citation_publisher	0	-1	-1
1	23	DCABSTRA	-1		dcterms_abstract	0	-1	-1
1	24	DCFUENTE	-1		citation_publisher	0	-1	-1
6	13	DCABSTRA	-1	Como principal objetivo de este trabajo de titulación es la realización de un proyecto de inversión para la empresa Pinturas 1-2-3 S donde se analice y se proponga un modelo rentable para emprendedores con la finalidad de establecer tiendas comercializadoras de pinturas exclusivas de la empresa en la costa ecuatoriana empezando en la ciudad de Guayaquil. Pinturas 1-2-3 es una empresa del Grupo Corporativo Cóndor cuya estrategia es la comercialización de pinturas y afines para segmento económico o de bajo precio. Para el año 2007 se solicita al área de mercadeo idear un modelo para implantar tiendas de pintura en la ciudad de Guayaquil con las siguientes limitaciones. No se puede dejar el inventario a consignación debido a todos los controles que se deben tener, no se cuenta con capacidad financiera para poner almacenes propios y no se podría vender un modelo de franquicias al no ser un negocio reconocido. Para el presente trabajo se utilizó información secundaria para el análisis del sector y la investigación de mercado concluyendo con un análisis financiero El proyecto de inversión consta de cinco capítulos, dentro de los cuales se analiza: el sector y la industria a la que pertenece las tiendas de pintura y los factores que influyen en él. se indican los resultados de la investigación de mercado que se realizó para determinar la factibilidad de 13 implantación de las tiendas, se anexa un manual operativo. contratos legales e información correspondiente para la apertura de las tiendas. Se presenta el análisis financiero para determinar su rentabilidad y termina con las conclusiones del trabajo y puntos de vista personales El estudio de mercados se basó en información secundaria a la cual se tuvo acceso dentro de la maestría para la cual se realizó investigaciones cualitativas y cuantitativas. Basándose en los resultados del estudio se reveló que el perfil de la tienda debe ser como una tienda de barrio. El 80% de la población guayaquileña es considerada dentro del segmento que requiere productos económicos y 1.6% de sus ingresos lo destina a decoraciones del hogar esto da un noticia de mercado de 14.000.000 anuales en la ciudad de Guayaquil para este segmento. El análisis financiero se desarrolla bajo dos escenarios: uno optimista frente a uno pesimista. Los dos escenarios presentan Vi' positivo y TIR superior al costo de oportunidad planteado.	dcterms_abstract	0.03	-1	-1
6	13	DCPALCLA	-1	PLANEACIÓN EMPRESARIAL; INVERSIONES; CRECIMIENTO EMPRESARIAL; EMPRESAS COMERCIALES; masterThesis	citation_keywords	0.14	-1	-1
6	13	DCAUTOR	-1	Agüero Sandoval, Pablo Sebastián	dc_creator	0.11	-1	-1
6	13	DCCLAVES	-1	EMPRESAS COMERCIALES	dc_subject	0.13	-1	-1
6	13	DCEDITOR	-1	Quito: Universidad de las Américas, 2008	dc_publisher	0.13	-1	-1
6	13	DCTIPORE	-1	masterThesis	dc_type	0.07	-1	-1
6	13	DCIDENTI	-1	http://dspace.udla.edu.ec/handle/33000/9557	dc_identifier	0.03	-1	-1
6	13	DCIDIOMA	-1	spa	dc_language	0.02	-1	-1
6	13	DCFECHA	-1	2018-08-03T15:50:05Z	dcterms_dateaccepted	0.01	-1	-1
6	13	DCCOLABO	-1	Varas Olivares, Carmen Luz	dc_contributor	0.01	-1	-1
6	13	DCRELACI	-1		dc_relation	0	-1	-1
6	13	DCTITULO	-1	Realizar un proyecto de inversión para la empresa Pinturas 123 donde se analice y se ponga un modelo que comercialice la apertura y el buen funcionamiento de tiendas especializadas en la venta de pinturas y afines en la costa ecuatoriana	dc_title	0.15	-1	0
6	13	DCDESCRI	-1		dc_description	0	-1	0
7	14	DCFUENTE	-1		citation_publisher	0	-1	-1
7	14	DCABSTRA	-1	Desde hace algunos años, en nuestro Observatorio se ha comenzado el estudio de las pulsaciones estelares en estrellas enanas blancas. Hasta ahora, todos los cálculos han sido realizados dentro de la aproximación adiabática (Córsico, A. H. 1998, 2003). En esta Tesis nos proponemos generalizar el código de pulsaciones adiabáticas no-radiales desarrollado por Córsico, A. H.(1998), relajando la condición de adiabaticidad, de manera que permita calcular pulsaciones no-radiales, no-adiabáticas de estrellas pre-enanas blancas y enanas blancas. La importancia de relajar la condición de adiabaticidad se debe a que esta aproximación, si bien es útil para predecir con gran exactitud el valor de los períodos de oscilación de un dado modelo estelar, no proporciona información acerca de cuáles, de los infinitos modos posibles que conforman el espectro de pulsación, pueden llegar a alcanzar amplitudes lo suficientemente grandes como para ser observados en estrellas reales. Y esto es lo que pretendemos analizar aquí.	dcterms_abstract	0.03	-1	-1
7	14	DCPALCLA	-1	pulsaciones estelares; pulsaciones adiabáticas noradiales; estrellas enanas blancas; Ciencias Astronómicas; Astronomía	citation_keywords	0.14	-1	-1
7	14	DCAUTOR	-1	Monachesi, Antonela	dc_creator	0.11	-1	-1
7	14	DCCLAVES	-1	Astronomía	dc_subject	0.13	-1	-1
7	14	DCEDITOR	-1		dc_publisher	0	-1	-1
7	14	DCTIPORE	-1	Tesis de grado	dc_type	0.07	-1	-1
7	14	DCIDENTI	-1	http://fcaglp.fcaglp.unlp.edu.ar/evolgroup/THESES/practica-monachesi.pdf	dc_identifier	0.03	-1	-1
7	14	DCIDIOMA	-1	es	dc_language	0.02	-1	-1
7	14	DCFECHA	-1		dcterms_dateaccepted	0	-1	-1
7	14	DCCOLABO	-1	Althaus, Leandro Gabriel	dc_contributor	0.01	-1	-1
7	14	DCRELACI	-1		dc_relation	0	-1	-1
7	14	DCTITULO	-1	Pulsaciones no-radiales, no-adiabáticas en estrellas pre-enanas blancas PG1159	dc_title	0.15	-1	0
7	14	DCDESCRI	-1		dc_description	0	-1	0
1	25	DCDESCRI	-1	El presente trabajo de titulación tiene como objetivo analizar y evaluar la situación actual en la que se encuentra el GAD Municipal de Zamora por medio de un marco arquitectónico, esta información servirá como base para poder determinar su nivel de madurez mediante un modelo de madurez arquitectónico, y posteriormente proponer un modelo de gestión empresarial que permita a la organización ejecutar la transición hacia un próximo nivel de madurez. TOGAF es un marco de arquitectura empresarial, cuenta con un Método de Desarrollo Arquitectónico que está conformado por diferentes faces en la cual se desarrollan entregables y artefactos que sirven para poder recolectar información y conocer el estado actual de una organización. El modelo de Madurez de Arquitectura Empresarial cuenta con diferentes niveles y declaraciones que sirven para medir y determinar el nivel de madurez en el que se encuentra una organización. En base a los resultados se plantea un modelo de gestión empresarial para el GAD Municipal de Zamora que le permita subir de nivel de madurez y de esta manera ser más eficiente a la hora de prestar un producto o servicio	dc_description	0.12	-1	0.36
1	18	DCTITULO	-1	“Auditoría de gestión a la cooperativa de ahorro y crédito 15 de Abril Ltda. matriz de la ciudad de Portoviejo, año 2010”	dc_title	0.15	-1	0.78
8	34	DCTITULO	-1	Hexagonal global grid with the full dataset	dc_title	0.15	-1	0.32
8	34	DCDESCRI	-1	A shapefile of the global hexagonal grid containing all the variables used in the publication and the results from the Geographically Weighted Path Analysis. The variables include mean temperature, mean actual evapotranspiration (AET), climate-change velocity since de Last Glacial Maximum, mean elevation and species richness and phylogenetic diversity of terrestrial mammals. The original source from where these variables were obtained can be find in the full text of the publication.	dc_description	0.12	-1	0.32
7	31	DCABSTRA	-1	A continuación se presenta la propuesta de investigación cuyo objetivo fue Elaborar una estrategia didáctica que fomente el desarrollo de la competencia comunicativa oral de los estudiantes de derecho de la Universidad Colegio Mayor de Cundinamarca. Esta propuesta se realizó en el marco del cambio del Sistema Penal que ha atravesado Colombia en lo que va del Siglo XXI, obligando a la reformulación de la estructura curricular de las Facultades de Derecho del país. A partir de allí, nació la pregunta por los niveles de coherencia existentes entre el Sistema Evaluativo implementado por algunos docentes de la Facultad de Derecho de la Universidad Colegio Mayor de Cundinamarca y el desarrollo de competencias necesarias para el desempeño del profesional en el nuevo Sistema Penal Oral.&#xD;&#xA;La realización de entrevistas a egresados y docentes de la Facultad mencionada permitió establecer algunos posibles aspectos de mejora para el proceso formativo de estudiantes; para esto, se propone una estrategia didáctica que impulsaría el desarrollo de la competencia oral en los futuros abogados en aras del ejercicio óptimo de su profesión. La metodología de investigación que se plantea desde el paradigma interpretativo y el enfoque cualitativo, es la Investigación Acción.&#xD;&#xA;El documento se compone de cuatro (4) capítulos que contienen la propuesta de investigación. En el primer capítulo se describe el problema de investigación, los objetivos, la metodología propuesta, los instrumentos utilizados, los antecedentes de investigación y la justificación de la propuesta.&#xD;&#xA;2&#xD;&#xA;En el segundo capítulo se describe la apuesta teórica de los investigadores donde los conceptos de Competencia Oral y Evaluación por Competencias resultaron clave para entender el problema de estudio y asimismo formular la estrategia didáctica. El siguiente apartado presenta la propuesta elaborada por los autores y cómo podría aplicarse en el aula de los profesores de derecho penal. Finalmente, se cuenta con el capítulo de conclusiones y bibliografía más los respectivos anexos que se han señalado a lo largo del documento.&#xD;&#xA;La elaboración de esta propuesta espera generar mayor reflexión alrededor de conceptos relacionados con el campo educativo. De manera puntual, se reafirma la necesidad de formular procesos de enseñanza y evaluación afines a las necesidades del contexto nacional, principalmente, teniendo en cuenta las características profesionales que requieren los nuevos juristas.	dcterms_abstract	0.03	-1	-1
7	31	DCPALCLA	-1	Competencias; Derecho; Sistema Penal Colombiano; Ense&ntilde;anza del Derecho	citation_keywords	0.14	-1	-1
7	31	DCAUTOR	-1	dr_leon15@hotmail.com	dc_creator	0.11	-1	-1
7	31	DCCLAVES	-1	Comunicación oral -- Técnicas	dc_subject	0.13	-1	-1
7	31	DCEDITOR	-1		dc_publisher	0	-1	-1
7	31	DCTIPORE	-1	info:eu-repo/semantics/acceptedVersion	dc_type	0.07	-1	-1
7	31	DCIDENTI	-1	http://hdl.handle.net/10901/15947	dc_identifier	0.03	-1	-1
7	31	DCIDIOMA	-1	spa	dc_language	0.02	-1	-1
7	31	DCFECHA	-1	2019-08-26T20:18:15Z	dcterms_dateaccepted	0.01	-1	-1
1	18	DCFUENTE	-1		citation_publisher	0	-1	-1
1	18	DCABSTRA	-1		dcterms_abstract	0	-1	-1
1	18	DCPALCLA	-1	Auditoria Financiera; Contabilidad y Auditoría - Tesis; Auditoría administrativa; Ecuador; Tesis; bachelorThesis	citation_keywords	0.14	-1	-1
1	18	DCAUTOR	-1	Egüez Campos, Gissela Natalia	dc_creator	0.11	-1	-1
1	18	DCCLAVES	-1	Tesis	dc_subject	0.13	-1	-1
1	18	DCDESCRI	-1	La presente investigación está estructurada en tres capítulos, desarrollados en base a los resultados conseguidos en el estudio e indagación de las actividades administrativas y operativas del departamento de crédito y cobranzas de la cooperativa, instancias en las que se desarrolla principalmente el giro del negocio, para el período 2010.&#xD;&#xA;En el capítulo uno, se presenta de manera detallada la información relacionada con la cooperativa, su estructura y operaciones, así como la historia de la misma relatada en los antecedentes de la empresa.&#xD;&#xA;En el capítulo dos, desplegamos todo lo referente al marco conceptual y teórico de la investigación, en donde exponemos los diferentes conceptos de los temas examinados en el desarrollo de la auditoría de gestión.&#xD;&#xA;En el capítulo tres, mostramos el proceso integral de la auditoría de gestión aplicada a la Cooperativa “15 de Abril Ltda.”, específicamente al proceso de crédito y cobranzas de la matriz, para el período 2010.	dc_description	0.12	-1	0.78
7	31	DCCOLABO	-1	León Mora, Elba Consuelo	dc_contributor	0.01	-1	-1
7	31	DCRELACI	-1		dc_relation	0	-1	-1
7	31	DCTITULO	-1	El desarrollo de la competencia oral para el desempeño del abogado en el nuevo sistema penal oral en Colombia en la Universidad Colegio Mayor de Cundinamarca	dc_title	0.15	-1	0.1
7	31	DCDESCRI	-1	Universidad Libre - Facultad de Ingeniería - Instituto de Posgrados	dc_description	0.12	-1	0.1
8	34	DCFUENTE	-1		citation_publisher	0	-1	-1
8	34	DCABSTRA	-1		dcterms_abstract	0	-1	-1
8	34	DCPALCLA	-1		citation_keywords	0	-1	-1
1	21	DCAUTOR	-1	Cevallos Simbaña, Jorge Germánico	dc_creator	0.11	-1	-1
1	21	DCCLAVES	-1	Tesis	dc_subject	0.13	-1	-1
1	21	DCEDITOR	-1		dc_publisher	0	-1	-1
1	21	DCTIPORE	-1	bachelorThesis	dc_type	0.07	-1	-1
1	21	DCIDENTI	-1	http://dspace.utpl.edu.ec/handle/123456789/5519	dc_identifier	0.03	-1	-1
1	21	DCIDIOMA	-1	es	dc_language	0.02	-1	-1
1	21	DCFECHA	-1	2013-01-08T15:35:18Z	dcterms_dateaccepted	0.01	-1	-1
1	21	DCCOLABO	-1	Rojas, Luis	dc_contributor	0.01	-1	-1
1	21	DCRELACI	-1		dc_relation	0	-1	-1
1	21	DCDESCRI	-1	En Ecuador, si bien la sólida situación del capital humano y el perfeccionamiento del e-liderazgo revelan una base favorable para el progreso, los bajos niveles de conectividad y la falta de incentivos para las inversiones también requieren atención. Por tanto esta investigación aborda específicamente en qué términos se está produciendo la transición hacia la nueva economía en Ecuador, para detectar, así, los desafíos que esta integración plantea en cuanto a su desarrollo y el impacto social y económico que implica.	dc_description	0.12	-1	0.88
1	27	DCFUENTE	-1		citation_publisher	0	-1	-1
1	27	DCABSTRA	-1		dcterms_abstract	0	-1	-1
1	27	DCPALCLA	-1	Alzheimer.-; Emociones en texto.-; Minería de datos.; Polaridad.-; Ingeniero en informática.-; bachelorThesis	citation_keywords	0.14	-1	-1
1	27	DCAUTOR	-1	Vaca Enríquez, Wilson Orlando	dc_creator	0.11	-1	-1
1	27	DCCLAVES	-1	Ingeniero en informática.-	dc_subject	0.13	-1	-1
1	27	DCEDITOR	-1		dc_publisher	0	-1	-1
1	27	DCTIPORE	-1	bachelorThesis	dc_type	0.07	-1	-1
1	27	DCIDENTI	-1	http://dspace.utpl.edu.ec/handle/20.500.11962/24178	dc_identifier	0.03	-1	-1
1	27	DCIDIOMA	-1	spa	dc_language	0.02	-1	-1
1	27	DCFECHA	-1	2019-05-27T23:16:24Z	dcterms_dateaccepted	0.01	-1	-1
1	27	DCCOLABO	-1	Torres Carrión, Pablo Vicente	dc_contributor	0.01	-1	-1
1	27	DCRELACI	-1		dc_relation	0	-1	-1
1	27	DCTITULO	-1	Análisis del texto en conversaciones de pacientes con Demencia Tipo Alzheimer	dc_title	0.15	-1	0.43
1	27	DCDESCRI	-1	Resumen:La Demencia de tipo Alzheimer es una enfermedad neurodegenerativa que resulta de la disfunción del sistema nervioso central y que tiene como consecuencia el deterioro cognitivo, ocasionando entre otros síntomas la pérdida progresiva de su expresión emocional en el diálogo y aumentando drásticamente conforme avanza la enfermedad, por lo que en la presente investigación se realizó la identificación de emociones humanas en texto con pacientes que padecen de Demencia moderada de tipo Alzheimer, mediante un análisis de la polaridad del texto con la transcripción de las conversaciones grabadas en video a 10 pacientes que padecen esta enfermedad y haciendo uso de la herramienta de análisis de sentimientos SentiStrength en línea, para corroborar con los datos obtenidos mediante el algoritmo no supervisado PMI (PointWise Mutual Information), empleando la metodología CRISP-DM se realizará un análisis correlacional con los datos obtenidos en trabajos anteriores por el método supervisado.	dc_description	0.12	-1	0.43
5	28	DCFUENTE	-1	Universidad de las Fuerzas Armadas ESPE. Carrera de Ingeniería Geográfica y del Medio Ambiente.	citation_publisher	0.0308	-1	-1
5	28	DCABSTRA	-1	Los inventarios de infraestructura vial requieren tiempo y varios componentes para su elaboración. En este proyecto se estableció la utilización de un sistema multicámaras de mapeo móvil para realizar el inventario a lo largo de un tramo de la Avenida Simón Bolívar, para determinar el estado de su señalización horizontal, vertical y complementaria con la finalidad de dejar un registro que sirva para la toma de decisiones. Se colocaron 4 marcas con medidas establecidas para determinar su precisión dando como resultado que el promedio de las diferencias fue de 0,005 m. También se colocaron 6 puntos GNSS y se pincharon en las imágenes dando una diferencia promedio de 0,0719 m. Se extrajo la información de un total de 1374 entidades. Se determinó que la señalización vertical de la Avenida se encuentra en su mayoría en buen estado, siendo necesaria la intervención del 19,15%. A pesar de que el 32,3% de la señalización horizontal no cumple con el ancho establecido en el reglamento, ésta se encuentra en buen estado. Y en cuanto a la señalización complementaria, el 18,7% está ausente. Se pudo establecer que el sistema multicámaras de mapeo móvil, puede sustituir a todos los componentes utilizados en la realización de un inventario vial, disminuyendo el tiempo y los errores que se podrían producir.	dcterms_abstract	0.03	-1	-1
5	28	DCPALCLA	-1	INVENTARIOS; INFRAESTRUCTURA; OBRAS PÚBLICAS; BIENES PÚBLICOS; bachelorThesis	citation_keywords	0.14	-1	-1
5	28	DCAUTOR	-1	Zambrano Campaña, Nidia Alicia	dc_creator	0.11	-1	-1
5	28	DCCLAVES	-1	BIENES PÚBLICOS	dc_subject	0.13	-1	-1
5	28	DCEDITOR	-1	Universidad de las Fuerzas Armadas ESPE. Carrera de Ingeniería Geográfica y del Medio Ambiente.	dc_publisher	0.13	-1	-1
5	28	DCTIPORE	-1	bachelorThesis	dc_type	0.07	-1	-1
5	28	DCTITULO	-1	Inventario de infraestructura vial en un tramo de la avenida simón bolívar utilizando un sistema multicámaras de rápida captura como herramienta para la planificación	dc_title	0.15	-1	0
5	28	DCDESCRI	-1		dc_description	0	-1	0
1	22	DCAUTOR	-1	Carabalí Terán, Rosa Silvana	dc_creator	0.11	-1	-1
1	22	DCCLAVES	-1	Magíster en literatura infantil y juvenil – Tesis y disertaciones académicas	dc_subject	0.13	-1	-1
1	22	DCEDITOR	-1		dc_publisher	0	-1	-1
1	22	DCTIPORE	-1	masterThesis	dc_type	0.07	-1	-1
1	22	DCIDENTI	-1	http://dspace.utpl.edu.ec/handle/123456789/13849	dc_identifier	0.03	-1	-1
1	22	DCIDIOMA	-1	spa	dc_language	0.02	-1	-1
1	22	DCFECHA	-1	2016-01-28T14:18:53Z	dcterms_dateaccepted	0.01	-1	-1
1	22	DCCOLABO	-1	Ávalos Flóres, Edison Duván	dc_contributor	0.01	-1	-1
1	22	DCRELACI	-1		dc_relation	0	-1	-1
1	22	DCDESCRI	-1	En esta investigación se analizaron, desde la estética y desde un enfoque social, los temas y motivos presentes en las obras Luz y Cristal, Romancero otavaleño y Palabras para jugar del autor Gustavo Alfredo Jácome. Los temas que se analizaron fueron: la identidad cultural, la naturaleza, los valores y el juego. Los motivos que se analizaron fueron: la belleza autóctona, la descripción de lugares y paisajes, la estimulación de la lectura, el esfuerzo y amor de los padres hacia sus hijos, la motivación al estudio y la creatividad lúdica.&#xD;&#xA;Desde el ámbito del niño, se determinó que las obras analizadas estimulan el placer del lector, permitiéndoles rescatar la poesía y enseñándoles a cultivar profundos sentimientos éticos desde la libertad, el humanismo, la ternura y el amor; para que disfruten mediante la lectura el arte de la palabra escrita.&#xD;&#xA;La obra poética de Jácome contiene un tono humorístico, lúdico que nos permite entrar en un mundo creativo e imaginario donde el juego de palabras crea imágenes mentales para encontrar la realidad del niño y joven en su más profundo significado.	dc_description	0.12	-1	0.84
5	28	DCIDENTI	-1	http://repositorio.espe.edu.ec/handle/21000/15511	dc_identifier	0.03	-1	-1
5	28	DCIDIOMA	-1	spa	dc_language	0.02	-1	-1
5	28	DCFECHA	-1	2019-02-20T02:05:09Z	dcterms_dateaccepted	0.01	-1	-1
5	28	DCCOLABO	-1	Padilla Almeida, Oswaldo Vinicio	dc_contributor	0.01	-1	-1
5	28	DCRELACI	-1		dc_relation	0	-1	-1
7	32	DCFUENTE	-1		citation_publisher	0	-1	-1
7	32	DCABSTRA	-1		dcterms_abstract	0	-1	-1
7	32	DCPALCLA	-1	Sabana Centro; Innovaci&oacute;n; Desarrollo Regional	citation_keywords	0.14	-1	-1
7	32	DCAUTOR	-1	Corporación Prodensa	dc_creator	0.11	-1	-1
7	32	DCCLAVES	-1	Desarrollo Regional	dc_subject	0.13	-1	-1
7	32	DCEDITOR	-1		dc_publisher	0	-1	-1
7	32	DCTIPORE	-1		dc_type	0	-1	-1
7	32	DCIDENTI	-1	http://hdl.handle.net/11520/20779	dc_identifier	0.03	-1	-1
7	32	DCIDIOMA	-1		dc_language	0	-1	-1
7	32	DCFECHA	-1	2018-08-23T17:08:34Z	dcterms_dateaccepted	0.01	-1	-1
7	32	DCCOLABO	-1		dc_contributor	0	-1	-1
7	32	DCRELACI	-1		dc_relation	0	-1	-1
7	32	DCTITULO	-1	Sabana centro Región de Innovación: ¿Hacía donde debemos ir?	dc_title	0.15	-1	0.25
7	32	DCDESCRI	-1	Asocentro	dc_description	0.12	-1	0.25
9	36	LODESCRI	-1		description	0	-1	0
8	34	DCAUTOR	-1	Rangel, Thiago	dc_creator	0.11	-1	-1
8	34	DCCLAVES	-1	structural equation modeling	dc_subject	0.13	-1	-1
8	34	DCEDITOR	-1		dc_publisher	0	-1	-1
8	34	DCTIPORE	-1	none	dc_type	0.07	-1	-1
8	34	DCIDENTI	-1	http://hdl.handle.net/10255/dryad.223820	dc_identifier	0.03	-1	-1
8	34	DCIDIOMA	-1		dc_language	0	-1	-1
8	34	DCFECHA	-1	2019-09-07T18:02:06Z	dcterms_dateaccepted	0.01	-1	-1
8	34	DCCOLABO	-1		dc_contributor	0	-1	-1
8	34	DCRELACI	-1		dc_relation	0	-1	-1
9	36	LOPCLAVE	-1		keyword	0	-1	-1
9	36	LOENTIDA	-1		entity	0	-1	-1
9	36	LOTIREED	-1		learningResourceType	0	0	-1
9	36	LOIDENTI	-1	http://portal.discoverthecosmos.eu/node/106518	identifier	0.0274	-1	-1
9	36	LOESTRUC	-1	atomic	structure	0.0274	1	-1
9	36	LOALEVEL	-1		aggregationLevel	0	0	-1
9	36	LOVERSIO	-1		version	0	-1	-1
9	36	LOESTADO	-1		status	0	0	-1
9	36	LOROL	-1		role	0	0	-1
9	36	LOFECHA	-1		dateTime	0	-1	-1
1	24	DCABSTRA	-1	The proposal for a Secure Network Architecture is based according to the requirements of the&#xD;&#xA;company SISCOMIN Cía Ltda., taking into account: data flow, physical facilities, equipment in&#xD;&#xA;the network, and authorized personnel unauthorized access to the network, internal and external&#xD;&#xA;users.&#xD;&#xA;The information and statements contained in this thesis project is not only theoretical, but&#xD;&#xA;represents a large percentage of real information from the company that it was been collecting&#xD;&#xA;during its institutional life. This thesis contains a new topological design. That will enable secure&#xD;&#xA;network assets and implementing a wiring structure by applying rules and standards required for&#xD;&#xA;this purpose, which will optimize the quality of the submission process and data reception&#xD;&#xA;improving communication within the company, will eliminate the existence of deadlocks,&#xD;&#xA;improvised wiring, cable indiscriminate growth.&#xD;&#xA;Nowadays, the company is growing rapidly and it was necessary a warrantable, reliable and&#xD;&#xA;versatile infrastructure that allows them to better manage the information, resources and&#xD;&#xA;equipment that support the computer network for the benefit of users. All these requirements are&#xD;&#xA;being met by the thesis project.	dcterms_abstract	0.03	-1	-1
1	24	DCPALCLA	-1	Seguridad de computadores; Arquitectura de red; organizacion empresarial; Ingeniero en informática-Tesis y disertaciones académicas; bachelorThesis	citation_keywords	0.14	-1	-1
1	24	DCAUTOR	-1	Flores Galarza, Hugo César	dc_creator	0.11	-1	-1
1	24	DCCLAVES	-1	Ingeniero en informática-Tesis y disertaciones académicas	dc_subject	0.13	-1	-1
1	24	DCEDITOR	-1		dc_publisher	0	-1	-1
1	24	DCTIPORE	-1	bachelorThesis	dc_type	0.07	-1	-1
1	24	DCIDENTI	-1	http://dspace.utpl.edu.ec/handle/123456789/12611	dc_identifier	0.03	-1	-1
1	24	DCIDIOMA	-1	spa	dc_language	0.02	-1	-1
1	24	DCFECHA	-1	2015-06-25T14:03:52Z	dcterms_dateaccepted	0.01	-1	-1
1	24	DCCOLABO	-1	Enciso Quispe, Liliana Elvira	dc_contributor	0.01	-1	-1
1	24	DCRELACI	-1		dc_relation	0	-1	-1
1	24	DCTITULO	-1	Diseño de una arquitectura de red segura para SISCOMIN CIA. LTDA	dc_title	0.15	-1	0.18
1	24	DCDESCRI	-1	La propuesta de una Arquitectura de Red Segura, se basa en función a los requerimientos de la&#xD;&#xA;empresa SISCOMIN Cía, tomando en cuenta: flujo de datos, instalaciones físicas, equipos que&#xD;&#xA;conforman la red, personal autorizado y no autorizado que accede a la red, usuarios internos y&#xD;&#xA;externos.&#xD;&#xA;La información vertida en esta tesis no es solamente teórica, sino que representa en gran&#xD;&#xA;porcentaje información real que se la ha recopilado durante la vida institucional de la empresa.&#xD;&#xA;Esta tesis recoge un nuevo diseño topológico, que permitirá asegurar los activos de la red, así&#xD;&#xA;como la implementación de un cableado estructurado, aplicando normas y estándares exigidos&#xD;&#xA;para tal fin, optimizando la calidad del proceso de envío y recepción de datos y mejorando la&#xD;&#xA;comunicación, eliminando la existencia de puntos muertos, cableado improvisado, crecimiento&#xD;&#xA;indiscriminado de cables.&#xD;&#xA;Actualmente la empresa está creciendo con gran rapidez y era necesaria una infraestructura&#xD;&#xA;confiable y versátil, que permita una mejor administración, tanto de la información como de&#xD;&#xA;todos los recursos que soporta la red de computadoras, lo que se ha logrado con el trabajo&#xD;&#xA;desarrollado.	dc_description	0.12	-1	0.18
7	47	DCRELACI	-1	http://eprints.rclis.org/34225/	dc_relation	0.0192	-1	-1
7	47	DCFUENTE	-1		citation_publisher	0	-1	-1
7	47	DCABSTRA	-1		dcterms_abstract	0	-1	-1
7	30	DCFUENTE	-1		citation_publisher	0	-1	-1
7	30	DCABSTRA	-1	El presente informe tiene tres partes. En la primera se explica el valor que las tutorías implican en el EEES. Se parte de su desarrollo en el sistema anglosajón y sus influencias en el EEES. En la segunda parte se presenta la memoria de la visita realiza al Imperial College y el University College of London (UCL). El la tercera, a modo de conclusión, ofrecemos algunas recomendaciones para ponerlas en práctica en nuestra universidad.	dcterms_abstract	0.03	-1	-1
7	30	DCPALCLA	-1	Tutor&iacute;as; Espacio Europeo de Educaci&oacute;n Superior; Universidad de Salamanca (Espa&ntilde;a). Facultad de Econom&iacute;a y Empresa; University College of London (Gran Breta&ntilde;a)	citation_keywords	0.14	-1	-1
7	30	DCAUTOR	-1	López García, Santiago	dc_creator	0.11	-1	-1
7	30	DCCLAVES	-1	58 Pedagogía	dc_subject	0.13	-1	-1
7	30	DCEDITOR	-1		dc_publisher	0	-1	-1
7	30	DCTIPORE	-1	info:eu-repo/semantics/other	dc_type	0.07	-1	-1
7	30	DCIDENTI	-1	http://hdl.handle.net/10366/75732	dc_identifier	0.03	-1	-1
7	30	DCIDIOMA	-1	spa	dc_language	0.02	-1	-1
7	30	DCFECHA	-1	2010-06-22T08:00:41Z	dcterms_dateaccepted	0.01	-1	-1
7	30	DCCOLABO	-1		dc_contributor	0	-1	-1
7	30	DCRELACI	-1		dc_relation	0	-1	-1
7	30	DCDESCRI	-1	Código del proyecto MD/24.	dc_description	0.12	-1	0
7	47	DCPALCLA	-1		citation_keywords	0	-1	-1
7	47	DCAUTOR	-1	Alakwe, Kizito-Ogedi	dc_creator	0.11	-1	-1
7	47	DCCLAVES	-1	GA. Information industry.	dc_subject	0.13	-1	-1
7	47	DCEDITOR	-1	Formalpress / Media XXI	dc_publisher	0.13	-1	-1
7	47	DCTIPORE	-1	PeerReviewed	dc_type	0.07	-1	-1
7	47	DCIDENTI	-1	  Alakwe, Kizito-Ogedi Defining the cultural and creative industry: An exploration of the Nigerian cultural and creative ecosystem. Journal of Creative Industries and Cultural Studies (JOCIS), 2018, vol. 3, pp. 14-31.       [Journal article (Paginated)] 	dc_identifier	0.03	-1	-1
7	47	DCIDIOMA	-1	en	dc_language	0.02	-1	-1
7	47	DCFECHA	-1		dcterms_dateaccepted	0	-1	-1
7	47	DCCOLABO	-1		dc_contributor	0	-1	-1
7	47	DCTITULO	-1	Defining the cultural and creative industry: An exploration of the Nigerian cultural and creative ecosystem	dc_title	0.15	-1	0.77
7	47	DCDESCRI	-1	The recency of the cultural and creative industries and the cultural diversity existing among the nations of the world have caused many societies, organisations and governments to define the industry based on the peculiarities of their specific culture and environment. Government agencies like the UK Department for Culture, Media and Sports and multilateral institutions like UNCTAD (United Nations Conference on Trade and Development) have all defined the industry by leveraging on specific criteria that they developed for that purpose. As an industry sector in Nigeria, the cultural and creative industry recently received the attention it deserves when Nollywood (the Nigerian Film Industry) was listed as a significant contributor to the economy of Nigeria, which is Africa’s largest economy. This development has made it imperative to understand the components of the cultural and creative industry in Nigeria and leverage such information to define the industry in the Nigerian context. In conclusion, this paper posits that any definition of the cultural and creative industry must incorporate four essential elements: the producers, the regulators, creative cities and clusters and those industries that offer allied support services.	dc_description	0.12	-1	0.77
9	36	LOIDIOMA	-1		language	0	-1	-1
9	36	LOTITULO	-1		title	0	-1	0
9	37	LOPCLAVE	-1		keyword	0	-1	-1
9	37	LOENTIDA	-1		entity	0	-1	-1
9	37	LOTIREED	-1		learningResourceType	0	0	-1
9	37	LOIDENTI	-1	http://portal.discoverthecosmos.eu/node/107559	identifier	0.0274	-1	-1
9	37	LOESTRUC	-1	atomic	structure	0.0274	1	-1
9	37	LOALEVEL	-1		aggregationLevel	0	0	-1
9	37	LOVERSIO	-1		version	0	-1	-1
9	37	LOESTADO	-1		status	0	0	-1
9	37	LOROL	-1		role	0	0	-1
9	37	LOFECHA	-1		dateTime	0	-1	-1
9	37	LOIDIOMA	-1	en	language	0.0551	-1	-1
9	37	LOTITULO	-1		title	0	-1	0
9	37	LODESCRI	-1		description	0	-1	0
9	44	LOPCLAVE	-1		keyword	0	-1	-1
9	44	LOENTIDA	-1		entity	0	-1	-1
9	44	LOTIREED	-1		learningResourceType	0	0	-1
9	44	LOIDENTI	-1	http://portal.discoverthecosmos.eu/node/108219	identifier	0.0274	-1	-1
9	44	LOESTRUC	-1	atomic	structure	0.0274	1	-1
9	44	LOALEVEL	-1		aggregationLevel	0	0	-1
9	44	LOVERSIO	-1		version	0	-1	-1
9	44	LOESTADO	-1		status	0	0	-1
9	44	LOROL	-1		role	0	0	-1
9	44	LOFECHA	-1		dateTime	0	-1	-1
9	44	LOIDIOMA	-1	en	language	0.0551	-1	-1
9	44	LOTITULO	-1		title	0	-1	0
9	44	LODESCRI	-1		description	0	-1	0
\.


--
-- Data for Name: meoa; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY meoa (re_id, oa_id, oa_titulo, oa_std, oa_url, oa_tot_completitud, oa_tot_consistencia, oa_tot_coherencia, oa_fec) FROM stdin;
1	21	“La nueva economía y el Ecuador, frente a la tecnología de información y comunicación en un mundo globalizado”	DC	http://dspace.utpl.edu.ec/handle/123456789/5519	0	0	0	2019-09-01 14:21:35.80202
1	22	Análisis de los temas y motivos presentes en las obras: Luz y Cristal, Romancero otavaleño y Palabras para jugar.	DC	http://dspace.utpl.edu.ec/handle/123456789/13849	0	0	0	2019-09-01 14:23:24.323082
1	23	Native Language Interference in the spoken target language: A case study of there speakers of english as a foreign language.	DC	http://dspace.utpl.edu.ec/handle/123456789/5068	0	0	0	2019-09-01 14:24:39.334946
1	24	Diseño de una arquitectura de red segura para SISCOMIN CIA. LTDA	DC	http://dspace.utpl.edu.ec/handle/123456789/12611	0	0	0	2019-09-01 14:26:21.839878
1	25	Evaluación de la madurez de la arquitectura de negocio de pequeña y mediana empresa (PYME) en el Ecuador y propuesta de modelo de gestión	DC	http://dspace.utpl.edu.ec/handle/20.500.11962/24179	0	0	0	2019-09-01 19:38:04.982716
1	27	Análisis del texto en conversaciones de pacientes con Demencia Tipo Alzheimer	DC	http://dspace.utpl.edu.ec/handle/20.500.11962/24178	0	0	0	2019-09-01 20:07:48.406648
5	28	Inventario de infraestructura vial en un tramo de la avenida simón bolívar utilizando un sistema multicámaras de rápida captura como herramienta para la planificación	DC	http://repositorio.espe.edu.ec/handle/21000/15511	0	0	0	2019-09-01 20:07:52.130853
7	30	El modelo tutorial en el sistema inglés: análisis de buenas prácticas en los estudios de master en el London Centre for History of Science, Technology and Medicine del Imperial College of London y el University College of London	DC	http://hdl.handle.net/10366/75732	0	0	0	2019-09-05 21:10:41.387553
7	31	El desarrollo de la competencia oral para el desempeño del abogado en el nuevo sistema penal oral en Colombia en la Universidad Colegio Mayor de Cundinamarca	DC	http://hdl.handle.net/10901/15947	0	0	0	2019-09-05 22:41:54.443826
7	32	Sabana centro Región de Innovación: ¿Hacía donde debemos ir?	DC	http://hdl.handle.net/11520/20779	0	0	0	2019-09-05 22:46:06.262958
8	34	Hexagonal global grid with the full dataset	DC	https://datadryad.org/handle/10255/dryad.223820?show=full	0	0	0	2019-09-07 22:23:13.529924
9	36		LOM	http://portal.discoverthecosmos.eu/proxy/proxy.php?xmlfile=files/uploads/xml/LT_obs-c_e_20050601_121_2_1_1-LOM.xml	0	0	0	2019-09-08 09:07:31.671585
9	37		LOM	http://portal.discoverthecosmos.eu/proxy/proxy.php?xmlfile=files/uploads/xml/1013g000t001.xml	0	0	0	2019-09-08 14:55:22.800525
9	44		LOM	http://portal.discoverthecosmos.eu/proxy/proxy.php?xmlfile=files/uploads/xml/313f000t000.xml	0	0	0	2019-10-01 16:33:35.608508
2	45	Gestión de inventarios en una empresa de respuestos automotrices	DC	http://repositorio.uchile.cl/handle/2250/132985	0	0	0	2019-10-03 18:11:56.518435
1	3	Gestión del liderazgo y valores en el Instituto Técnico Superior Salesiano de la ciudad de Cuenca, provincia del Azuay, Sección Bachillerato durante el período lectivo 2011 – 2012	DC	http://dspace.utpl.edu.ec/handle/123456789/9563	0	0	0	2019-08-05 12:14:43.408559
3	4	MAPAS TEMÁTICOS	LOM	https://roa.cedia.edu.ec/excursions/4/metadata.xml	0	0	0	2019-08-05 12:14:46.956674
1	6	Implementación de un sistema de gestión y control de un despacho jurídico.	DC	http://dspace.utpl.edu.ec/handle/123456789/4253	0	0	0	2019-08-05 21:20:18.292259
1	8	Planificación estratégica territorial Ayllu Lakta Gunudel Gulakpamba	DC	http://dspace.utpl.edu.ec/handle/123456789/16647	0	0	0	2019-08-06 09:32:40.242065
1	9	Reestructuración arquitectónica  del Mercado Gran Colombia	DC	http://dspace.utpl.edu.ec/handle/123456789/16659	0	0	0	2019-08-06 10:05:21.829499
1	10	Gestión de anco de banda  a usuarios  Wifi  e integración de los servicios de la red  inalámbrica /	DC	http://dspace.utpl.edu.ec/handle/123456789/16604	0	0	0	2019-08-06 10:05:23.071584
4	11	Antimonita (3.7.9-6)	DC	http://bibdigital.epn.edu.ec/handle/15000/13195	0	0	0	2019-08-06 10:05:25.740546
5	12	Identificación, análisis y evaluación de riesgos laborales en la Industria COPPOLA del ECUADOR.	DC	http://repositorio.espe.edu.ec/handle/21000/7619	0	0	0	2019-08-06 10:05:26.873037
6	13	Realizar un proyecto de inversión para la empresa Pinturas 123 donde se analice y se ponga un modelo que comercialice la apertura y el buen funcionamiento de tiendas especializadas en la venta de pinturas y afines en la costa ecuatoriana	DC	http://dspace.udla.edu.ec/handle/33000/9557	0	0	0	2019-08-06 10:05:28.09474
7	14	Pulsaciones no-radiales, no-adiabáticas en estrellas pre-enanas blancas PG1159	DC	http://hdl.handle.net/10915/1974	0	0	0	2019-08-06 10:05:36.504236
3	46	Incubadora de proyectos	LOM	http://roa.cedia.edu.ec/excursions/7/metadata.xml	0	0	0	2019-10-03 18:55:51.177845
1	18	“Auditoría de gestión a la cooperativa de ahorro y crédito 15 de Abril Ltda. matriz de la ciudad de Portoviejo, año 2010”	DC	http://dspace.utpl.edu.ec/handle/123456789/5854	0	0	0	2019-08-27 09:02:37.320723
7	47	Defining the cultural and creative industry: An exploration of the Nigerian cultural and creative ecosystem	DC	http://hdl.handle.net/10760/34225	0	0	0	2019-10-03 19:04:15.112742
\.


--
-- Data for Name: merepo; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY merepo (re_id, re_dominio, re_url) FROM stdin;
1	dspace.utpl.edu.ec	http://dspace.utpl.edu.ec/handle/123456789/5519
2	repositorio.uchile.cl	http://repositorio.uchile.cl/handle/2250/132985
3	roa.cedia.edu.ec	https://roa.cedia.edu.ec/excursions/4/metadata.xml
4	bibdigital.epn.edu.ec	http://bibdigital.epn.edu.ec/handle/15000/13195
5	repositorio.espe.edu.ec	http://repositorio.espe.edu.ec/handle/21000/7619
6	dspace.udla.edu.ec	http://dspace.udla.edu.ec/handle/33000/9557
7	hdl.handle.net	http://hdl.handle.net/10915/1974
8	datadryad.org	https://datadryad.org/handle/10255/dryad.223820?show=full
9	portal.discoverthecosmos.eu	http://portal.discoverthecosmos.eu/proxy/proxy.php?xmlfile=files/uploads/xml/LT_obs-c_e_20050601_121_2_1_1-LOM.xml
\.


--
-- Data for Name: metabla; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY metabla (ta_id, ta_nombre) FROM stdin;
1	DC
2	LOM
3	SUBGRUPO
\.


--
-- Name: mecatalog_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY mecatalogo
    ADD CONSTRAINT mecatalog_pkey PRIMARY KEY (ta_id, ca_id);


--
-- Name: meinstancia_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY meinstancia
    ADD CONSTRAINT meinstancia_pkey PRIMARY KEY (ta_id, ca_id, in_id);


--
-- Name: metabla_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY metabla
    ADD CONSTRAINT metabla_pkey PRIMARY KEY (ta_id);


--
-- Name: pk_meta; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY memeta
    ADD CONSTRAINT pk_meta PRIMARY KEY (re_id, oa_id, me_id);


--
-- Name: pk_oa; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY meoa
    ADD CONSTRAINT pk_oa PRIMARY KEY (re_id, oa_id);


--
-- Name: pk_repo; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY merepo
    ADD CONSTRAINT pk_repo PRIMARY KEY (re_id);


--
-- Name: ix_oa; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX ix_oa ON meoa USING btree (oa_titulo, oa_std, oa_url);


--
-- Name: fk_catalogo_instancia; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY meinstancia
    ADD CONSTRAINT fk_catalogo_instancia FOREIGN KEY (ta_id, ca_id) REFERENCES mecatalogo(ta_id, ca_id);


--
-- Name: fk_oa_meta; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY memeta
    ADD CONSTRAINT fk_oa_meta FOREIGN KEY (re_id, oa_id) REFERENCES meoa(re_id, oa_id);


--
-- Name: fk_repo_oa; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY meoa
    ADD CONSTRAINT fk_repo_oa FOREIGN KEY (re_id) REFERENCES merepo(re_id);


--
-- Name: fk_tabla_catalogo; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY mecatalogo
    ADD CONSTRAINT fk_tabla_catalogo FOREIGN KEY (ta_id) REFERENCES metabla(ta_id);


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

