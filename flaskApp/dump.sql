--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.21
-- Dumped by pg_dump version 9.6.21

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
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: college; Type: TABLE; Schema: public; Owner: football
--

CREATE TABLE public.college (
    player_id integer NOT NULL,
    "School" character varying,
    "Conf" character varying
);


ALTER TABLE public.college OWNER TO football;

--
-- Name: combine; Type: TABLE; Schema: public; Owner: football
--

CREATE TABLE public.combine (
    player_id integer NOT NULL,
    "Forty_Yard" double precision,
    "Vertical" double precision,
    "Bench" double precision,
    "Broad_Jump" double precision,
    "Three_Cone" double precision,
    "Shuttle" double precision
);


ALTER TABLE public.combine OWNER TO football;

--
-- Name: draft; Type: TABLE; Schema: public; Owner: football
--

CREATE TABLE public.draft (
    player_id integer NOT NULL,
    "Round" integer,
    "Pick_No" integer
);


ALTER TABLE public.draft OWNER TO football;

--
-- Name: info; Type: TABLE; Schema: public; Owner: football
--

CREATE TABLE public.info (
    player_id integer NOT NULL,
    "position" character varying,
    "Height" double precision,
    "Weight" double precision,
    "Year" integer NOT NULL
);


ALTER TABLE public.info OWNER TO football;

--
-- Name: player; Type: TABLE; Schema: public; Owner: football
--

CREATE TABLE public.player (
    player_id integer NOT NULL,
    name character varying NOT NULL
);


ALTER TABLE public.player OWNER TO football;

--
-- Name: player_player_id_seq; Type: SEQUENCE; Schema: public; Owner: football
--

CREATE SEQUENCE public.player_player_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.player_player_id_seq OWNER TO football;

--
-- Name: player_player_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: football
--

ALTER SEQUENCE public.player_player_id_seq OWNED BY public.player.player_id;


--
-- Name: teams; Type: TABLE; Schema: public; Owner: football
--

CREATE TABLE public.teams (
    player_id integer NOT NULL,
    "NFL_Team" character varying
);


ALTER TABLE public.teams OWNER TO football;

--
-- Name: player player_id; Type: DEFAULT; Schema: public; Owner: football
--

ALTER TABLE ONLY public.player ALTER COLUMN player_id SET DEFAULT nextval('public.player_player_id_seq'::regclass);


--
-- Data for Name: college; Type: TABLE DATA; Schema: public; Owner: football
--

COPY public.college (player_id, "School", "Conf") FROM stdin;
1	Boston Col.	\N
2	Oregon	\N
3	South Carolina	\N
4	Oregon	\N
5	Florida State	\N
6	Clemson	\N
7	Oklahoma	\N
8	LSU	\N
9	Arkansas	\N
10	Michigan State	\N
11	Illinois	\N
12	California	\N
13	Ohio State	\N
14	Houston	\N
15	Georgia	\N
16	Auburn	\N
17	Oklahoma State	\N
18	West. Michigan	\N
19	Ohio State	\N
20	UCLA	\N
21	Baylor	\N
22	Appalachian State	\N
23	Iowa	\N
24	Minnesota	\N
25	Missouri	\N
26	Oklahoma	\N
27	Utah	\N
28	Ohio State	\N
29	Pittsburgh	\N
30	TCU	\N
31	Samford	\N
32	Harvard	\N
33	UCLA	\N
34	North Carolina State	\N
35	Missouri	\N
36	Notre Dame	\N
37	Mississippi State	\N
38	Purdue	\N
39	Florida State	\N
40	Oregon	\N
41	Florida	\N
42	Michigan State	\N
43	Miami (FL)	\N
44	North Carolina State	\N
45	Miami (FL)	\N
46	Louisiana Tech	\N
47	Stanford	\N
48	Mississippi State	\N
49	Michigan State	\N
50	Minnesota	\N
51	School	\N
52	Virginia	\N
53	Rutgers	\N
54	Texas A&M	\N
55	Utah	\N
56	Duke	\N
57	Texas A&M	\N
58	Texas Tech	\N
59	UCLA	\N
60	Auburn	\N
61	Baylor	\N
62	Nebraska	\N
63	Arkansas	\N
64	Michigan State	\N
65	Michigan State	\N
66	South Carolina	\N
67	Mississippi	\N
68	Illinois State	\N
69	Mississippi	\N
70	Boise State	\N
71	Southern Utah	\N
72	Maryland	\N
73	USC	\N
74	Colorado	\N
75	Washington State	\N
76	Boston Col.	\N
77	Maryland	\N
78	California	\N
79	Notre Dame	\N
80	Ohio State	\N
81	West Virginia	\N
82	Louisiana Tech	\N
83	Syracuse	\N
84	TCU	\N
85	Clemson	\N
86	Western Kentucky	\N
87	Alabama	\N
88	Baylor	\N
89	Louisiana Tech	\N
90	UCLA	\N
91	Sam Houston State	\N
92	Cincinnati	\N
93	Colorado State	\N
94	Ohio State	\N
95	San Jose State	\N
96	Utah State	\N
97	UCLA	\N
98	Utah	\N
99	Washington	\N
100	Illinois	\N
101	Georgia	\N
102	Kentucky	\N
103	Arizona State	\N
104	Central Michigan	\N
105	Auburn	\N
106	Virginia Tech	\N
107	Notre Dame	\N
108	Stanford	\N
109	Tulsa	\N
110	Michigan	\N
111	California	\N
112	Clemson	\N
113	Georgia Tech	\N
114	Clemson	\N
115	San Diego State	\N
116	North Carolina State	\N
117	Kansas State	\N
118	Penn State	\N
119	Utah	\N
120	North Dakota State	\N
121	Northern Iowa	\N
122	South Carolina State	\N
123	Texas A&M	\N
124	LSU	\N
125	Michigan State	\N
126	South Carolina State	\N
127	Arkansas	\N
128	Michigan	\N
129	Alabama	\N
130	Georgia	\N
131	Western Kentucky	\N
132	Colorado State	\N
133	Stanford	\N
134	Cincinnati	\N
135	Stanford	\N
136	William & Mary	\N
137	Baylor	\N
138	Indiana	\N
139	Texas A&M	\N
140	Arizona	\N
141	San Jose State	\N
142	Houston	\N
143	Florida	\N
144	Temple	\N
145	UCLA	\N
146	Texas Tech	\N
147	Alabama	\N
148	Nebraska	\N
149	Maryland	\N
150	Georgia	\N
151	Marshall	\N
152	Penn State	\N
153	Mississippi	\N
154	Oregon	\N
155	Ohio State	\N
156	Arizona	\N
157	Mississippi State	\N
158	Alabama	\N
159	LSU	\N
160	Auburn	\N
161	West Virginia	\N
162	Grand Valley State	\N
163	Miami (FL)	\N
164	Texas A&M	\N
165	Oklahoma	\N
166	BYU	\N
167	Clemson	\N
168	Alabama	\N
169	USC	\N
170	Southern Utah	\N
171	TCU	\N
172	Miami (FL)	\N
173	Arkansas	\N
174	Iowa	\N
175	West Virginia	\N
176	Baylor	\N
177	California	\N
178	Indiana	\N
179	California	\N
180	Florida State	\N
181	Clemson	\N
182	Ohio State	\N
183	Nebraska	\N
184	Bowling Green	\N
185	TCU	\N
186	Washington	\N
187	Iowa	\N
188	Rutgers	\N
189	Auburn	\N
190	Northwestern	\N
191	Penn State	\N
192	Liberty	\N
193	Memphis	\N
194	USC	\N
195	Virginia Tech	\N
196	Tennessee	\N
197	Virginia Tech	\N
198	Oregon	\N
199	Ohio State	\N
200	Georgia	\N
201	Notre Dame	\N
202	Stanford	\N
203	Wisconsin	\N
204	Temple	\N
205	Georgia	\N
206	Florida	\N
207	Florida	\N
208	Missouri	\N
209	Cincinnati	\N
210	Auburn	\N
211	SE Louisiana	\N
212	Ohio State	\N
213	LSU	\N
214	Georgia	\N
215	Duke	\N
216	Cincinnati	\N
217	Texas-San Antonio	\N
218	Florida	\N
219	Stanford	\N
220	Minnesota	\N
221	Penn State	\N
222	Florida	\N
223	Colorado	\N
224	Florida State	\N
225	Maryland	\N
226	Virginia Tech	\N
227	Mississippi	\N
228	Utah	\N
229	Tennessee	\N
230	West Virginia	\N
231	Baylor	\N
232	TCU	\N
233	Stony Brook	\N
234	Boise State	\N
235	Oklahoma State	\N
236	Notre Dame	\N
237	Iowa	\N
238	East Carolina	\N
239	Utah	\N
240	UCLA	\N
241	Clemson	\N
242	UCLA	\N
243	Ohio State	\N
244	Oklahoma State	\N
245	Alabama	\N
246	Ohio State	\N
247	Mississippi State	\N
248	Notre Dame	\N
249	San Jose State	\N
250	Alabama	\N
251	Florida State	\N
252	Louisville	\N
253	Clemson	\N
254	Mississippi State	\N
255	UCLA	\N
256	Alabama	\N
257	Texas	\N
258	West Georgia	\N
259	Louisiana St	\N
260	Florida	\N
261	Alabama	\N
262	Notre Dame	\N
263	Toledo	\N
264	Oklahoma	\N
265	Montana State	\N
266	Wisconsin	\N
267	Miami (FL)	\N
268	Oregon State	\N
269	USC	\N
270	Utah State	\N
271	Massachusetts	\N
272	South Carolina	\N
273	Oklahoma	\N
274	Notre Dame	\N
275	Jacksonville State	\N
276	Boston Col.	\N
277	Southern Utah	\N
278	Duke	\N
279	San Diego State	\N
280	West Virginia	\N
281	Florida State	\N
282	North Carolina Central	\N
283	Notre Dame	\N
284	East. Kentucky	\N
285	Indiana	\N
286	Colorado	\N
287	Kentucky	\N
288	Notre Dame	\N
289	Wisconsin	\N
290	Oklahoma	\N
291	Indiana	\N
292	Oklahoma	\N
293	Florida	\N
294	Georgia	\N
295	Ohio State	\N
296	Michigan State	\N
297	Syracuse	\N
298	Boise State	\N
299	North Carolina State	\N
300	North Carolina State	\N
301	Harvard	\N
302	Mississippi	\N
303	Arkansas	\N
304	USC	\N
305	Mississippi	\N
306	North Carolina	\N
307	USC	\N
308	TCU	\N
309	Nebraska	\N
310	Ohio State	\N
311	Utah State	\N
312	Northwestern	\N
313	Illinois	\N
314	Texas Tech	\N
315	Ohio State	\N
316	Vanderbilt	\N
317	North Dakota State	\N
318	Arizona State	\N
319	Georgia Tech	\N
320	Kansas State	\N
321	South Carolina	\N
322	Arkansas	\N
323	East Carolina	\N
324	Texas A&M	\N
325	Auburn	\N
326	Mississippi State	\N
327	Liberty	\N
328	USC	\N
329	West Virginia	\N
330	Boston Col.	\N
331	Temple	\N
332	Auburn	\N
333	Penn State	\N
334	South Florida	\N
335	Auburn	\N
336	LSU	\N
337	Mississippi	\N
338	Alabama	\N
339	Utah	\N
340	Alabama	\N
341	Florida	\N
342	Utah	\N
343	Charleston Southern	\N
344	Colorado	\N
345	Arkansas	\N
346	Washington	\N
347	USC	\N
348	Tennessee	\N
349	Ohio	\N
350	Iowa	\N
351	LSU	\N
352	Wisconsin	\N
353	Pittsburgh	\N
354	Utah	\N
355	Clemson	\N
356	East. Washington	\N
357	LSU	\N
358	Houston	\N
359	Michigan	\N
360	Florida	\N
361	Oregon	\N
362	Ohio State	\N
363	UCLA	\N
364	Mississippi	\N
365	Ohio	\N
366	Shepherd	\N
367	San Diego State	\N
368	Miami (OH)	\N
369	Michigan State	\N
370	Georgia Tech	\N
371	Michigan	\N
372	Baylor	\N
373	TCU	\N
374	Oklahoma State	\N
375	Miami (FL)	\N
376	Nebraska	\N
377	Michigan	\N
378	Michigan	\N
379	Michigan	\N
380	Virginia Tech	\N
381	Wisconsin	\N
382	Illinois	\N
383	North Carolina A&T	\N
384	Miami (FL)	\N
385	TCU	\N
386	Ohio State	\N
387	Pittsburgh	\N
388	Florida State	\N
389	Indiana (PA)	\N
390	Vanderbilt	\N
391	Washington	\N
392	Michigan	\N
393	Bucknell	\N
394	Georgia State	\N
395	Colorado State	\N
396	Tenn-Chattanooga	\N
397	USC	\N
398	Florida	\N
399	West. Michigan	\N
400	Temple	\N
401	North Carolina State	\N
402	Oregon State	\N
403	Utah	\N
404	Tennessee	\N
405	West Georgia	\N
406	West Virginia	\N
407	Tennessee State	\N
408	LSU	\N
409	LSU	\N
410	Virginia Tech	\N
411	Miami (FL)	\N
412	Ohio State	\N
413	Memphis	\N
414	Arkansas	\N
415	Texas A&M	\N
416	Mississippi	\N
417	Syracuse	\N
418	Texas A&M	\N
419	Virginia Tech	\N
420	South Alabama	\N
421	Indiana	\N
422	Louisville	\N
423	Auburn	\N
424	Virginia Tech	\N
425	Texas	\N
426	Alabama	\N
427	LSU	\N
428	Baylor	\N
429	Clemson	\N
430	Troy	\N
431	Texas A&M	\N
432	LSU	\N
433	Michigan	\N
434	Texas A&M	\N
435	Nebraska	\N
436	West Virginia	\N
437	Michigan	\N
438	Penn State	\N
439	Northern Illinois	\N
440	Arizona State	\N
441	Central Florida	\N
442	Temple	\N
443	Texas A&M	\N
444	California	\N
445	Oregon State	\N
446	Lindenwood	\N
447	Missouri	\N
448	Louisville	\N
449	Arkansas	\N
450	Coastal Carolina	\N
451	Louisiana Tech	\N
452	Florida Atlantic	\N
453	Toledo	\N
454	Louisville	\N
455	Michigan	\N
456	Wyoming	\N
457	Virginia Tech	\N
458	Louisville	\N
459	Vanderbilt	\N
460	North Carolina	\N
461	North Carolina	\N
462	Ohio State	\N
463	Alabama	\N
464	North Carolina	\N
465	Alabama	\N
466	Colorado State	\N
467	Toledo	\N
468	West Virginia	\N
469	Miami (FL)	\N
470	Alabama	\N
471	USC	\N
472	Miami (FL)	\N
473	Florida State	\N
474	Troy	\N
475	Iowa	\N
476	Clemson	\N
477	Pittsburgh	\N
478	Ohio State	\N
479	East Carolina	\N
480	Washington	\N
481	North Carolina	\N
482	North Carolina State	\N
483	Notre Dame	\N
484	Akron	\N
485	Texas-El Paso	\N
486	Arkansas	\N
487	Houston	\N
488	Northwestern	\N
489	Florida	\N
490	Oregon State	\N
491	Miami (FL)	\N
492	Tennessee	\N
493	San Diego State	\N
494	Louisville	\N
495	Washington	\N
496	Iowa	\N
497	Iowa	\N
498	Notre Dame	\N
499	Texas A&M	\N
500	Villanova	\N
501	East. Washington	\N
502	Western Kentucky	\N
503	Oklahoma State	\N
504	Akron	\N
505	BYU	\N
506	Ohio State	\N
507	Auburn	\N
508	South Carolina State	\N
509	Arkansas	\N
510	Wake Forest	\N
511	Illinois State	\N
512	Clemson	\N
513	Minnesota	\N
514	Tenn-Chattanooga	\N
515	Michigan	\N
516	Maryland	\N
517	Colorado	\N
518	North Carolina	\N
519	Washington State	\N
520	Tulsa	\N
521	South Florida	\N
522	Texas Tech	\N
523	Tennessee	\N
524	USC	\N
525	Washington State	\N
526	Washington	\N
527	Memphis	\N
528	Florida	\N
529	Stanford	\N
530	UCLA	\N
531	Michigan State	\N
532	Louisiana	\N
533	Georgia	\N
534	UCLA	\N
535	Ohio State	\N
536	Boise State	\N
537	Connecticut	\N
538	Boston Col.	\N
539	UCLA	\N
540	Kutztown Pennsylvania	\N
541	Arkansas	\N
542	Youngstown State	\N
543	West. Michigan	\N
544	Miami (FL)	\N
545	Minnesota	\N
546	Michigan State	\N
547	Illinois	\N
548	Miami (FL)	\N
549	Texas A&M	\N
550	California	\N
551	West Virginia	\N
552	Northwestern	\N
553	Wisconsin	\N
554	Charlotte	\N
555	West Virginia	\N
556	Pittsburgh	\N
557	Old Dominion	\N
558	Michigan	\N
559	Oklahoma	\N
560	Pittsburgh	\N
561	Illinois	\N
562	Texas-El Paso	\N
563	LSU	\N
564	Pittsburgh	\N
565	San Diego State	\N
566	Washington	\N
567	Louisville	\N
568	Wisconsin	\N
569	Stanford	\N
570	Temple	\N
571	Indiana	\N
572	Tennessee	\N
573	Idaho	\N
574	Texas A&M	\N
575	LSU	\N
576	Youngstown State	\N
577	Toledo	\N
578	Air Force	\N
579	Tennessee State	\N
580	Alabama	\N
581	Notre Dame	\N
582	Virginia Tech	\N
583	USC	\N
584	Washington	\N
585	Mississippi State	\N
586	Wyoming	\N
587	Florida State	\N
588	Central Michigan	\N
589	Baylor	\N
590	Ohio State	\N
591	Drake	\N
592	Clemson	\N
593	Texas A&M	\N
594	Mississippi State	\N
595	Ashland	\N
596	Florida	\N
597	Wisconsin	\N
598	Penn State	\N
599	San Diego State	\N
600	Arkansas	\N
601	Tulane	\N
602	Florida International	\N
603	Michigan	\N
604	USC	\N
605	Illinois	\N
606	Arkansas	\N
607	Louisville	\N
608	Florida State	\N
609	Alabama	\N
610	Michigan	\N
611	Tennessee	\N
612	North Carolina	\N
613	Florida	\N
614	Clemson	\N
615	Utah	\N
616	Oklahoma State	\N
617	Louisiana Tech	\N
618	Western Kentucky	\N
619	Utah	\N
620	Wayne State (MI)	\N
621	Stanford	\N
622	Connecticut	\N
623	Temple	\N
624	Colorado	\N
625	North Carolina State	\N
626	Alabama	\N
627	Kentucky	\N
628	Minnesota	\N
629	North Carolina	\N
630	USC	\N
631	Cincinnati	\N
632	William & Mary	\N
633	Stanford	\N
634	Boise State	\N
635	UCLA	\N
636	Miami (FL)	\N
637	Florida State	\N
638	Oklahoma	\N
639	Clemson	\N
640	Clemson	\N
641	Wisconsin	\N
642	California	\N
643	Oklahoma	\N
644	USC	\N
645	LSU	\N
646	Florida State	\N
647	Florida State	\N
648	Alabama	\N
649	Kentucky	\N
650	Clemson	\N
651	Utah	\N
652	Utah	\N
653	BYU	\N
654	Kansas State	\N
655	Florida	\N
656	Florida State	\N
657	Houston	\N
658	Colorado	\N
659	Louisiana Tech	\N
660	Michigan	\N
661	Washington	\N
662	Rutgers	\N
663	Notre Dame	\N
664	Toledo	\N
665	Central Florida	\N
666	Louisville	\N
667	Arkansas	\N
668	Wyoming	\N
669	Penn State	\N
670	Oklahoma	\N
671	Penn State	\N
672	Kansas	\N
673	Tulane	\N
674	Oklahoma State	\N
675	Georgia	\N
676	Alabama	\N
677	Memphis	\N
678	Miami (FL)	\N
679	Ohio State	\N
680	Arizona State	\N
681	Penn State	\N
682	Ohio State	\N
683	Wake Forest	\N
684	Ohio State	\N
685	San Diego State	\N
686	Georgia	\N
687	Virginia	\N
688	Miami (FL)	\N
689	Washington	\N
690	Virginia	\N
691	Stanford	\N
692	Virginia	\N
693	Nebraska	\N
694	Oklahoma	\N
695	Alabama	\N
696	Notre Dame	\N
697	Florida	\N
698	Vanderbilt	\N
699	USC	\N
700	Penn State	\N
701	Clemson	\N
702	Florida	\N
703	Penn State	\N
704	Texas Tech	\N
705	Humboldt State	\N
706	Oregon	\N
707	Auburn	\N
708	Georgia	\N
709	San Jose State	\N
710	Temple	\N
711	LSU	\N
712	Louisville	\N
713	North Carolina State	\N
714	Georgia	\N
715	Wisconsin	\N
716	LSU	\N
717	Indiana	\N
718	Michigan	\N
719	Washington	\N
720	Central Michigan	\N
721	Nevada	\N
722	Texas Tech	\N
723	Indiana	\N
724	West Virginia	\N
725	Oregon	\N
726	Arizona	\N
727	Tennessee	\N
728	Iowa	\N
729	USC	\N
730	Texas-San Antonio	\N
731	Bowling Green	\N
732	Auburn	\N
733	Florida	\N
734	Miami (FL)	\N
735	North Dakota State	\N
736	Maine	\N
737	UCLA	\N
738	Texas	\N
739	Washington	\N
740	Wisconsin	\N
741	Fordham	\N
742	Virginia Tech	\N
743	Virginia Tech	\N
744	Wake Forest	\N
745	Texas	\N
746	Western Michigan	\N
747	Boise State	\N
748	LSU	\N
749	Alabama	\N
750	Virginia Tech	\N
751	Washington State	\N
752	Indiana	\N
753	Connecticut	\N
754	Memphis	\N
755	Utah	\N
756	Alabama	\N
757	Oklahoma	\N
758	South Florida	\N
759	Oklahoma State	\N
760	Alabama	\N
761	West. Michigan	\N
762	Stephen F. Austin	\N
763	Alabama	\N
764	Oregon	\N
765	Wisconsin	\N
766	Colorado State	\N
767	Nebraska	\N
768	Tennessee	\N
769	Penn State	\N
770	South Dakota State	\N
771	Appalachian State	\N
772	East Carolina	\N
773	USC	\N
774	Central Florida	\N
775	LSU	\N
776	Penn State	\N
777	Penn State	\N
778	Alabama	\N
779	Alabama	\N
780	Illinois State	\N
781	Florida	\N
782	West Georgia	\N
783	Alabama	\N
784	Mississippi	\N
785	Clemson	\N
786	Louisville	\N
787	Pittsburgh	\N
788	Texas A&M	\N
789	Texas-El Paso	\N
790	Miami (FL)	\N
791	TCU	\N
792	North Carolina State	\N
793	Texas	\N
794	North Carolina State	\N
795	Auburn	\N
796	Ohio State	\N
797	Ohio State	\N
798	Central Florida	\N
799	South Carolina	\N
800	Michigan	\N
801	Northwestern	\N
802	Utah	\N
803	Western Kentucky	\N
804	Florida State	\N
805	Jacksonville State	\N
806	LSU	\N
807	Maryland	\N
808	Iowa	\N
809	Northwestern	\N
810	Louisville	\N
811	Wisconsin	\N
812	Wisconsin	\N
813	Florida State	\N
814	Middle Tennessee State	\N
815	Texas	\N
816	Iowa	\N
817	Southern	\N
818	Auburn	\N
819	Weber State	\N
820	Ohio State	\N
821	North Carolina State	\N
822	USC	\N
823	Arizona State	\N
824	Pittsburgh	\N
825	Dubuque	\N
826	Stanford	\N
827	Nebraska	\N
828	Tennessee	\N
829	San Diego State	\N
830	LSU	\N
831	South Carolina	\N
832	Texas A&M	\N
833	Virginia	\N
834	Oklahoma State	\N
835	Boston Col.	\N
836	UCLA	\N
837	Richmond	\N
838	Iowa State	\N
839	Nebraska	\N
840	South Carolina State	\N
841	Florida State	\N
842	Ohio State	\N
843	Marshall	\N
844	California	\N
845	Utah	\N
846	Pittsburgh	\N
847	Washington State	\N
848	LSU	\N
849	Washington State	\N
850	Washington State	\N
851	Oklahoma	\N
852	Clemson	\N
853	Michigan	\N
854	Miami (FL)	\N
855	Florida State	\N
856	Notre Dame	\N
857	Miami (FL)	\N
858	Tennessee	\N
859	Stanford	\N
860	Georgia	\N
861	Memphis	\N
862	UCLA	\N
863	USC	\N
864	Maryland	\N
865	Missouri	\N
866	Boston Col.	\N
867	South Carolina	\N
868	Oregon State	\N
869	Jacksonville State	\N
870	Wisconsin	\N
871	Notre Dame	\N
872	Delaware	\N
873	Tulane	\N
874	Florida State	\N
875	Miami (FL)	\N
876	TCU	\N
877	USC	\N
878	Clemson	\N
879	Pittsburgh	\N
880	West. Michigan	\N
881	Oklahoma	\N
882	Colorado	\N
883	North Carolina A&T	\N
884	Stony Brook	\N
885	Alabama	\N
886	San Diego State	\N
887	Auburn	\N
888	Virginia Tech	\N
889	West. Michigan	\N
890	Stanford	\N
891	Idaho State	\N
892	Florida	\N
893	Ohio State	\N
894	Kansas State	\N
895	Florida State	\N
896	UCLA	\N
897	SMU	\N
898	Arkansas	\N
899	Mississippi State	\N
900	Indiana (PA)	\N
901	Kansas State	\N
902	Stanford	\N
903	Arizona State	\N
904	North Carolina State	\N
905	Alabama	\N
906	Auburn	\N
907	Southern Miss	\N
908	Arkansas State	\N
909	UCLA	\N
910	Old Dominion	\N
911	Oklahoma State	\N
912	Arizona State	\N
913	North Carolina State	\N
914	Georgia	\N
915	Indiana	\N
916	Alabama	\N
917	Stanford	\N
918	New Mexico State	\N
919	Alabama	\N
920	South Florida	\N
921	Wagner	\N
922	Virginia Tech	\N
923	Washington	\N
924	Fort Hays State	\N
925	Texas Tech	\N
926	North Carolina	\N
927	Auburn	\N
928	Georgia	\N
929	Central Florida	\N
930	Clemson	\N
931	Notre Dame	\N
932	Mississippi	\N
933	South Carolina	\N
934	North Carolina	\N
935	North Carolina State	\N
936	Virginia Tech	\N
937	Georgia State	\N
938	SMU	\N
939	Florida State	\N
940	Florida State	\N
941	Mississippi	\N
942	Virginia Tech	\N
943	Miami (FL)	\N
944	Indiana	\N
945	Oklahoma	\N
946	Florida State	\N
947	Jacksonville State	\N
948	Georgia	\N
949	Arkansas	\N
950	LSU	\N
951	Army	\N
952	Florida	\N
953	Texas A&M	\N
954	Utah	\N
955	South Florida	\N
956	Washington	\N
957	Washington	\N
958	Murray State	\N
959	Iowa	\N
960	Louisiana-Lafayette	\N
961	Alabama	\N
962	Miami (FL)	\N
963	Ohio State	\N
964	BYU	\N
965	Texas	\N
966	Oklahoma State	\N
967	Texas A&M	\N
968	Pittsburgh	\N
969	LSU	\N
970	Ohio State	\N
971	San Diego State	\N
972	Iowa	\N
973	West Virginia	\N
974	West Virginia	\N
975	Western Kentucky	\N
976	Pittsburgh	\N
977	Arizona State	\N
978	South Dakota State	\N
979	Mississippi	\N
980	Texas	\N
981	LSU	\N
982	Boise State	\N
983	Purdue	\N
984	North Texas	\N
985	Georgia	\N
986	Ball State	\N
987	Pittsburgh	\N
988	Toledo	\N
989	Ohio State	\N
990	Georgia	\N
991	Boston Col.	\N
992	UCLA	\N
993	Louisville	\N
994	Mississippi State	\N
995	Missouri	\N
996	Delaware	\N
997	Florida Atlantic	\N
998	Texas A&M	\N
999	Texas Tech	\N
1000	Boston Col.	\N
1001	South Carolina	\N
1002	Fresno State	\N
1003	Oregon	\N
1004	Oklahoma	\N
1005	Stanford	\N
1006	Temple	\N
1007	Rutgers	\N
1008	Stanford	\N
1009	South Carolina	\N
1010	Kentucky	\N
1011	Georgia	\N
1012	Washburn	\N
1013	TCU	\N
1014	Kansas State	\N
1015	Notre Dame	\N
1016	Utah	\N
1017	Utah	\N
1018	Penn State	\N
1019	LSU	\N
1020	Missouri	\N
1021	Fresno State	\N
1022	Wisconsin	\N
1023	Utah	\N
1024	Missouri	\N
1025	Ohio State	\N
1026	Texas	\N
1027	Notre Dame	\N
1028	North Carolina State	\N
1029	Marshall	\N
1030	Oklahoma State	\N
1031	LSU	\N
1032	Mississippi	\N
1033	Troy	\N
1034	South Dakota State	\N
1035	Texas State	\N
1036	Oklahoma	\N
1037	Washington	\N
1038	Clemson	\N
1039	Alabama	\N
1040	Central Michigan	\N
1041	Florida State	\N
1042	Washington	\N
1043	Michigan	\N
1044	Northern Arizona	\N
1045	Iowa State	\N
1046	West Virginia	\N
1047	Mississippi State	\N
1048	Ohio State	\N
1049	North Carolina	\N
1050	Minnesota	\N
1051	Boston Col.	\N
1052	Florida State	\N
1053	TCU	\N
1054	Charleston	\N
1055	Notre Dame	\N
1056	Wisconsin	\N
1057	Kentucky	\N
1058	Maryland	\N
1059	Indiana	\N
1060	Central Michigan	\N
1061	East. Michigan	\N
1062	Syracuse	\N
1063	South Carolina	\N
1064	Texas	\N
1065	Auburn	\N
1066	Michigan State	\N
1067	Akron	\N
1068	Charlotte	\N
1069	Auburn	\N
1070	Auburn	\N
1071	Wisconsin	\N
1072	Boston Col.	\N
1073	Washington State	\N
1074	Wisconsin	\N
1075	Ohio State	\N
1076	Texas A&M	\N
1077	Wake Forest	\N
1078	UC Davis	\N
1079	Malone University (Ohio)	\N
1080	Florida Atlantic	\N
1081	USC	\N
1082	Wisconsin	\N
1083	Kentucky	\N
1084	Wisconsin	\N
1085	Houston	\N
1086	Oklahoma	\N
1087	Iowa	\N
1088	South Carolina	\N
1089	Northwestern St. (LA)	\N
1090	Clemson	\N
1091	Clemson	\N
1092	North Carolina State	\N
1093	Mississippi State	\N
1094	Oklahoma	\N
1095	Rice	\N
1096	Arkansas	\N
1097	Old Dominion	\N
1098	Georgia	\N
1099	Washington	\N
1100	Marshall	\N
1101	Florida	\N
1102	Michigan	\N
1103	Washington	\N
1104	Utah	\N
1105	Michigan	\N
1106	Duke	\N
1107	Wisconsin	\N
1108	Penn State	\N
1109	Indiana	\N
1110	Georgia	\N
1111	Wyoming	\N
1112	Maryland	\N
1113	Mississippi State	\N
1114	Minnesota	\N
1115	Villanova	\N
1116	Arkansas	\N
1117	West Virginia	\N
1118	USC	\N
1119	Missouri	\N
1120	Northwestern	\N
1121	Missouri	\N
1122	Rutgers	\N
1123	New Mexico State	\N
1124	Utah	\N
1125	Georgia	\N
1126	North Carolina State	\N
1127	Alabama	\N
1128	Boston Col.	\N
1129	Arizona State	\N
1130	Northwestern	\N
1131	Ohio State	\N
1132	Wake Forest	\N
1133	Duke	\N
1134	Memphis	\N
1135	Stanford	\N
1136	Michigan	\N
1137	Oklahoma State	\N
1138	Central Florida	\N
1139	Iowa	\N
1140	Stanford	\N
1141	Oregon	\N
1142	Georgia	\N
1143	Miami (FL)	\N
1144	Iowa	\N
1145	Alabama State	\N
1146	Clemson	\N
1147	Texas	\N
1148	Baylor	\N
1149	Clemson	\N
1150	Wisconsin	\N
1151	Massachusetts	\N
1152	Florida	\N
1153	Miami (FL)	\N
1154	Miami (FL)	\N
1155	Buffalo	\N
1156	Alabama	\N
1157	UCLA	\N
1158	Florida	\N
1159	Oregon	\N
1160	Mississippi State	\N
1161	West Virginia	\N
1162	Buffalo	\N
1163	Colorado State	\N
1164	North Carolina A&T	\N
1165	Toledo	\N
1166	Florida	\N
1167	Texas	\N
1168	Houston	\N
1169	Miami (FL)	\N
1170	Fresno State	\N
1171	Kentucky	\N
1172	Duke	\N
1173	Ohio State	\N
1174	Kentucky	\N
1175	North Carolina State	\N
1176	Ohio State	\N
1177	Clemson	\N
1178	Florida	\N
1179	Texas A&M	\N
1180	Indiana	\N
1181	Mississippi	\N
1182	Clemson	\N
1183	Clemson	\N
1184	Michigan State	\N
1185	Georgia	\N
1186	USC	\N
1187	Boston Col.	\N
1188	Mississippi	\N
1189	Missouri	\N
1190	Mississippi	\N
1191	Michigan	\N
1192	Stanford	\N
1193	Notre Dame	\N
1194	Notre Dame	\N
1195	Texas A&M	\N
1196	Boise State	\N
1197	Texas A&M	\N
1198	Washington	\N
1199	Mississippi State	\N
1200	Ohio State	\N
1201	Penn State	\N
1202	Mississippi	\N
1203	North Carolina State	\N
1204	Morgan State	\N
1205	Alabama	\N
1206	Washington	\N
1207	Penn State	\N
1208	Washington State	\N
1209	Oregon	\N
1210	Iowa State	\N
1211	Appalachian State	\N
1212	LSU	\N
1213	Nebraska	\N
1214	Clemson	\N
1215	Washington	\N
1216	Oklahoma	\N
1217	Florida State	\N
1218	Georgia	\N
1219	Iowa	\N
1220	Virginia Tech	\N
1221	Stanford	\N
1222	Houston	\N
1223	San Jose State	\N
1224	Pittsburgh	\N
1225	Texas	\N
1226	Weber State	\N
1227	Penn State	\N
1228	Mississippi	\N
1229	Mississippi State	\N
1230	Alabama	\N
1231	Sioux Falls	\N
1232	Florida	\N
1233	Memphis	\N
1234	San Diego State	\N
1235	Oklahoma	\N
1236	North Carolina State	\N
1237	Ohio State	\N
1238	Arkansas	\N
1239	Washington	\N
1240	Boston Col.	\N
1241	Utah State	\N
1242	Miami (FL)	\N
1243	Clemson	\N
1244	Georgia	\N
1245	Kansas State	\N
1246	San Diego State	\N
1247	Auburn	\N
1248	Boise State	\N
1249	Oklahoma	\N
1250	Washington	\N
1251	South Carolina	\N
1252	Penn State	\N
1253	Western Illinois	\N
1254	Maryland	\N
1255	Florida	\N
1256	Northern Illinois	\N
1257	Michigan State	\N
1258	Oklahoma	\N
1259	Ohio State	\N
1260	Vanderbilt	\N
1261	West Virginia	\N
1262	Florida Atlantic	\N
1263	Syracuse	\N
1264	Auburn	\N
1265	USC	\N
1266	Alabama	\N
1267	Louisville	\N
1268	Stanford	\N
1269	Alabama	\N
1270	Northern Illinois	\N
1271	Kentucky	\N
1272	Texas A&M	\N
1273	North Dakota State	\N
1274	Auburn	\N
1275	TCU	\N
1276	Mississippi State	\N
1277	Boston Col.	\N
1278	North Carolina	\N
1279	Mississippi	\N
1280	BYU	\N
1281	Memphis	\N
1282	Hawaii	\N
1283	Florida	\N
1284	USC	\N
1285	Baylor	\N
1286	Toledo	\N
1287	Alabama	\N
1288	Virginia	\N
1289	Northwestern	\N
1290	Notre Dame	\N
1291	LSU	\N
1292	Notre Dame	\N
1293	Elon	\N
1294	Georgia	\N
1295	San Diego State	\N
1296	Arkansas	\N
1297	South Alabama	\N
1298	Ohio State	\N
1299	Mississippi	\N
1300	West Virginia	\N
1301	Northern Colorado	\N
1302	Texas Tech	\N
1303	Kentucky	\N
1304	LSU	\N
1305	Clemson	\N
1306	Notre Dame	\N
1307	LSU	\N
1308	Washington State	\N
1309	Vanderbilt	\N
1310	Alabama	\N
1311	Alabama	\N
1312	Texas A&M	\N
1313	Miami (FL)	\N
1314	Michigan State	\N
1315	UCLA	\N
1316	Texas A&M	\N
1317	Alabama	\N
1318	Wyoming	\N
1319	Michigan	\N
1320	Kansas	\N
1321	Utah	\N
1322	Mississippi	\N
1323	Colorado	\N
1324	Arizona State	\N
1325	Old Dominion	\N
1326	Temple	\N
1327	Washington	\N
1328	Kansas	\N
1329	Arkansas	\N
1330	Washington	\N
1331	Arizona State	\N
1332	Florida State	\N
1333	Utah	\N
1334	Clemson	\N
1335	TCU	\N
1336	Ohio State	\N
1337	Baylor	\N
1338	UCLA	\N
1339	Michigan State	\N
1340	Purdue	\N
1341	Miami	\N
1342	Saint John's (MN)	\N
1343	Georgia Southern	\N
1344	Wake Forest	\N
1345	Wisconsin	\N
1346	Arkansas State	\N
1347	Louisville	\N
1348	Western Michigan	\N
1349	Arizona State	\N
1350	Utah	\N
1351	Wisconsin	\N
1352	Tennessee	\N
1353	TCU	\N
1354	Utah	\N
1355	Georgia	\N
1356	Kentucky	\N
1357	Temple	\N
1358	Michigan	\N
1359	Oregon	\N
1360	Texas Tech	\N
1361	Penn State	\N
1362	Auburn	\N
1363	Florida Atlantic	\N
1364	Washington	\N
1365	Missouri	\N
1366	Washington	\N
1367	Utah	\N
1368	LSU	\N
1369	Arizona State	\N
1370	Georgia	\N
1371	Louisiana-Lafayette	\N
1372	Tennessee	\N
1373	Alabama	\N
1374	Wisconsin	\N
1375	LSU	\N
1376	LSU	\N
1377	South Carolina	\N
1378	Southern Illinois	\N
1379	Charlotte	\N
1380	UCF	\N
1381	Notre Dame	\N
1382	SMU	\N
1383	Boise State	\N
1384	Florida	\N
1385	Mississippi	\N
1386	Auburn	\N
1387	Syracuse	\N
1388	Missouri	\N
1389	Minnesota	\N
1390	Rhode Island	\N
1391	Arkansas	\N
1392	LSU	\N
1393	Miami	\N
1394	Nebraska	\N
1395	Mississippi State	\N
1396	Princeton	\N
1397	Auburn	\N
1398	California	\N
1399	Nebraska	\N
1400	UCF	\N
1401	Auburn	\N
1402	Nebraska	\N
1403	Texas A&M	\N
1404	Alabama	\N
1405	Appalachian State	\N
1406	Cincinnati	\N
1407	LSU	\N
1408	Alabama	\N
1409	Boston College	\N
1410	LSU	\N
1411	Ohio State	\N
1412	South Carolina	\N
1413	Auburn	\N
1414	Lenoir-Rhyne	\N
1415	Missouri	\N
1416	Texas	\N
1417	Oregon	\N
1418	Washington	\N
1419	South Carolina	\N
1420	LSU	\N
1421	Notre Dame	\N
1422	Missouri	\N
1423	Iowa	\N
1424	Appalachian State	\N
1425	LSU	\N
1426	Notre Dame	\N
1427	Utah	\N
1428	Georgia	\N
1429	Washington	\N
1430	Ohio State	\N
1431	LSU	\N
1432	Utah State	\N
1433	Oklahoma	\N
1434	Liberty	\N
1435	Missouri	\N
1436	Miami	\N
1437	Memphis	\N
1438	Notre Dame	\N
1439	Tulsa	\N
1440	TCU	\N
1441	Washington State	\N
1442	Oklahoma State	\N
1443	Florida	\N
1444	Penn State	\N
1445	Utah	\N
1446	Mississippi State	\N
1447	Virginia	\N
1448	Ohio State	\N
1449	North Texas	\N
1450	Penn State	\N
1451	Temple	\N
1452	Oregon	\N
1453	Washington	\N
1454	Arkansas	\N
1455	Ohio State	\N
1456	Baylor	\N
1457	California	\N
1458	North Carolina	\N
1459	Florida	\N
1460	Temple	\N
1461	Oregon	\N
1462	Georgia	\N
1463	Wake Forest	\N
1464	Clemson	\N
1465	Charlotte	\N
1466	Boise State	\N
1467	Ohio State	\N
1468	Michigan	\N
1469	Miami	\N
1470	Oregon State	\N
1471	Syracuse	\N
1472	UCLA	\N
1473	Purdue	\N
1474	Michigan	\N
1475	Louisiana-Lafayette	\N
1476	Oklahoma	\N
1477	Auburn	\N
1478	Mississippi State	\N
1479	LSU	\N
1480	Tulsa	\N
1481	Alabama	\N
1482	San Diego State	\N
1483	TCU	\N
1484	USC	\N
1485	Pittsburgh	\N
1486	Ohio State	\N
1487	Syracuse	\N
1488	LSU	\N
1489	Florida	\N
1490	Alabama	\N
1491	Tennessee	\N
1492	Alabama	\N
1493	Texas	\N
1494	Utah	\N
1495	Oregon	\N
1496	Minnesota	\N
1497	Baylor	\N
1498	Mississippi	\N
1499	Texas	\N
1500	Houston	\N
1501	Notre Dame	\N
1502	Maryland	\N
1503	Mississippi State	\N
1504	Colorado	\N
1505	Minnesota	\N
1506	Kansas	\N
1507	Notre Dame	\N
1508	Virginia Tech	\N
1509	UCLA	\N
1510	Tulane	\N
1511	Georgia	\N
1512	South Carolina	\N
1513	Notre Dame	\N
1514	Oklahoma	\N
1515	Maryland	\N
1516	Charlotte	\N
1517	Oregon	\N
1518	Michigan State	\N
1519	LSU	\N
1520	Alabama	\N
1521	Vanderbilt	\N
1522	Utah State	\N
1523	Oregon State	\N
1524	Baylor	\N
1525	Ohio State	\N
1526	Virginia	\N
1527	Texas A&M	\N
1528	Texas A&M	\N
1529	Minnesota	\N
1530	Hawaii	\N
1531	Maryland	\N
1532	Michigan	\N
1533	Alabama	\N
1534	West Virginia	\N
1535	Michigan	\N
1536	Baylor	\N
1537	Baylor	\N
1538	Boise State	\N
1539	UCLA	\N
1540	Colorado	\N
1541	Tulane	\N
1542	Florida International	\N
1543	LSU	\N
1544	Utah	\N
1545	North Carolina State	\N
1546	Oklahoma	\N
1547	Clemson	\N
1548	Fresno State	\N
1549	TCU	\N
1550	Arkansas	\N
1551	Iowa	\N
1552	Ohio State	\N
1553	Notre Dame	\N
1554	Missouri	\N
1555	TCU	\N
1556	Montana	\N
1557	Michigan	\N
1558	Miami	\N
1559	Rhode Island	\N
1560	Stanford	\N
1561	Washington State	\N
1562	Michigan	\N
1563	Connecticut	\N
1564	Bucknell	\N
1565	Utah	\N
1566	Michigan	\N
1567	Florida	\N
1568	Navy	\N
1569	LSU	\N
1570	Mississippi	\N
1571	Mississippi State	\N
1572	Florida Atlantic	\N
1573	Miami	\N
1574	Vanderbilt	\N
1575	Ball State	\N
1576	USC	\N
1577	Notre Dame	\N
1578	SMU	\N
1579	Miami	\N
1580	LSU	\N
1581	TCU	\N
1582	Georgia	\N
1583	Virginia	\N
1584	Penn State	\N
1585	Mississippi State	\N
1586	Texas	\N
1587	Louisiana Tech	\N
1588	Syracuse	\N
1589	Illinois State	\N
1590	Texas A&M	\N
1591	Michigan	\N
1592	Michigan	\N
1593	Temple	\N
1594	Florida State	\N
1595	Michigan State	\N
1596	Mississippi	\N
1597	Clemson	\N
1598	Clemson	\N
1599	Auburn	\N
1600	North Carolina State	\N
1601	Louisiana Tech	\N
1602	Iowa	\N
1603	Texas Tech	\N
1604	Kentucky	\N
1605	Indiana	\N
1606	Michigan State	\N
1607	Iowa	\N
1608	Wake Forest	\N
1609	North Carolina	\N
1610	LSU	\N
1611	Florida	\N
1612	Georgia	\N
1613	Alabama	\N
1614	Portland State	\N
1615	South Carolina State	\N
1616	Tennessee	\N
1617	Colorado	\N
1618	Arizona	\N
1619	Wisconsin	\N
1620	Memphis	\N
1621	Clemson	\N
1622	Georgia	\N
1623	Auburn	\N
1624	Miami	\N
1625	Florida International	\N
1626	Oregon	\N
1627	Stanford	\N
1628	Florida	\N
1629	Dayton	\N
1630	Arizona State	\N
1631	North Dakota State	\N
1632	Michigan	\N
1633	Vanderbilt	\N
1634	Ohio State	\N
1635	Georgia Southern	\N
1636	Fresno State	\N
1637	Clemson	\N
1638	Auburn	\N
1639	Cincinnati	\N
1640	Texas Tech	\N
1641	Southern Miss	\N
1642	Boise State	\N
1643	California	\N
1644	Michigan State	\N
1645	South Florida	\N
1646	Michigan State	\N
1647	Mississippi State	\N
1648	Michigan State	\N
1649	Alabama	\N
1650	Georgia	\N
1651	Wyoming	\N
1652	Penn State	\N
1653	Iowa	\N
1654	Iowa State	\N
1655	Georgia	\N
1656	South Carolina	\N
1657	Tennessee	\N
1658	Utah State	\N
1659	Ohio State	\N
1660	Florida	\N
1661	California	Pac-12
1662	North Dakota State	MVFC
1663	Ohio State	Big Ten
1664	Ohio State	Big Ten
1665	Florida State	ACC
1666	Notre Dame	Ind. (FBS)
1667	Oregon	Pac-12
1668	Florida	SEC
1669	Ole Miss	SEC
1670	Florida	SEC
1671	Alabama	SEC
1672	UCLA	Pac-12
1673	Selection forfeited [Forfeited 1]	Selection forfeited [Forfeited 1]
1674	Notre Dame	Ind. (FBS)
1675	Mississippi State	SEC
1676	Baylor	Big 12
1677	Alabama	SEC
1678	Ohio State	Big Ten
1679	LSU	SEC
1680	USC	Pac-12
1681	Kansas State	Big 12
1682	Clemson	ACC
1683	Samford	SoCon
1684	Middle Tennessee State	C-USA
1685	Maryland	Big Ten
1686	Notre Dame	Ind. (FBS)
1687	Stanford	Pac-12
1688	Notre Dame	Ind. (FBS)
1689	Selection forfeited.[Forfeited 2]	Selection forfeited.[Forfeited 2]
1690	Boston College	ACC
1691	Wisconsin	Big Ten
1692	Clemson	ACC
1693	South Carolina	SEC
1694	Manitoba	CWUAA
1695	Northern Iowa	MVFC
1696	Mississippi State	SEC
1697	Princeton	Ivy
1698	Texas Tech	Big 12
1699	Grand Valley State	GLIAC
1700	Indiana	Big Ten
1701	Selection forfeited during the 2015 Supplemental draft.[Forfeited 3]	Selection forfeited during the 2015 Supplemental draft.[Forfeited 3]
1702	Selection forfeited .[Forfeited 4]	Selection forfeited .[Forfeited 4]
1703	Southern Utah	Big Sky
1704	West Virginia	Big 12
1705	West Alabama	Gulf South
1706	Clemson	ACC
1707	Midwestern State	LSC
1708	Georgia Southern	Sun Belt
1709	Louisiana-Monroe	Sun Belt
1710	Akron	MAC
1711	Georgia Tech	ACC
1712	\N	\N
1713	Montana	Big Sky
1714	Navy	The American
1715	William & Mary	CAA
1716	Texas Tech	Big 12
1717	UTSA	C-USA
1718	Michigan	Big Ten
1719	Colorado State	MW
1720	San Jose State	MW
1721	Auburn	SEC
1722	Wisconsin	Big Ten
1723	Southern Miss	C-USA
1724	Eastern Illinois	OVC
1725	Houston	The American
1726	TCU	Big 12
1727	Baylor	Big 12
1728	Arizona	Pac-12
1729	Illinois	Big Ten
1730	UCLA	Pac-12
1731	Michigan State	Big Ten
1732	Arizona State	Pac-12
1733	Central Arkansas	Southland
1734	Western Michigan	MAC
1735	Washington	Pac-12
1736	UCLA	Pac-12
1737	Maine	CAA
1738	Illinois	Big Ten
1739	Clemson	ACC
1740	Western Kentucky	C-USA
1741	Arizona	Pac-12
1742	Oregon	Pac-12
1743	Southern Miss	C-USA
1744	Texas A&M	SEC
1745	North Carolina	ACC
1746	LSU	SEC
1747	Stanford	Pac-12
1748	Texas Tech	Big 12
1749	Ohio State	Big Ten
1750	Clemson	ACC
1751	Alabama	SEC
1752	USC	Pac-12
1753	Alabama	SEC
1754	Utah	Pac-12
1755	Ole Miss	SEC
1756	LSU	SEC
1757	Wisconsin	Big Ten
1758	Washington	Pac-12
1759	Florida State	ACC
1760	Oklahoma	Big 12
1761	USC	Pac-12
1762	Tennessee	SEC
1763	Penn State	Big Ten
1764	Toledo	MAC
1765	UCF	The American
1766	Michigan	Big Ten
1767	Northern Illinois	MAC
1768	Grambling State	SWAC
1769	Lamar	Southland
1770	Iowa	Big Ten
1771	Pittsburgh	ACC
1772	Alabama	SEC
1773	Selection from New Orleans [R4 - 8] forfeited d.[Forfeited/Penalized 1]	Selection from New Orleans [R4 - 8] forfeited d.[Forfeited/Penalized 1]
1774	North Carolina A&T	MEAC
1775	Eastern Washington	Big Sky
1776	Selection moved down twelve spots [Forfeited/Penalized 2]	Selection moved down twelve spots [Forfeited/Penalized 2]
1777	Bucknell	Patriot
1778	Albany State	SIAC
1779	Iowa	Big Ten
1780	San Diego	Pioneer
1781	Oregon State	Pac-12
1782	Selection forfeited [Forfeited/Penalized 3]	Selection forfeited [Forfeited/Penalized 3]
1783	Purdue	Big Ten
1784	Utah	Pac-12
1785	LSU	SEC
1786	North Carolina	ACC
1787	UTEP	C-USA
1788	Georgia Southern	Sun Belt
1789	Nebraska	Big Ten
1790	Cincinnati	The American
1791	West Georgia	Gulf South
1792	Oklahoma	Big 12
1793	Ole Miss	SEC
1794	Coastal Carolina	Ind. (FCS)
1795	Ole Miss	SEC
1796	Houston	The American
1797	Auburn	SEC
1798	Selection forfeited [Forfeited/Penalized 4]	Selection forfeited [Forfeited/Penalized 4]
1799	South Florida	The American
1800	USC	Pac-12
1801	USC	Pac-12
1802	East Central	GAC
1803	Florida	SEC
1804	Miami (FL)	ACC
1805	Alabama State	SWAC
1806	Kansas State	Big 12
1807	Auburn	SEC
1808	Villanova	CAA
1809	Utah State	MW
1810	Miami (FL)	ACC
1811	California	Pac-12
1812	Colorado	Pac-12
1813	Western Michigan	MAC
1814	Eastern Michigan	MAC
1815	Buffalo	MAC
1816	Ole Miss	SEC
1817	Penn State	Big Ten
1818	Ohio State	Big Ten
1819	NC State	ACC
1820	Notre Dame	Ind. (FBS)
1821	Wyoming	MW
1822	Alabama	SEC
1823	Virginia Tech	ACC
1824	Florida State	ACC
1825	Louisville	ACC
1826	Boise State	MW
1827	Arkansas	SEC
1828	Maryland	Big Ten
1829	Louisville	ACC
1830	Georgia	SEC
1831	South Carolina State	MEAC
1832	USC	Pac-12
1833	SMU	The American
1834	North Carolina	ACC
1835	Sam Houston State	Southland
1836	LSU	SEC
1837	Pittsburgh	ACC
1838	NC State	ACC
1839	BYU	Ind. (FBS)
1840	Louisiana	Sun Belt
1841	Oklahoma	Big 12
1842	Oklahoma	Big 12
1843	UCF	The American
1844	Southern Miss	C-USA
1845	Clemson	ACC
1846	Penn State	Big Ten
1847	Alabama	SEC
1848	Southern Miss	C-USA
1849	Missouri	SEC
1850	Miami (FL)	ACC
1851	Kansas State	Big 12
1852	Purdue	Big Ten
1853	Penn	Ivy
1854	Texas	Big 12
1855	Northern Iowa	MVFC
1856	Maryland	Big Ten
1857	Alabama	SEC
1858	Texas A&M	SEC
1859	Connecticut	The American
1860	Temple	The American
1861	Clemson	ACC
1862	Louisiana	Sun Belt
1863	Texas	Big 12
1864	LSU	SEC
1865	Rutgers	Big Ten
1866	Central Arkansas	Southland
1867	Alabama	SEC
1868	Yale	Ivy
1869	Louisiana Tech	C-USA
1870	Virginia State	CIAA
1871	TCU	Big 12
1872	Notre Dame	Ind. (FBS)
1873	Boise State	MW
1874	Southern Miss	C-USA
1875	Alabama	SEC
1876	Florida International	C-USA
1877	Houston	The American
1878	San Jose State	MW
1879	Temple	The American
1880	California	Pac-12
1881	Arkansas	SEC
1882	Ohio	MAC
1883	New Mexico	MW
1884	TCU	Big 12
1885	\N	\N
1886	Syracuse	ACC
1887	Ferris State	GLIAC
1888	Mississippi State	SEC
1889	Western Carolina	SoCon
1890	SMU	The American
1891	Mississippi State	SEC
1892	Southeast Missouri State	OVC
1893	Cincinnati	The American
1894	North Carolina	ACC
1895	Oklahoma	Big 12
1896	Ohio State	Big Ten
1897	Iowa	Big Ten
1898	Mississippi State	SEC
1899	Alabama	SEC
1900	TCU	Big 12
1901	Central Michigan	MAC
1902	Mississippi State	SEC
1903	Alabama	SEC
1904	Ole Miss	SEC
1905	Kentucky	SEC
1906	Georgia	SEC
1907	Stanford	Pac-12
1908	Ole Miss	SEC
1909	Selection forfeited during the 2018 supplemental draft.[Forfeited 1]	Selection forfeited during the 2018 supplemental draft.[Forfeited 1]
1910	Louisiana Tech	C-USA
1911	Murray State	OVC
1912	Florida	SEC
1913	West Virginia	Big 12
1914	Kentucky	SEC
1915	USC	Pac-12
1916	Indiana	Big Ten
1917	Oregon	Pac-12
1918	USC	Pac-12
1919	Wisconsin	Big Ten
1920	Miami	ACC
1921	Stanford	Pac-12
1922	Tarleton State	LSC
1923	North Carolina	ACC
1924	Fresno State	MW
1925	Vanderbilt	SEC
1926	Toledo	MAC
1927	Maryland	Big Ten
1928	Selection forfeited during the 2018 supplemental draft.[Forfeited 2]	Selection forfeited during the 2018 supplemental draft.[Forfeited 2]
1929	Colorado	Pac-12
1930	West Virginia	Big 12
1931	Southeast Missouri State	OVC
1932	Wyoming	MW
1933	Virginia	ACC
1934	Louisiana-Monroe	Sun Belt
1935	Kansas State	Big 12
1936	Akron	MAC
1937	Bowling Green	MAC
1938	Utah State	MW
1939	Illinois	Big Ten
1940	Texas A&M	SEC
1941	Tulane	The American
1942	Florida Atlantic	C-USA
1943	James Madison	CAA
1944	Arizona	Pac-12
1945	Prairie View A&M	SWAC
1946	Notre Dame	Ind. (FBS)
1947	Kentucky	SEC
1948	Auburn	SEC
1949	Hawaii	MW
1950	Valdosta State	Gulf South
1951	Cincinnati	The American
1952	Penn State	Big Ten
1953	Idaho	Big Sky
1954	Temple	The American
1955	Air Force	MW
1956	Ohio State	Big Ten
1957	Florida	SEC
1958	Alabama	SEC
1959	Clemson	ACC
1960	LSU	SEC
1961	USC	Pac-12
1962	Colorado	Pac-12
1963	Penn State	Big Ten
1964	Iowa	Big Ten
1965	Ohio State	Big Ten
1966	Boston College	ACC
1967	Mississippi State	SEC
1968	South Carolina	SEC
1969	Tulsa	The American
1970	Maryland	Big Ten
1971	LSU	SEC
1972	Louisiana	Sun Belt
1973	West Virginia	Big 12
1974	Selection forfeited during the 2019 supplemental draft. [Forfeited 1]	Selection forfeited during the 2019 supplemental draft. [Forfeited 1]
1975	Marshall	C-USA
1976	Texas Tech	Big 12
1977	New Mexico State	Ind. (FBS)
1978	Miami (FL)	ACC
1979	Michigan	Big Ten
1980	Michigan	Big Ten
1981	Penn State	Big Ten
1982	Baylor	Big 12
1983	Michigan	Big Ten
1984	Penn State	Big Ten
1985	Maryland	Big Ten
1986	Oregon State	Pac-12
1987	Wyoming	MW
1988	Georgia Tech	ACC
1989	UMass	Ind. (FBS)
1990	Michigan	Big Ten
1991	Ohio State	Big Ten
1992	Memphis	The American
1993	Colorado	Pac-12
1994	Tennessee State	OVC
1995	Memphis	The American
1996	James Madison	CAA
1997	Ohio State	Big Ten
1998	TCU	Big 12
1999	Tulane	The American
2000	South Carolina	SEC
2001	Mississippi State	SEC
2002	Marshall	C-USA
2003	Minnesota	Big Ten
2004	Miami (OH)	MAC
2005	Washburn	MIAA
2006	Georgia	SEC
\.


--
-- Data for Name: combine; Type: TABLE DATA; Schema: public; Owner: football
--

COPY public.combine (player_id, "Forty_Yard", "Vertical", "Bench", "Broad_Jump", "Three_Cone", "Shuttle") FROM stdin;
1	5.09999999999999964	29.5	25	108	7.54999999999999982	4.62000000000000011
2	4.83000000000000007	29.5	\N	114	6.82000000000000028	4.20000000000000018
3	4.63999999999999968	32.5	\N	117	7.04999999999999982	4.30999999999999961
4	4.66000000000000014	34.5	13	116	6.95000000000000018	4.13999999999999968
5	4.95999999999999996	\N	\N	\N	\N	\N
6	4.42999999999999972	\N	11	\N	\N	\N
7	4.63999999999999968	28.5	17	104	\N	\N
8	5.57000000000000028	24	25	95	8.03999999999999915	4.90000000000000036
9	4.83999999999999986	28	\N	110	7.05999999999999961	4.33000000000000007
10	5.29000000000000004	26.5	23	101	7.90000000000000036	4.73000000000000043
11	4.66999999999999993	33	\N	127	7.40000000000000036	4.28000000000000025
12	4.58999999999999986	38	16	119	\N	\N
13	4.40000000000000036	\N	13	\N	\N	\N
14	4.71999999999999975	33	\N	123	\N	\N
15	5.23000000000000043	30	20	111	7.45999999999999996	4.73000000000000043
16	4.63999999999999968	32.5	20	111	7	4.20999999999999996
17	4.87000000000000011	\N	20	\N	\N	\N
18	5.28000000000000025	25.5	20	103	7.95999999999999996	4.70999999999999996
19	4.51999999999999957	\N	16	\N	\N	\N
20	4.98000000000000043	28	\N	104	8.15000000000000036	5.11000000000000032
21	5.04999999999999982	27.5	31	113	8.05000000000000071	4.82000000000000028
22	5.15000000000000036	30	32	113	7.95000000000000018	4.53000000000000025
23	5.36000000000000032	27.5	29	99	7.51999999999999957	4.53000000000000025
24	4.46999999999999975	35	10	123	7.16000000000000014	4.21999999999999975
25	5.33000000000000007	28.5	24	96	7.51999999999999957	4.69000000000000039
26	4.70000000000000018	37.5	21	121	7.07000000000000028	4.36000000000000032
27	4.55999999999999961	\N	22	\N	\N	\N
28	4.86000000000000032	32	24	120	6.88999999999999968	4.20999999999999996
29	4.58000000000000007	34	11	119	6.90000000000000036	4.34999999999999964
30	4.76999999999999957	32	\N	110	\N	4.40000000000000036
31	4.5	36	16	124	6.91000000000000014	4.20999999999999996
32	4.73000000000000043	35.5	20	121	6.90000000000000036	4.20000000000000018
33	5.00999999999999979	28	25	108	7.30999999999999961	4.26999999999999957
34	4.94000000000000039	31	\N	113	7.16999999999999993	4.53000000000000025
35	4.88999999999999968	28.5	19	110	6.99000000000000021	4.11000000000000032
36	4.48000000000000043	\N	\N	\N	\N	\N
37	4.76999999999999957	31	18	110	7.07000000000000028	4.28000000000000025
38	4.33000000000000007	35	19	115	7.03000000000000025	4.19000000000000039
39	4.75999999999999979	33	14	114	7.08000000000000007	4.33000000000000007
40	5.04999999999999982	32	\N	116	7.50999999999999979	4.46999999999999975
41	4.92999999999999972	32	23	116	7.30999999999999961	4.55999999999999961
42	4.55999999999999961	30.5	20	115	7.21999999999999975	4.30999999999999961
43	4.45999999999999996	31.5	\N	\N	\N	\N
44	4.53000000000000025	36.5	19	122	7.09999999999999964	4.40000000000000036
45	4.63999999999999968	36	17	123	\N	\N
46	5.33000000000000007	29.5	26	104	7.82000000000000028	4.75999999999999979
47	4.62000000000000011	36	12	123	6.49000000000000021	4.20000000000000018
48	4.58000000000000007	33.5	14	\N	\N	\N
49	4.82000000000000028	35	23	115	6.96999999999999975	4.25
50	4.58000000000000007	34	16	116	\N	\N
51	\N	\N	\N	\N	\N	\N
51	\N	\N	\N	\N	\N	\N
51	\N	\N	\N	\N	\N	\N
51	\N	\N	\N	\N	\N	\N
51	\N	\N	\N	\N	\N	\N
51	\N	\N	\N	\N	\N	\N
51	\N	\N	\N	\N	\N	\N
51	\N	\N	\N	\N	\N	\N
51	\N	\N	\N	\N	\N	\N
51	\N	\N	\N	\N	\N	\N
51	\N	\N	\N	\N	\N	\N
51	\N	\N	\N	\N	\N	\N
51	\N	\N	\N	\N	\N	\N
51	\N	\N	\N	\N	\N	\N
51	\N	\N	\N	\N	\N	\N
51	\N	\N	\N	\N	\N	\N
51	\N	\N	\N	\N	\N	\N
51	\N	\N	\N	\N	\N	\N
51	\N	\N	\N	\N	\N	\N
51	\N	\N	\N	\N	\N	\N
51	\N	\N	\N	\N	\N	\N
51	\N	\N	\N	\N	\N	\N
51	\N	\N	\N	\N	\N	\N
51	\N	\N	\N	\N	\N	\N
51	\N	\N	\N	\N	\N	\N
51	\N	\N	\N	\N	\N	\N
51	\N	\N	\N	\N	\N	\N
51	\N	\N	\N	\N	\N	\N
51	\N	\N	\N	\N	\N	\N
51	\N	\N	\N	\N	\N	\N
52	4.49000000000000021	38	16	124	7.03000000000000025	4.08999999999999986
53	4.5	35.5	14	120	\N	\N
54	4.62999999999999989	\N	19	\N	\N	\N
55	4.48000000000000043	\N	19	\N	\N	\N
56	4.55999999999999961	\N	\N	\N	\N	\N
57	5.26999999999999957	\N	20	\N	\N	\N
58	5.16000000000000014	\N	18	\N	\N	\N
59	5.05999999999999961	28.5	29	102	\N	4.62000000000000011
60	5.17999999999999972	\N	22	\N	\N	\N
61	4.41999999999999993	40.5	17	129	\N	\N
62	5.03000000000000025	29.5	25	109	7.53000000000000025	4.51999999999999957
63	4.58999999999999986	28.5	18	113	\N	\N
64	5	30	25	103	7.62999999999999989	4.57000000000000028
65	4.79000000000000004	33	\N	113	7.20999999999999996	4.28000000000000025
66	4.51999999999999957	31	15	115	\N	\N
67	5.16999999999999993	25	19	102	7.84999999999999964	4.88999999999999968
68	4.46999999999999975	34	17	112	7.25999999999999979	4.58000000000000007
69	4.46999999999999975	31.5	14	119	\N	\N
70	4.69000000000000039	33	21	108	\N	\N
71	4.82000000000000028	31.5	21	111	6.79999999999999982	4.30999999999999961
72	4.87999999999999989	\N	\N	\N	\N	\N
73	4.58000000000000007	27	16	114	\N	\N
74	4.42999999999999972	36.5	\N	119	\N	\N
75	5.17999999999999972	31	28	109	7.63999999999999968	4.76999999999999957
76	4.86000000000000032	32	16	112	7.33000000000000007	4.54000000000000004
77	4.45999999999999996	37.5	21	126	6.63999999999999968	3.9700000000000002
78	4.41999999999999993	38.5	11	124	6.59999999999999964	4.21999999999999975
79	5.07000000000000028	30	21	102	7.44000000000000039	4.5
80	5.23000000000000043	29	20	101	7.70000000000000018	4.75999999999999979
81	4.53000000000000025	\N	11	121	\N	\N
82	4.55999999999999961	37.5	18	121	6.96999999999999975	4.28000000000000025
83	5.04000000000000004	\N	\N	\N	\N	\N
84	4.5	41	14	131	6.83999999999999986	4.08000000000000007
85	4.86000000000000032	\N	\N	\N	\N	\N
86	5.21999999999999975	27	\N	103	7.49000000000000021	4.51999999999999957
87	4.45000000000000018	34.5	10	123	7.04000000000000004	4.20999999999999996
88	5.26999999999999957	27	30	100	7.87999999999999989	4.66000000000000014
89	4.55999999999999961	32	\N	122	7.19000000000000039	4.25
90	4.71999999999999975	33.5	12	118	6.96999999999999975	4.24000000000000021
91	4.98000000000000043	\N	\N	\N	\N	\N
92	5.25999999999999979	27.5	\N	97	\N	\N
93	4.54999999999999982	41	\N	125	6.92999999999999972	3.93999999999999995
94	4.46999999999999975	32.5	\N	118	\N	\N
95	4.41000000000000014	39	17	130	\N	\N
96	4.71999999999999975	34.5	15	121	\N	\N
97	4.95999999999999996	\N	\N	\N	\N	\N
98	4.91999999999999993	35.5	23	113	7.05999999999999961	4.38999999999999968
99	4.5	40	\N	130	7.20000000000000018	4.41999999999999993
100	4.48000000000000043	34.5	21	120	\N	\N
101	4.59999999999999964	39.5	\N	127	\N	\N
102	4.91000000000000014	30.5	11	118	\N	\N
103	4.57000000000000028	35.5	14	117	6.75	4.07000000000000028
104	4.53000000000000025	\N	18	\N	\N	\N
105	4.96999999999999975	29	\N	113	\N	\N
106	4.48000000000000043	\N	15	\N	\N	\N
107	4.32000000000000028	33.5	10	126	6.92999999999999972	4.26999999999999957
108	5.32000000000000028	29	30	99	7.62000000000000011	4.63999999999999968
109	4.53000000000000025	36.5	14	128	7.29999999999999982	4.33000000000000007
110	5.12999999999999989	25	23	106	7.62999999999999989	4.62999999999999989
111	4.82000000000000028	27	\N	110	7.16999999999999993	4.46999999999999975
112	4.69000000000000039	34.5	30	118	7.04999999999999982	4.50999999999999979
113	4.87999999999999989	\N	\N	\N	\N	\N
114	4.33999999999999986	35.5	13	129	\N	\N
115	5.20000000000000018	21.5	28	98	8.07000000000000028	4.98000000000000043
116	4.90000000000000036	29.5	\N	106	\N	\N
117	4.70999999999999996	33	17	120	7.09999999999999964	4.45000000000000018
118	4.78000000000000025	31	\N	114	7.04000000000000004	4.33000000000000007
119	4.86000000000000032	\N	\N	\N	\N	\N
120	5.16000000000000014	27.5	\N	111	7.46999999999999975	4.46999999999999975
121	4.67999999999999972	37	\N	127	7.07000000000000028	4.05999999999999961
122	4.92999999999999972	34.5	29	109	7.90000000000000036	4.70000000000000018
123	4.55999999999999961	38.5	\N	124	6.82000000000000028	4.05999999999999961
124	5.23000000000000043	23.5	23	100	8.1899999999999995	4.88999999999999968
125	5.01999999999999957	33	26	113	7.44000000000000039	4.51999999999999957
126	4.70999999999999996	30.5	18	115	6.87999999999999989	4.30999999999999961
127	4.79000000000000004	\N	13	\N	\N	\N
128	5	30.5	28	110	7.57000000000000028	4.53000000000000025
129	4.54000000000000004	37	22	130	7.20000000000000018	4.37999999999999989
130	4.82000000000000028	\N	\N	\N	\N	\N
131	4.76999999999999957	\N	\N	\N	\N	\N
132	4.63999999999999968	32	13	116	\N	\N
133	4.78000000000000025	32.5	\N	113	6.90000000000000036	4.30999999999999961
134	4.54000000000000004	31.5	8	123	\N	\N
135	4.71999999999999975	33	19	117	7	4.32000000000000028
136	4.54000000000000004	32.5	13	115	7.15000000000000036	4.28000000000000025
137	4.58000000000000007	33	11	122	7.17999999999999972	4.15000000000000036
138	4.57000000000000028	34	16	122	\N	\N
139	5.26999999999999957	32.5	24	109	\N	4.75
140	4.90000000000000036	31	22	113	\N	4.46999999999999975
141	4.67999999999999972	35.5	\N	123	\N	\N
142	4.37000000000000011	\N	10	116	\N	\N
143	4.5	39	15	130	\N	3.97999999999999998
144	5.03000000000000025	28	32	108	7.78000000000000025	4.70999999999999996
145	4.55999999999999961	\N	19	\N	\N	\N
146	5.05999999999999961	31.5	20	113	7.40000000000000036	4.76999999999999957
147	5.37999999999999989	26	20	97	\N	\N
148	4.80999999999999961	34	30	119	7.28000000000000025	4.32000000000000028
149	4.95000000000000018	29	24	\N	7.95000000000000018	4.37000000000000011
150	4.79999999999999982	36.5	16	121	\N	\N
151	4.63999999999999968	\N	\N	\N	\N	\N
151	5.16000000000000014	27.5	26	89	8.33999999999999986	5.28000000000000025
152	5.32000000000000028	26	25	96	7.83999999999999986	4.75
153	4.80999999999999961	\N	\N	\N	\N	4.51999999999999957
154	5.20999999999999996	30.5	24	104	7.30999999999999961	4.59999999999999964
155	4.80999999999999961	36	\N	\N	\N	\N
156	4.65000000000000036	33.5	9	\N	6.99000000000000021	4.13999999999999968
157	5.03000000000000025	24.5	26	106	7.44000000000000039	4.62000000000000011
157	4.57000000000000028	\N	14	\N	\N	\N
158	4.49000000000000021	33	10	116	6.70999999999999996	4.20999999999999996
159	4.58999999999999986	33	\N	120	\N	\N
160	4.33000000000000007	36	19	123	7.25	4.25
161	4.57000000000000028	\N	\N	\N	\N	\N
162	4.73000000000000043	35	30	109	7.66999999999999993	4.51999999999999957
163	5.00999999999999979	25	26	106	7.32000000000000028	4.58000000000000007
164	4.95000000000000018	\N	\N	\N	\N	\N
165	5.32000000000000028	27.5	12	107	8.30000000000000071	4.83000000000000007
166	4.87000000000000011	30	25	111	7.03000000000000025	4.25
167	4.62000000000000011	31.5	16	124	7.05999999999999961	\N
168	5.03000000000000025	30	26	103	7.58000000000000007	4.58999999999999986
169	4.88999999999999968	29.5	\N	104	7.32000000000000028	4
170	4.65000000000000036	38	22	127	6.92999999999999972	4.17999999999999972
171	4.5	37.5	\N	123	7.04999999999999982	4.29000000000000004
172	4.71999999999999975	\N	27	\N	\N	\N
173	5.54999999999999982	22.5	19	94	8.72000000000000064	5.05999999999999961
174	4.61000000000000032	\N	\N	\N	\N	\N
175	4.73000000000000043	32	19	120	7.16000000000000014	4.21999999999999975
176	4.95000000000000018	27.5	\N	110	7.04999999999999982	4.37999999999999989
177	4.45999999999999996	41.5	23	135	7.21999999999999975	4.25999999999999979
178	5.32000000000000028	29	\N	100	7.75999999999999979	4.62999999999999989
179	4.63999999999999968	31	\N	111	7.12999999999999989	4.20000000000000018
180	5.24000000000000021	\N	\N	\N	\N	\N
181	4.70000000000000018	33	\N	120	7.16000000000000014	4.20999999999999996
182	4.46999999999999975	35.5	17	133	7.12000000000000011	4.20000000000000018
183	5.21999999999999975	29.5	27	100	7.94000000000000039	4.71999999999999975
184	4.57000000000000028	33.5	8	116	\N	\N
185	4.38999999999999968	35.5	15	129	\N	\N
186	4.73000000000000043	29.5	\N	114	7.11000000000000032	4.32000000000000028
187	4.75	36	8	120	7.17999999999999972	4.15000000000000036
188	4.78000000000000025	32	19	116	7.5	4.55999999999999961
189	4.42999999999999972	38	18	132	\N	\N
190	4.87000000000000011	32.5	30	114	7.25999999999999979	4.37999999999999989
191	4.54000000000000004	\N	\N	\N	\N	\N
192	4.74000000000000021	\N	\N	\N	\N	\N
193	4.86000000000000032	36	\N	118	7.13999999999999968	4.25999999999999979
194	4.53000000000000025	\N	24	\N	\N	\N
195	4.95999999999999996	\N	29	\N	\N	\N
196	4.73000000000000043	\N	\N	\N	\N	\N
197	4.76999999999999957	34.5	18	121	7	4.33000000000000007
198	4.41999999999999993	\N	17	\N	\N	\N
199	4.59999999999999964	37.5	16	125	6.79999999999999982	4.12999999999999989
200	4.30999999999999961	30.5	25	\N	\N	\N
201	5.21999999999999975	28	28	97	7.57000000000000028	4.71999999999999975
202	4.70999999999999996	28.5	22	113	6.98000000000000043	4.20000000000000018
203	5.54000000000000004	27.5	19	99	8.38000000000000078	4.96999999999999975
204	4.80999999999999961	31	22	112	7.19000000000000039	4.5
205	5.33999999999999986	23.5	33	104	\N	5.12999999999999989
206	4.79999999999999982	34.5	\N	128	7.00999999999999979	4
207	4.83000000000000007	\N	17	\N	\N	\N
208	5.11000000000000032	33	33	109	7.5	4.65000000000000036
208	\N	\N	28	112	7.66000000000000014	4.57000000000000028
209	4.54999999999999982	35	12	123	7.08000000000000007	4.62999999999999989
210	4.83000000000000007	\N	21	\N	\N	\N
211	4.65000000000000036	35.5	6	118	7.44000000000000039	4.42999999999999972
212	4.5	35	17	123	6.65000000000000036	4.07000000000000028
213	4.61000000000000032	37	16	123	6.86000000000000032	4
214	4.45000000000000018	36	15	129	6.94000000000000039	4.33999999999999986
215	5.09999999999999964	\N	\N	\N	\N	\N
216	4.53000000000000025	37	10	130	6.75999999999999979	4.20000000000000018
217	\N	\N	\N	\N	\N	\N
218	4.75999999999999979	\N	\N	\N	\N	\N
219	5.19000000000000039	\N	23	\N	\N	\N
219	5.29999999999999982	28	19	104	7.80999999999999961	4.67999999999999972
220	4.49000000000000021	39.5	15	124	7.08000000000000007	4.04999999999999982
221	4.83999999999999986	28.5	21	114	7.26999999999999957	4.37000000000000011
222	4.62000000000000011	38	17	132	7.08999999999999986	4.37999999999999989
223	5.38999999999999968	26.5	32	103	8.55000000000000071	5.15000000000000036
224	4.94000000000000039	30	20	114	7.53000000000000025	4.78000000000000025
225	4.75	34.5	26	118	7.34999999999999964	4.5
226	4.74000000000000021	41	14	116	7.04000000000000004	4.37999999999999989
227	4.87000000000000011	35	28	116	\N	\N
228	4.79999999999999982	29.5	19	114	\N	4.51999999999999957
229	4.48000000000000043	35	17	123	6.90000000000000036	4.12999999999999989
230	5.04999999999999982	\N	\N	\N	\N	\N
231	4.95999999999999996	32	23	123	7.53000000000000025	4.55999999999999961
232	4.95999999999999996	\N	\N	\N	\N	\N
233	4.86000000000000032	32	\N	119	7.24000000000000021	4.40000000000000036
234	5.16999999999999993	\N	23	\N	\N	\N
235	4.62999999999999989	35.5	20	121	7.25999999999999979	4.5
236	4.90000000000000036	33	23	120	7.37999999999999989	4.53000000000000025
237	4.87999999999999989	\N	\N	\N	\N	\N
238	4.61000000000000032	34	18	123	7.15000000000000036	4.46999999999999975
239	5.04999999999999982	31	22	113	\N	\N
240	4.46999999999999975	34.5	\N	121	7.08000000000000007	4.33000000000000007
241	4.45000000000000018	35.5	12	122	6.95999999999999996	4.45999999999999996
242	4.54000000000000004	32	19	124	\N	\N
243	4.67999999999999972	33.5	20	124	\N	\N
244	4.58000000000000007	35.5	14	121	6.94000000000000039	4.30999999999999961
245	4.99000000000000021	28	17	108	7.74000000000000021	4.69000000000000039
246	4.45999999999999996	34.5	15	120	7.03000000000000025	4.25
247	4.79000000000000004	32.5	\N	116	7.11000000000000032	4.32000000000000028
248	4.48000000000000043	35.5	\N	121	\N	\N
249	4.73000000000000043	32	19	117	\N	\N
250	4.71999999999999975	31.5	\N	116	\N	4.28000000000000025
251	4.41000000000000014	41.5	14	135	6.94000000000000039	4.17999999999999972
252	5.03000000000000025	34.5	28	118	7.44000000000000039	4.58999999999999986
253	5.33000000000000007	29.5	30	99	7.90000000000000036	4.70999999999999996
254	4.45000000000000018	\N	\N	\N	\N	\N
255	5.29999999999999982	28	30	111	7.75	4.90000000000000036
256	5.20999999999999996	31	\N	104	7.76999999999999957	4.75
257	5.01999999999999957	32	24	113	8.27999999999999936	4.82000000000000028
258	5.36000000000000032	28.5	30	100	8.41999999999999993	4.83000000000000007
259	4.49000000000000021	35.5	\N	121	\N	\N
260	4.58999999999999986	34.5	\N	123	6.76999999999999957	4.19000000000000039
261	5.20000000000000018	26	22	106	7.79999999999999982	4.74000000000000021
262	4.49000000000000021	\N	17	\N	\N	\N
263	4.54000000000000004	29.5	12	112	7.17999999999999972	4.33000000000000007
264	4.5	35.5	19	116	\N	\N
265	4.74000000000000021	35	23	124	7.09999999999999964	4.33000000000000007
266	4.75999999999999979	33.5	22	111	7.11000000000000032	4.29999999999999982
267	4.54000000000000004	32.5	17	116	\N	\N
268	5.19000000000000039	26	\N	105	7.40000000000000036	4.51999999999999957
269	4.38999999999999968	35	12	124	\N	4.17999999999999972
270	4.58000000000000007	32.5	12	116	7.12000000000000011	4.19000000000000039
271	4.54999999999999982	33.5	11	114	\N	\N
272	5.21999999999999975	30.5	22	112	\N	\N
273	4.48000000000000043	41	20	123	7	4.34999999999999964
274	4.58000000000000007	33	18	119	\N	4.50999999999999979
275	5.15000000000000036	25	23	\N	7.90000000000000036	4.96999999999999975
276	4.61000000000000032	40	16	126	6.58000000000000007	3.85000000000000009
277	4.53000000000000025	37	11	120	7.08000000000000007	4.19000000000000039
278	5.38999999999999968	24	27	103	7.88999999999999968	4.75999999999999979
279	5.41999999999999993	23	17	92	8.35999999999999943	5.12000000000000011
280	4.46999999999999975	33.5	14	120	6.83000000000000007	4.28000000000000025
281	4.76999999999999957	34.5	19	120	\N	\N
282	4.46999999999999975	36	18	122	6.87999999999999989	4.08999999999999986
283	4.66999999999999993	\N	\N	\N	\N	\N
284	4.79999999999999982	35	25	121	7.20999999999999996	4.34999999999999964
285	4.94000000000000039	31.5	31	115	7.70000000000000018	4.44000000000000039
286	4.69000000000000039	35	12	114	7.08999999999999986	4.20000000000000018
287	4.79000000000000004	33	15	115	7.16999999999999993	4.25
288	5.20000000000000018	28.5	\N	\N	8.02999999999999936	4.90000000000000036
289	4.79999999999999982	33.5	\N	115	7.29000000000000004	4.33000000000000007
290	4.79999999999999982	30	23	116	7.29999999999999982	4.45999999999999996
291	5.01999999999999957	29	\N	105	\N	\N
292	4.58999999999999986	34	23	119	\N	\N
293	4.59999999999999964	32	15	113	\N	\N
294	5.21999999999999975	28	\N	103	7.90000000000000036	4.78000000000000025
295	4.57000000000000028	35	18	126	6.79999999999999982	4.12999999999999989
296	4.98000000000000043	35	\N	113	\N	\N
297	4.91999999999999993	\N	18	\N	7.45999999999999996	4.5
298	4.69000000000000039	32.5	12	118	7.25999999999999979	4.33000000000000007
299	4.75	31	12	116	6.84999999999999964	4.20999999999999996
300	4.95000000000000018	28.5	28	110	7.46999999999999975	4.54000000000000004
301	5.32000000000000028	26	22	103	7.87999999999999989	4.58999999999999986
302	4.51999999999999957	33	12	117	\N	\N
303	5.45000000000000018	23.5	22	90	7.94000000000000039	5.01999999999999957
304	5.12000000000000011	\N	22	\N	\N	\N
305	5.23000000000000043	\N	\N	\N	\N	\N
306	5.58000000000000007	19	30	88	\N	\N
307	4.67999999999999972	32	26	108	\N	\N
308	5.25999999999999979	29	23	113	8.25999999999999979	5
309	5.19000000000000039	29	17	110	8.02999999999999936	4.58999999999999986
310	4.75999999999999979	30.5	17	111	7.04999999999999982	4.20000000000000018
311	4.71999999999999975	31.5	\N	115	6.73000000000000043	4
312	4.59999999999999964	38.5	30	123	7.12000000000000011	4.12000000000000011
313	5.11000000000000032	25	20	111	7.37999999999999989	4.62999999999999989
314	4.49000000000000021	34.5	24	116	7.03000000000000025	4.20000000000000018
315	5.16999999999999993	27	21	99	8.0600000000000005	4.79000000000000004
316	4.61000000000000032	31	23	117	\N	\N
317	4.76999999999999957	30.5	\N	118	6.86000000000000032	4.15000000000000036
318	5.12000000000000011	\N	34	98	7.69000000000000039	4.70999999999999996
319	4.49000000000000021	33	17	132	7.17999999999999972	4.33000000000000007
320	5.01999999999999957	25.5	16	110	7.32000000000000028	4.58000000000000007
321	4.54000000000000004	36.5	21	118	7.08000000000000007	4.33000000000000007
322	4.55999999999999961	\N	16	\N	\N	\N
323	4.94000000000000039	29.5	19	111	7.19000000000000039	4.53000000000000025
324	4.37000000000000011	30.5	18	118	6.84999999999999964	4.19000000000000039
325	4.71999999999999975	30	14	121	7.42999999999999972	4.46999999999999975
326	4.84999999999999964	28	\N	113	\N	\N
327	4.79999999999999982	31	\N	116	6.74000000000000021	4.30999999999999961
328	5.17999999999999972	\N	\N	\N	\N	\N
329	4.63999999999999968	35.5	14	123	6.98000000000000043	4.15000000000000036
330	4.91000000000000014	34.5	22	117	7.32000000000000028	4.26999999999999957
331	4.45999999999999996	34.5	9	118	6.79999999999999982	3.93000000000000016
332	5.38999999999999968	\N	\N	\N	8.22000000000000064	4.91000000000000014
333	4.80999999999999961	30.5	28	109	7.62999999999999989	4.38999999999999968
334	4.44000000000000039	29.5	8	125	6.98000000000000043	4.28000000000000025
335	4.87000000000000011	29	22	108	7.62000000000000011	4.88999999999999968
336	4.55999999999999961	31.5	18	120	6.95999999999999996	4.12999999999999989
337	4.41999999999999993	34.5	8	123	6.73000000000000043	4.13999999999999968
338	5	30	21	108	7.49000000000000021	4.5
339	4.48000000000000043	34.5	15	117	6.63999999999999968	4.33999999999999986
339	5.33999999999999986	26.5	27	99	7.80999999999999961	4.70999999999999996
340	4.78000000000000025	\N	\N	\N	\N	\N
341	4.62999999999999989	30.5	16	116	6.87999999999999989	4.25
342	5.33999999999999986	25.5	35	102	7.83000000000000007	4.92999999999999972
343	5.23000000000000043	27.5	24	107	8.13000000000000078	4.90000000000000036
344	4.42999999999999972	34.5	16	132	6.80999999999999961	4.13999999999999968
345	\N	\N	\N	\N	\N	\N
346	4.45000000000000018	32.5	15	115	6.75999999999999979	4.08000000000000007
347	5.58000000000000007	23.5	22	92	8.3100000000000005	5.20999999999999996
348	4.87999999999999989	31	\N	117	6.95999999999999996	4.44000000000000039
349	4.70000000000000018	31.5	15	119	7.26999999999999957	4.34999999999999964
350	\N	31	\N	113	\N	\N
351	\N	\N	20	\N	\N	\N
352	4.66999999999999993	33.5	21	118	6.91999999999999993	4.29999999999999982
353	5.23000000000000043	29.5	23	96	8.01999999999999957	4.94000000000000039
354	4.95000000000000018	28	\N	115	7.29000000000000004	4.54999999999999982
355	\N	29.5	20	111	7.01999999999999957	4.42999999999999972
356	4.67999999999999972	34	9	125	6.73000000000000043	4.20999999999999996
357	4.82000000000000028	31.5	20	121	7.20000000000000018	4.37000000000000011
358	4.65000000000000036	37.5	21	127	6.75	\N
359	5.04000000000000004	28	25	102	7.84999999999999964	4.90000000000000036
360	5.13999999999999968	27	21	105	7.66000000000000014	4.62000000000000011
361	\N	34	24	\N	\N	\N
362	\N	\N	19	\N	7.07000000000000028	4.33000000000000007
363	4.70000000000000018	31.5	17	120	\N	\N
364	4.94000000000000039	34	19	115	7.24000000000000021	4.44000000000000039
365	4.65000000000000036	37	\N	124	6.91999999999999993	4.17999999999999972
366	4.70000000000000018	29	23	118	\N	\N
367	\N	28	17	106	7.90000000000000036	4.83999999999999986
368	\N	25	23	97	\N	\N
369	\N	31.5	20	116	\N	\N
370	\N	\N	\N	\N	\N	\N
371	\N	\N	\N	\N	\N	\N
372	4.41000000000000014	37	13	119	\N	\N
373	4.74000000000000021	29.5	25	120	7.20000000000000018	4.44000000000000039
374	4.58000000000000007	37	23	130	\N	\N
375	4.63999999999999968	35	19	122	\N	\N
376	4.67999999999999972	\N	19	\N	\N	\N
377	4.91999999999999993	33	25	116	7.16999999999999993	4.38999999999999968
378	4.46999999999999975	35.5	10	132	6.70000000000000018	4.08999999999999986
379	\N	\N	20	\N	\N	\N
380	4.54000000000000004	34	16	122	6.84999999999999964	4.07000000000000028
381	4.67999999999999972	28.5	19	115	\N	\N
382	\N	\N	23	\N	\N	\N
383	4.41999999999999993	31.5	11	118	\N	\N
384	4.45000000000000018	34	10	122	\N	\N
385	4.80999999999999961	\N	34	\N	\N	\N
386	4.44000000000000039	37	11	129	6.67999999999999972	4.17999999999999972
387	4.65000000000000036	29	20	113	\N	\N
388	4.49000000000000021	30.5	22	116	7.26999999999999957	4.53000000000000025
389	5.36000000000000032	24.5	26	99	8.01999999999999957	4.87999999999999989
390	4.66999999999999993	35	15	125	7.03000000000000025	4.29000000000000004
391	4.54999999999999982	32	17	116	7.08999999999999986	4.46999999999999975
392	4.45000000000000018	36	17	124	\N	\N
393	5.45000000000000018	27	18	106	7.57000000000000028	4.69000000000000039
394	4.44000000000000039	41	19	136	6.82000000000000028	4.28000000000000025
395	4.91000000000000014	30.5	11	110	7.17999999999999972	4.37999999999999989
396	\N	\N	\N	\N	\N	\N
397	\N	\N	21	\N	\N	\N
398	\N	\N	\N	\N	\N	\N
399	\N	\N	\N	\N	\N	\N
400	5.11000000000000032	26	26	106	7.29999999999999982	4.78000000000000025
401	4.46999999999999975	28	18	109	\N	\N
402	4.62000000000000011	31	11	116	\N	\N
403	\N	\N	27	\N	\N	\N
404	4.63999999999999968	33	\N	122	6.75	4.30999999999999961
405	4.75	29.5	26	116	7.01999999999999957	4.45999999999999996
406	4.58999999999999986	33.5	16	120	6.96999999999999975	4.25999999999999979
407	4.98000000000000043	28.5	23	108	\N	\N
408	4.51999999999999957	39.5	11	135	7.19000000000000039	4.25999999999999979
409	4.57000000000000028	30.5	\N	116	7.29000000000000004	4.54999999999999982
410	4.87999999999999989	30.5	\N	115	7.37999999999999989	4.58000000000000007
411	4.54999999999999982	\N	\N	\N	\N	\N
412	5.32000000000000028	23.5	22	99	7.94000000000000039	4.70999999999999996
413	4.79000000000000004	\N	\N	\N	\N	\N
414	4.79000000000000004	29.5	18	115	6.79999999999999982	4.25
415	5.21999999999999975	\N	34	\N	\N	\N
416	4.41999999999999993	36	19	125	6.91999999999999993	4.23000000000000043
417	4.49000000000000021	31	14	126	6.95000000000000018	4.32000000000000028
418	\N	\N	14	\N	\N	\N
419	4.79999999999999982	26.5	\N	112	\N	4.41000000000000014
420	4.62000000000000011	37.5	22	126	6.99000000000000021	4.33000000000000007
421	5.24000000000000021	28	26	101	7.51999999999999957	4.67999999999999972
422	4.71999999999999975	34	\N	124	7.40000000000000036	4.5
423	\N	\N	20	\N	\N	\N
424	4.61000000000000032	35.5	14	127	6.94000000000000039	4.33999999999999986
425	\N	\N	18	\N	\N	\N
426	\N	\N	\N	\N	\N	\N
427	4.50999999999999979	28.5	\N	\N	\N	\N
428	5.24000000000000021	26	23	96	7.70999999999999996	4.83999999999999986
429	4.59999999999999964	29.5	21	120	7.16999999999999993	4.28000000000000025
430	5.15000000000000036	31	24	108	7.98000000000000043	4.94000000000000039
431	4.63999999999999968	41	33	128	\N	\N
432	5.26999999999999957	\N	18	\N	\N	\N
433	4.75	34.5	27	119	6.98000000000000043	4.12999999999999989
434	5.34999999999999964	20	24	91	8.08000000000000007	5
435	4.58000000000000007	30.5	17	122	\N	\N
436	4.5	32	8	118	6.83000000000000007	4.20000000000000018
437	5.12999999999999989	27.5	20	105	7.54999999999999982	4.5
438	4.41999999999999993	36	19	126	7.00999999999999979	4
439	4.5	35.5	18	120	7	4.15000000000000036
440	\N	\N	\N	\N	\N	\N
441	4.37999999999999989	38.5	17	132	6.87000000000000011	4.13999999999999968
442	4.51999999999999957	35.5	14	118	\N	\N
443	4.75999999999999979	36	18	123	7.03000000000000025	4.37999999999999989
444	4.53000000000000025	35	11	119	6.74000000000000021	4.12999999999999989
445	5.15000000000000036	30.5	26	105	8.16000000000000014	4.80999999999999961
446	4.73000000000000043	33	18	114	7.12999999999999989	4.30999999999999961
447	4.82000000000000028	32	21	109	7.46999999999999975	4.41999999999999993
448	\N	31.5	12	121	\N	\N
449	4.63999999999999968	\N	16	\N	\N	\N
450	4.48000000000000043	34	20	120	\N	\N
451	4.45999999999999996	36	13	131	7.17999999999999972	4.34999999999999964
452	4.65000000000000036	33.5	\N	122	7.03000000000000025	4.20000000000000018
453	\N	\N	\N	\N	\N	\N
454	\N	\N	20	\N	\N	\N
455	4.46999999999999975	33.5	17	115	6.95999999999999996	4.26999999999999957
456	4.54000000000000004	34	15	125	7.03000000000000025	4.32000000000000028
457	4.57000000000000028	39	18	134	\N	4.45000000000000018
458	5.19000000000000039	28	\N	115	\N	\N
459	5.46999999999999975	28	23	111	7.70999999999999996	4.71999999999999975
460	4.53000000000000025	\N	\N	\N	\N	\N
461	\N	\N	18	\N	\N	\N
462	\N	\N	\N	\N	\N	\N
463	4.50999999999999979	30	22	121	6.84999999999999964	4.16000000000000014
464	4.58000000000000007	37.5	\N	119	6.95000000000000018	4.13999999999999968
465	4.41000000000000014	\N	10	125	6.75	\N
466	\N	\N	\N	\N	\N	\N
467	4.62000000000000011	36.5	18	119	\N	\N
468	4.74000000000000021	32.5	21	\N	\N	\N
469	5.03000000000000025	29	26	94	8.13000000000000078	4.90000000000000036
470	\N	\N	10	\N	\N	\N
471	4.41999999999999993	36	\N	122	\N	\N
472	4.50999999999999979	37	19	128	\N	\N
473	\N	\N	\N	\N	\N	\N
474	4.61000000000000032	37	14	119	6.71999999999999975	4.17999999999999972
475	5.37999999999999989	28	19	100	7.63999999999999968	4.62000000000000011
476	4.59999999999999964	33	19	119	6.90000000000000036	4.20000000000000018
477	5.26999999999999957	30	21	114	8.39000000000000057	5.08999999999999986
478	4.91999999999999993	\N	\N	\N	\N	\N
479	4.45000000000000018	36.5	15	133	6.79000000000000004	4.00999999999999979
480	4.46999999999999975	33.5	\N	123	7.01999999999999957	4.28000000000000025
481	5.11000000000000032	24.5	\N	101	7.92999999999999972	4.62999999999999989
482	4.41000000000000014	37.5	20	132	\N	\N
483	5.33000000000000007	20.5	22	\N	\N	\N
484	5.04000000000000004	28.5	25	108	7.73000000000000043	4.65000000000000036
485	4.55999999999999961	37.5	16	127	6.82000000000000028	4.20000000000000018
486	4.91999999999999993	33	22	124	\N	\N
487	\N	\N	10	\N	\N	\N
488	4.65000000000000036	30.5	23	116	7.23000000000000043	4.33999999999999986
489	4.88999999999999968	26.5	16	109	7.36000000000000032	4.45999999999999996
490	4.54000000000000004	32	9	117	6.83000000000000007	4.21999999999999975
491	\N	\N	\N	\N	\N	\N
492	4.55999999999999961	39.5	15	131	\N	\N
493	4.54000000000000004	34	11	124	\N	\N
494	4.91999999999999993	29.5	23	112	7.28000000000000025	4.55999999999999961
495	4.42999999999999972	39.5	11	\N	6.55999999999999961	3.89000000000000012
496	\N	34	14	117	6.66999999999999993	4.17999999999999972
497	4.51999999999999957	35	18	132	\N	\N
498	4.83000000000000007	30.5	\N	107	7.40000000000000036	4.53000000000000025
499	4.54000000000000004	35.5	\N	125	7.04000000000000004	4.13999999999999968
500	4.83000000000000007	30	23	128	7.45999999999999996	4.62000000000000011
501	4.62000000000000011	31	\N	116	6.75	4.08000000000000007
502	5	27.5	34	111	7.54999999999999982	4.62000000000000011
503	4.51999999999999957	34.5	19	120	\N	\N
504	4.59999999999999964	35	16	125	6.87000000000000011	4.12000000000000011
505	\N	33	23	118	7	4.32000000000000028
506	4.36000000000000032	38.5	\N	132	\N	\N
507	4.66999999999999993	33	35	114	7.45999999999999996	4.19000000000000039
508	\N	23.5	22	\N	\N	\N
509	4.83999999999999986	32.5	29	113	7.54999999999999982	4.55999999999999961
510	\N	31	25	118	\N	\N
511	5.44000000000000039	25.5	18	100	8.01999999999999957	4.75
512	\N	33	18	114	7.12000000000000011	4.33000000000000007
513	4.92999999999999972	34.5	\N	123	6.95999999999999996	4.25
514	5.16000000000000014	26.5	26	106	7.54999999999999982	4.73000000000000043
515	4.54000000000000004	34.5	15	121	\N	\N
516	\N	\N	15	\N	\N	\N
517	5.08000000000000007	27	\N	105	7.32000000000000028	4.45000000000000018
518	4.37000000000000011	33.5	17	121	\N	\N
519	4.54999999999999982	31	12	116	6.87000000000000011	4.20999999999999996
520	4.54999999999999982	32.5	11	119	7.23000000000000043	4.42999999999999972
521	4.5	35.5	15	125	\N	\N
522	4.79999999999999982	30	\N	114	6.87999999999999989	4.08000000000000007
523	4.40000000000000036	30.5	10	121	7.04999999999999982	4.19000000000000039
524	5.83999999999999986	24.5	\N	96	8.50999999999999979	5.37999999999999989
525	4.55999999999999961	29.5	11	117	7.00999999999999979	4.20000000000000018
526	\N	\N	24	\N	\N	\N
527	4.62000000000000011	34.5	18	120	\N	\N
528	\N	\N	\N	\N	\N	\N
529	4.48000000000000043	37.5	10	121	6.57000000000000028	4.21999999999999975
530	5.17999999999999972	28.5	\N	105	7.51999999999999957	4.58000000000000007
531	4.84999999999999964	28.5	23	112	7.69000000000000039	4.53000000000000025
532	4.53000000000000025	36	15	120	7.25999999999999979	4.55999999999999961
533	4.41999999999999993	36	11	123	6.63999999999999968	4.15000000000000036
534	4.58999999999999986	33	24	122	7.48000000000000043	4.62000000000000011
535	4.61000000000000032	33	23	121	7.15000000000000036	4.38999999999999968
536	4.49000000000000021	35.5	\N	121	6.92999999999999972	4.28000000000000025
537	4.40000000000000036	44	17	141	\N	\N
538	4.66999999999999993	35	24	126	\N	\N
539	4.34999999999999964	38	\N	136	6.94000000000000039	4.12000000000000011
540	5.36000000000000032	27	21	102	8.13000000000000078	4.73000000000000043
541	4.74000000000000021	30	10	112	6.84999999999999964	4.12000000000000011
542	4.79000000000000004	32.5	14	114	7.25	4.42999999999999972
543	5.17999999999999972	30.5	23	109	7.73000000000000043	4.58000000000000007
544	4.87999999999999989	30.5	22	117	7.25	4.46999999999999975
545	4.28000000000000025	37.5	13	124	7.05999999999999961	4.21999999999999975
546	4.41999999999999993	35	\N	125	\N	\N
547	4.78000000000000025	33	18	116	\N	4.37999999999999989
548	4.63999999999999968	37.5	21	133	6.96999999999999975	4.33999999999999986
549	\N	43.5	18	133	\N	\N
550	5.29999999999999982	25.5	\N	99	\N	\N
551	4.83000000000000007	30.5	27	110	\N	\N
552	4.71999999999999975	31.5	25	128	7.25999999999999979	4.40000000000000036
553	4.65000000000000036	35	14	120	6.99000000000000021	4.33999999999999986
554	4.96999999999999975	32	26	116	7.54999999999999982	4.75
555	\N	\N	24	\N	\N	\N
556	4.83999999999999986	27	17	112	7.37000000000000011	4.45000000000000018
557	4.54999999999999982	36	14	126	7.11000000000000032	4.29000000000000004
558	4.45999999999999996	35.5	19	128	\N	\N
559	4.65000000000000036	33	30	116	7.25999999999999979	4.37000000000000011
560	4.82000000000000028	31	\N	110	7.13999999999999968	4.30999999999999961
561	4.63999999999999968	30	23	123	7.05999999999999961	4.37000000000000011
562	4.96999999999999975	28	18	109	7.54999999999999982	4.58999999999999986
563	5.15000000000000036	27	26	107	7.88999999999999968	4.80999999999999961
564	4.83999999999999986	31.5	20	117	\N	4.33999999999999986
565	4.48000000000000043	33.5	5	117	\N	\N
566	5.12999999999999989	31.5	33	105	7.65000000000000036	4.66000000000000014
567	4.59999999999999964	31	11	115	7	4.38999999999999968
568	\N	\N	25	\N	\N	\N
569	4.41999999999999993	36.5	\N	129	6.76999999999999957	4.19000000000000039
570	4.51999999999999957	36.5	24	133	7.00999999999999979	4.37000000000000011
571	4.75999999999999979	30.5	16	116	7.17999999999999972	4.45999999999999996
572	\N	\N	\N	\N	\N	\N
573	\N	\N	\N	\N	\N	\N
574	4.51999999999999957	37	\N	124	6.83000000000000007	4.12999999999999989
575	4.58000000000000007	34.5	18	122	6.88999999999999968	4.20999999999999996
576	4.61000000000000032	35	30	123	6.94000000000000039	4.40000000000000036
577	4.86000000000000032	30	\N	110	7.04999999999999982	4.50999999999999979
578	4.62000000000000011	31.5	13	120	6.76999999999999957	4.45999999999999996
579	4.46999999999999975	34	13	130	\N	\N
580	5.15000000000000036	26	\N	106	7.80999999999999961	4.82000000000000028
581	4.88999999999999968	31.5	25	114	\N	\N
582	4.92999999999999972	32	19	114	7.26999999999999957	4.33999999999999986
583	\N	26.5	8	112	7.21999999999999975	4.54000000000000004
584	4.21999999999999975	37	\N	133	\N	\N
585	4.50999999999999979	35	10	113	6.99000000000000021	4.28000000000000025
586	5.54000000000000004	26.5	19	97	7.59999999999999964	4.46999999999999975
587	4.65000000000000036	31.5	12	114	6.92999999999999972	4.45999999999999996
588	4.92999999999999972	27	\N	105	7.23000000000000043	4.46999999999999975
589	\N	\N	\N	\N	\N	\N
590	4.30999999999999961	37	18	119	7.08999999999999986	4.33000000000000007
591	\N	33	22	121	\N	\N
592	4.61000000000000032	31	13	116	7.19000000000000039	4.49000000000000021
593	4.69000000000000039	28	17	121	7.45999999999999996	4.33000000000000007
594	5.54999999999999982	23	\N	98	8.1899999999999995	5.05999999999999961
595	4.79000000000000004	32.5	24	121	7.08999999999999986	4.37999999999999989
596	5.44000000000000039	20.5	19	97	7.87000000000000011	4.78000000000000025
597	4.50999999999999979	35	10	120	6.91999999999999993	4.01999999999999957
598	4.90000000000000036	28	20	105	7.20999999999999996	4.41000000000000014
599	5.34999999999999964	32	28	110	7.70999999999999996	4.55999999999999961
600	5.41999999999999993	26	\N	97	7.61000000000000032	5.00999999999999979
601	5.24000000000000021	27	22	105	7.53000000000000025	4.57000000000000028
602	4.62000000000000011	38	22	127	\N	4.17999999999999972
603	\N	29	22	108	7.29999999999999982	4.55999999999999961
604	4.54000000000000004	32.5	15	120	\N	\N
605	4.76999999999999957	29.5	\N	117	7.17999999999999972	4.38999999999999968
606	4.69000000000000039	29	\N	116	\N	\N
607	4.50999999999999979	36	\N	130	\N	\N
608	4.75	28	24	111	7.65000000000000036	4.45000000000000018
609	4.49000000000000021	34	\N	124	\N	\N
610	4.59999999999999964	31.5	5	114	6.94000000000000039	4.55999999999999961
611	4.51999999999999957	34	11	120	6.80999999999999961	\N
612	4.50999999999999979	32	11	116	6.76999999999999957	4
613	4.62000000000000011	31	9	120	\N	\N
614	4.40000000000000036	29.5	13	121	7	4.32000000000000028
615	4.66999999999999993	28.5	24	112	6.91000000000000014	4.33000000000000007
616	5.07000000000000028	28.5	26	108	7.58000000000000007	4.71999999999999975
617	4.62999999999999989	33	13	117	6.74000000000000021	4.00999999999999979
618	4.5	33.5	13	132	6.57000000000000028	4.20999999999999996
619	5.26999999999999957	26	15	107	7.83999999999999986	4.59999999999999964
620	5.41000000000000014	27	23	105	7.96999999999999975	4.88999999999999968
621	4.69000000000000039	35	30	126	6.95000000000000018	4.28000000000000025
622	4.62999999999999989	32.5	9	118	\N	\N
623	4.62000000000000011	32	11	116	\N	\N
624	4.59999999999999964	32.5	17	117	7.11000000000000032	4.36000000000000032
625	4.54000000000000004	35	21	125	\N	\N
626	5.19000000000000039	27	\N	110	7.67999999999999972	4.58999999999999986
627	5.50999999999999979	25.5	21	100	8.08999999999999986	4.83999999999999986
628	\N	32.5	13	115	7.08000000000000007	4.28000000000000025
629	4.66999999999999993	27.5	\N	116	6.87000000000000011	4.25
630	5.45000000000000018	24.5	28	91	7.83000000000000007	5
631	4.55999999999999961	33	17	118	\N	\N
632	5.61000000000000032	26	18	103	8.34999999999999964	5.16999999999999993
633	\N	\N	\N	\N	\N	\N
634	4.66999999999999993	33.5	\N	121	\N	4.38999999999999968
635	4.99000000000000021	28.5	28	111	7.69000000000000039	4.38999999999999968
636	4.70000000000000018	34	\N	\N	\N	\N
637	\N	\N	18	\N	\N	\N
638	4.95999999999999996	28	25	107	7.88999999999999968	4.95999999999999996
639	\N	\N	25	\N	\N	\N
640	4.66000000000000014	32.5	\N	119	6.95000000000000018	4.30999999999999961
641	4.69000000000000039	37	21	128	6.79000000000000004	4.12999999999999989
642	4.79000000000000004	33	\N	118	6.91999999999999993	4.20999999999999996
643	\N	\N	\N	\N	\N	\N
644	5.48000000000000043	20.5	15	105	\N	5.00999999999999979
645	4.46999999999999975	32	16	119	6.90000000000000036	4.32000000000000028
646	4.58999999999999986	36	\N	123	\N	\N
647	4.44000000000000039	32.5	8	120	7.16999999999999993	4.37000000000000011
648	4.67999999999999972	33.5	\N	124	7.36000000000000032	4.57000000000000028
649	4.50999999999999979	36	18	121	6.86000000000000032	4.17999999999999972
650	\N	32.5	15	121	\N	\N
651	4.55999999999999961	43.5	14	129	6.84999999999999964	4.20000000000000018
652	4.41000000000000014	35	14	125	7.19000000000000039	4.19000000000000039
653	4.58999999999999986	30	\N	123	7.25	4.53000000000000025
654	4.53000000000000025	39	24	125	6.84999999999999964	4.28000000000000025
1120	\N	\N	\N	\N	\N	\N
655	4.54000000000000004	32	14	118	6.86000000000000032	4.01999999999999957
656	4.57000000000000028	\N	10	119	\N	4.57000000000000028
657	4.57000000000000028	33.5	\N	119	6.67999999999999972	3.93999999999999995
658	4.45000000000000018	40.5	\N	127	6.92999999999999972	4.12999999999999989
659	4.54000000000000004	33.5	19	122	6.71999999999999975	4.12999999999999989
660	\N	\N	23	\N	\N	\N
661	\N	\N	\N	\N	\N	\N
662	4.65000000000000036	\N	\N	\N	\N	\N
663	\N	\N	18	\N	\N	\N
664	4.83000000000000007	31.5	26	\N	7.20999999999999996	4.28000000000000025
665	\N	\N	\N	\N	\N	\N
666	4.37999999999999989	35	14	127	6.70999999999999996	3.97999999999999998
667	4.80999999999999961	29.5	\N	112	7.17999999999999972	4.48000000000000043
668	4.75	33.5	\N	119	6.90000000000000036	4.40000000000000036
668	4.62999999999999989	\N	28	118	7.15000000000000036	4.23000000000000043
669	\N	37	15	127	\N	4.32000000000000028
670	4.66999999999999993	31	17	113	7.33999999999999986	4.37999999999999989
671	4.33999999999999986	41	16	131	6.55999999999999961	4.03000000000000025
672	4.87000000000000011	30	20	118	7.12000000000000011	4.23000000000000043
673	4.59999999999999964	38.5	18	128	7.53000000000000025	4.48000000000000043
674	4.62000000000000011	34	13	121	7.07000000000000028	4.25
675	5.37999999999999989	24	\N	89	7.95000000000000018	4.75
676	4.36000000000000032	31.5	13	119	6.92999999999999972	4.40000000000000036
677	4.58999999999999986	36	26	124	6.90000000000000036	4.36000000000000032
678	4.94000000000000039	\N	\N	111	\N	\N
679	4.53000000000000025	36.5	22	126	\N	\N
680	4.45999999999999996	33.5	15	122	6.91000000000000014	4.34999999999999964
681	4.40000000000000036	41	29	\N	\N	4.24000000000000021
682	4.70000000000000018	30	\N	108	7.37999999999999989	4.44000000000000039
683	4.5	35.5	\N	117	6.78000000000000025	4.25999999999999979
684	4.80999999999999961	33	\N	117	7.28000000000000025	4.50999999999999979
685	\N	\N	\N	\N	\N	\N
686	\N	\N	15	\N	\N	\N
687	4.95000000000000018	31	16	112	7.15000000000000036	4.33000000000000007
688	\N	\N	11	\N	\N	\N
689	4.79000000000000004	30.5	21	117	7.25999999999999979	\N
690	4.62999999999999989	31.5	\N	122	\N	\N
691	\N	\N	\N	\N	\N	\N
692	5.03000000000000025	28	31	101	7.50999999999999979	4.48000000000000043
693	\N	\N	\N	\N	\N	\N
694	5.84999999999999964	19.5	14	82	7.87000000000000011	5.37999999999999989
695	4.34999999999999964	31.5	14	126	6.78000000000000025	4.11000000000000032
695	4.65000000000000036	33.5	14	119	7.20999999999999996	4.26999999999999957
696	4.48000000000000043	\N	20	\N	\N	\N
697	4.98000000000000043	35	30	119	7.12000000000000011	4.48000000000000043
698	4.58999999999999986	39.5	18	131	6.82000000000000028	4.15000000000000036
699	\N	\N	\N	\N	\N	\N
700	\N	\N	19	\N	\N	\N
701	4.42999999999999972	33.5	11	115	6.70999999999999996	4.37000000000000011
702	4.41000000000000014	34	\N	121	\N	\N
703	\N	\N	14	\N	\N	\N
704	4.58999999999999986	38.5	18	130	6.55999999999999961	4.03000000000000025
705	5.38999999999999968	26.5	24	97	8.03999999999999915	4.83999999999999986
706	5	30	18	111	7.25999999999999979	4.28000000000000025
707	\N	\N	\N	\N	\N	\N
708	4.5	36	\N	130	\N	\N
709	4.49000000000000021	38	13	123	6.78000000000000025	4.07000000000000028
710	4.65000000000000036	34.5	16	119	\N	4.62000000000000011
711	4.33999999999999986	40	16	129	\N	\N
712	5.33000000000000007	\N	19	\N	\N	\N
713	4.65000000000000036	36	24	121	7.37000000000000011	4.41000000000000014
714	4.51999999999999957	38.5	29	128	7.08999999999999986	4.25
715	\N	\N	18	\N	\N	\N
716	5.38999999999999968	29	25	97	8.03999999999999915	4.91999999999999993
717	4.63999999999999968	30	11	113	6.70000000000000018	4.32000000000000028
718	5.23000000000000043	23.5	23	104	7.76999999999999957	4.78000000000000025
719	4.65000000000000036	33	23	120	\N	\N
720	4.79999999999999982	38	18	120	7.12999999999999989	4.23000000000000043
721	5.15000000000000036	28	19	106	7.87000000000000011	4.5
722	4.42999999999999972	34.5	14	113	6.92999999999999972	4.15000000000000036
723	4.78000000000000025	\N	23	\N	\N	\N
724	4.63999999999999968	33.5	11	122	\N	\N
725	5.23000000000000043	30	17	105	7.88999999999999968	4.76999999999999957
726	4.41000000000000014	38.5	25	121	6.88999999999999968	4.24000000000000021
727	4.98000000000000043	32.5	23	119	\N	\N
728	\N	30.5	21	108	7.29000000000000004	4.40000000000000036
729	4.84999999999999964	26.5	\N	105	6.95999999999999996	4.40000000000000036
730	4.58000000000000007	33.5	22	124	7.20000000000000018	4.41000000000000014
731	\N	\N	\N	\N	\N	\N
732	4.53000000000000025	34	16	124	\N	\N
733	4.45999999999999996	\N	15	\N	\N	\N
734	4.45999999999999996	32.5	13	120	6.95000000000000018	4.25
735	4.84999999999999964	29.5	18	112	7.08999999999999986	4.23000000000000043
736	5.58000000000000007	23.5	17	98	7.86000000000000032	4.95000000000000018
737	5.05999999999999961	31	26	\N	\N	\N
738	\N	\N	\N	\N	\N	\N
739	4.87000000000000011	28	15	111	7.07000000000000028	4.40000000000000036
740	4.79999999999999982	33	21	121	\N	4.28000000000000025
741	4.54999999999999982	34	19	122	6.79000000000000004	4.07000000000000028
742	4.46999999999999975	41.5	\N	134	\N	\N
743	4.54000000000000004	\N	19	117	\N	\N
744	\N	\N	\N	\N	\N	\N
745	4.58000000000000007	36	15	121	\N	\N
746	4.78000000000000025	31	15	114	7.08999999999999986	4.33999999999999986
747	4.65000000000000036	39.5	20	124	6.87999999999999989	4.15000000000000036
748	4.75999999999999979	30.5	\N	114	7.08999999999999986	4.37000000000000011
749	\N	30	\N	116	6.95000000000000018	4.36000000000000032
750	4.53000000000000025	\N	16	\N	\N	\N
751	\N	26.5	\N	103	\N	\N
752	\N	\N	\N	\N	\N	\N
753	5.29000000000000004	30	33	112	7.44000000000000039	4.53000000000000025
754	4.98000000000000043	29	\N	110	6.95999999999999996	4.40000000000000036
755	4.69000000000000039	32.5	31	117	6.87999999999999989	4.19000000000000039
756	4.45999999999999996	33	14	121	\N	\N
757	4.83000000000000007	30.5	17	109	7.45000000000000018	4.53000000000000025
758	4.62999999999999989	\N	\N	112	6.80999999999999961	4.57000000000000028
759	4.45000000000000018	34.5	18	122	\N	\N
760	4.41000000000000014	31	\N	116	6.90000000000000036	4.20000000000000018
761	4.62999999999999989	30	18	109	6.92999999999999972	4.30999999999999961
762	4.75	33	26	113	7.36000000000000032	4.48000000000000043
763	\N	\N	21	\N	\N	\N
764	4.54000000000000004	34	17	118	6.90000000000000036	4.16000000000000014
765	\N	\N	14	\N	\N	\N
766	4.50999999999999979	36	10	122	6.95000000000000018	4.37000000000000011
767	5.45999999999999996	24	20	94	7.61000000000000032	4.67999999999999972
768	4.61000000000000032	30	8	119	7.16000000000000014	4.33000000000000007
769	4.54000000000000004	41.5	22	129	6.75999999999999979	4.09999999999999964
770	\N	\N	23	\N	\N	\N
771	5.20000000000000018	25	32	103	7.59999999999999964	4.83000000000000007
772	4.50999999999999979	34.5	19	124	\N	\N
773	4.73000000000000043	32.5	\N	118	7.24000000000000021	4.38999999999999968
774	4.37999999999999989	\N	20	117	\N	\N
775	4.49000000000000021	31.5	15	\N	\N	\N
776	4.44000000000000039	34	15	119	6.50999999999999979	3.93999999999999995
777	\N	34.5	\N	118	6.83999999999999986	4.15000000000000036
778	\N	\N	20	\N	\N	\N
779	4.83000000000000007	31.5	28	111	7.98000000000000043	4.62000000000000011
780	4.42999999999999972	32.5	22	123	6.95999999999999996	4.40000000000000036
781	\N	\N	16	\N	\N	\N
782	4.90000000000000036	\N	\N	\N	\N	\N
783	\N	34	\N	120	\N	\N
784	4.66999999999999993	32	23	123	7.13999999999999968	4.45000000000000018
785	5.45000000000000018	24	18	96	7.83999999999999986	4.79999999999999982
786	4.88999999999999968	\N	22	\N	\N	\N
787	4.5	32.5	12	120	6.88999999999999968	4.28000000000000025
788	5.16000000000000014	29.5	20	105	7.33000000000000007	4.58000000000000007
789	5.15000000000000036	24	37	104	7.58999999999999986	4.70000000000000018
790	\N	\N	21	\N	\N	\N
791	4.62999999999999989	36.5	13	122	\N	\N
792	4.99000000000000021	26.5	35	101	7.28000000000000025	4.53000000000000025
793	4.49000000000000021	31	14	120	6.83000000000000007	4.15000000000000036
794	4.37999999999999989	35.5	\N	119	7.17999999999999972	4.34999999999999964
795	4.79000000000000004	\N	\N	116	\N	\N
796	4.82000000000000028	32	25	\N	\N	\N
797	\N	35	\N	116	6.83999999999999986	4.32000000000000028
798	4.53000000000000025	35.5	20	127	6.70000000000000018	4.12999999999999989
799	4.66999999999999993	31.5	\N	120	7.19000000000000039	4.37000000000000011
800	\N	\N	\N	\N	\N	\N
801	4.44000000000000039	35.5	19	128	6.55999999999999961	4.12000000000000011
802	\N	36	\N	120	\N	\N
803	4.59999999999999964	35	19	117	7.05999999999999961	4.28000000000000025
804	4.94000000000000039	33	18	110	7.15000000000000036	4.42999999999999972
805	4.87000000000000011	26.5	21	113	7.51999999999999957	\N
806	4.32000000000000028	\N	7	124	\N	\N
807	4.45999999999999996	35.5	14	120	\N	\N
808	4.55999999999999961	38	18	123	6.86000000000000032	4.03000000000000025
809	4.51999999999999957	38.5	13	122	6.80999999999999961	4.07000000000000028
810	\N	\N	\N	\N	\N	\N
810	4.58000000000000007	36.5	10	122	\N	\N
811	4.48000000000000043	34.5	26	122	7.13999999999999968	4.44000000000000039
812	4.40000000000000036	35.5	25	120	\N	\N
813	4.46999999999999975	40	21	132	\N	\N
814	4.48000000000000043	35.5	6	122	6.87000000000000011	4.16000000000000014
815	4.51999999999999957	36	27	125	\N	\N
816	4.82000000000000028	33	18	117	6.79999999999999982	4.26999999999999957
817	4.44000000000000039	35	15	123	\N	\N
818	\N	40	11	126	7.07000000000000028	4.29000000000000004
819	4.5	33	17	118	7.03000000000000025	4.28000000000000025
820	5.5	24	\N	102	8.32000000000000028	4.99000000000000021
821	5.08999999999999986	29	24	104	7.82000000000000028	4.74000000000000021
822	4.65000000000000036	36.5	\N	\N	\N	\N
823	5.32000000000000028	27	28	101	7.91999999999999993	4.86000000000000032
824	5.21999999999999975	27	16	109	8.09999999999999964	4.94000000000000039
825	\N	34	17	\N	6.88999999999999968	4.20000000000000018
826	4.57000000000000028	34	19	121	7.12999999999999989	4.36000000000000032
827	4.58000000000000007	41.5	17	134	\N	\N
828	\N	35	15	120	7.12999999999999989	4.50999999999999979
829	4.66000000000000014	33	9	120	6.94000000000000039	4.28000000000000025
830	\N	31	\N	117	7.16000000000000014	4.25
831	4.70000000000000018	\N	\N	\N	\N	\N
832	4.46999999999999975	35.5	20	115	7.08999999999999986	4.45000000000000018
833	4.66000000000000014	35.5	\N	121	7.04999999999999982	4.24000000000000021
834	4.50999999999999979	33.5	11	120	\N	\N
835	4.63999999999999968	36	24	119	6.87999999999999989	4.19000000000000039
836	4.5	34.5	8	112	\N	4.19000000000000039
837	4.80999999999999961	31	\N	113	6.95000000000000018	4.07000000000000028
838	4.54999999999999982	38	17	122	\N	\N
839	4.98000000000000043	32	\N	115	7	4.41000000000000014
840	4.70000000000000018	\N	17	\N	\N	\N
841	\N	\N	19	\N	\N	\N
842	\N	35.5	\N	122	\N	\N
843	4.90000000000000036	29.5	\N	106	7.49000000000000021	4.53000000000000025
844	4.88999999999999968	35.5	28	113	7.32000000000000028	4.37000000000000011
845	\N	\N	28	\N	\N	\N
846	4.38999999999999968	37	13	125	6.50999999999999979	4
847	5.33000000000000007	28.5	26	97	7.86000000000000032	4.87999999999999989
848	5.33999999999999986	29.5	15	103	\N	\N
849	4.79999999999999982	31.5	\N	\N	\N	\N
850	4.75999999999999979	31.5	26	108	7.24000000000000021	4.37000000000000011
851	4.83999999999999986	29	\N	111	7	4.28000000000000025
852	4.53000000000000025	34.5	13	113	\N	\N
853	4.75999999999999979	31.5	16	119	7.08999999999999986	4.25
854	5.34999999999999964	23.5	26	97	7.71999999999999975	4.82000000000000028
855	4.66999999999999993	38.5	\N	121	\N	\N
856	\N	28.5	24	105	\N	\N
857	\N	\N	\N	\N	\N	\N
858	5.15000000000000036	29.5	26	105	7.94000000000000039	4.67999999999999972
859	\N	39	11	128	6.71999999999999975	4.23000000000000043
860	4.54000000000000004	\N	22	\N	\N	4.20999999999999996
861	\N	\N	22	\N	\N	\N
862	4.95000000000000018	31.5	24	121	7.33999999999999986	4.49000000000000021
863	4.55999999999999961	32.5	13	121	6.75	4.40000000000000036
864	4.41999999999999993	39.5	15	132	6.95000000000000018	4.07000000000000028
865	4.59999999999999964	38	21	120	6.55999999999999961	4.04000000000000004
866	\N	\N	\N	\N	\N	\N
867	4.73000000000000043	36	\N	117	\N	\N
868	4.58000000000000007	33	15	122	6.95000000000000018	4.16000000000000014
869	4.55999999999999961	40.5	17	122	7	4.28000000000000025
870	4.51999999999999957	\N	17	123	\N	\N
871	\N	26.5	35	105	7.65000000000000036	4.62000000000000011
872	4.95000000000000018	\N	29	\N	\N	\N
873	4.32000000000000028	\N	15	\N	\N	\N
874	5.37999999999999989	27	25	96	8.15000000000000036	5.01999999999999957
875	5.25	\N	30	\N	\N	\N
876	4.95999999999999996	24	27	102	7.65000000000000036	4.44000000000000039
877	4.65000000000000036	32	20	119	\N	\N
878	4.61000000000000032	32	21	119	6.63999999999999968	4.07000000000000028
879	4.82000000000000028	29.5	22	107	7.13999999999999968	4.5
880	5.30999999999999961	23.5	19	102	7.87000000000000011	4.79999999999999982
881	4.76999999999999957	38	27	121	\N	\N
882	4.5	\N	\N	\N	\N	\N
883	5.40000000000000036	28.5	\N	113	7.82000000000000028	4.67999999999999972
884	\N	\N	27	\N	\N	\N
885	4.95000000000000018	28.5	27	107	7.58000000000000007	4.70999999999999996
886	4.45999999999999996	32.5	13	120	\N	\N
887	4.74000000000000021	33.5	22	116	\N	\N
888	\N	\N	\N	\N	\N	\N
889	4.54000000000000004	\N	\N	\N	\N	\N
890	5.20999999999999996	32	42	103	7.28000000000000025	4.5
891	5.09999999999999964	29	\N	104	7.95000000000000018	4.69000000000000039
892	\N	\N	\N	\N	\N	\N
893	\N	\N	\N	\N	\N	\N
894	4.45999999999999996	33.5	15	120	6.87000000000000011	4.40000000000000036
895	4.65000000000000036	38.5	\N	122	\N	\N
896	5.08999999999999986	33.5	25	111	7.5	4.69000000000000039
897	4.54999999999999982	33.5	17	116	6.91000000000000014	4.19000000000000039
898	\N	\N	26	\N	\N	\N
899	\N	\N	24	\N	\N	\N
900	4.69000000000000039	\N	15	\N	\N	\N
901	4.50999999999999979	36.5	11	\N	\N	\N
902	4.40000000000000036	36.5	16	128	6.65000000000000036	4.15000000000000036
903	4.70000000000000018	29.5	12	115	\N	\N
904	5.25999999999999979	31.5	\N	108	7.79999999999999982	4.83000000000000007
905	4.42999999999999972	31	15	110	6.87999999999999989	4.41000000000000014
906	4.53000000000000025	34	\N	121	\N	\N
907	4.55999999999999961	34	13	123	\N	\N
908	4.87999999999999989	\N	23	\N	\N	\N
909	4.91999999999999993	31	\N	111	7.08999999999999986	4.28000000000000025
910	\N	32	21	113	7.45999999999999996	4.70000000000000018
911	4.90000000000000036	26	\N	\N	\N	\N
912	4.75	32	28	114	7.03000000000000025	4.25
913	4.54000000000000004	34.5	18	121	6.92999999999999972	4.28000000000000025
914	\N	\N	14	\N	\N	\N
915	4.76999999999999957	\N	27	\N	\N	\N
916	4.51999999999999957	40	14	129	\N	4.33999999999999986
917	4.75	32	15	120	7	4.40000000000000036
918	4.55999999999999961	34.5	16	124	7.20000000000000018	4.40000000000000036
919	4.83000000000000007	30.5	\N	114	7.28000000000000025	4.41000000000000014
920	5.16000000000000014	26	35	100	7.76999999999999957	4.79000000000000004
921	5.37999999999999989	26	19	106	7.41000000000000014	4.70999999999999996
922	5.37000000000000011	23.5	\N	96	7.95000000000000018	4.83000000000000007
923	5.24000000000000021	26.5	\N	110	7.62000000000000011	4.58999999999999986
924	5.08999999999999986	31	\N	112	7.5	4.53000000000000025
925	4.87999999999999989	28.5	\N	101	7.28000000000000025	4.32000000000000028
926	4.62999999999999989	\N	19	\N	\N	\N
927	5.21999999999999975	33.5	35	113	\N	4.76999999999999957
928	4.50999999999999979	\N	\N	\N	\N	\N
929	4.49000000000000021	37.5	12	130	6.96999999999999975	4.5
930	4.61000000000000032	29.5	\N	\N	\N	\N
931	4.80999999999999961	31	18	110	7.16999999999999993	4.23000000000000043
932	4.87000000000000011	32.5	\N	110	7.62999999999999989	4.65000000000000036
933	5.28000000000000025	23.5	18	101	7.95000000000000018	4.75
934	4.54000000000000004	35	18	118	6.90000000000000036	4.28000000000000025
935	4.87000000000000011	\N	28	\N	\N	\N
936	4.48000000000000043	33.5	16	113	\N	4.45000000000000018
937	4.59999999999999964	40.5	15	134	\N	4.36000000000000032
938	4.54000000000000004	35.5	18	124	6.57000000000000028	4.11000000000000032
939	4.53000000000000025	39.5	\N	124	\N	4.28000000000000025
940	4.67999999999999972	31	\N	112	\N	\N
941	5.24000000000000021	30.5	\N	99	\N	\N
942	5.24000000000000021	29	30	114	7.45000000000000018	4.83999999999999986
943	4.91999999999999993	29	\N	116	\N	\N
944	4.74000000000000021	36	\N	123	7.15000000000000036	4.20000000000000018
945	4.63999999999999968	38	4	124	6.28000000000000025	3.93999999999999995
945	4.74000000000000021	27	16	111	7.5	4.75
946	4.58000000000000007	41.5	\N	131	6.84999999999999964	4.28000000000000025
947	4.55999999999999961	35.5	16	125	\N	\N
948	5.05999999999999961	32.5	\N	111	7.67999999999999972	4.55999999999999961
949	4.62999999999999989	32.5	6	117	7.00999999999999979	4.15000000000000036
950	\N	33	10	120	\N	\N
951	\N	\N	\N	\N	\N	\N
952	\N	\N	\N	\N	\N	\N
953	\N	\N	\N	\N	\N	\N
954	5.40000000000000036	28	\N	109	7.70000000000000018	4.90000000000000036
955	4.37000000000000011	30.5	15	124	\N	\N
956	5.09999999999999964	\N	41	\N	\N	\N
957	4.71999999999999975	32.5	19	115	7.20000000000000018	4.40000000000000036
958	4.57000000000000028	35.5	15	120	\N	4.40000000000000036
959	4.54000000000000004	32	12	\N	\N	\N
960	4.50999999999999979	33	14	119	7	4.28000000000000025
961	4.62999999999999989	33	\N	\N	\N	\N
962	4.59999999999999964	31.5	18	118	\N	\N
963	4.32000000000000028	39	16	136	\N	\N
964	4.63999999999999968	38.5	21	119	6.90000000000000036	4.28000000000000025
965	4.69000000000000039	33	25	121	6.98000000000000043	4.17999999999999972
966	4.54000000000000004	34.5	14	120	7.11000000000000032	4.32000000000000028
967	\N	35	13	120	7.25	4.37000000000000011
968	4.42999999999999972	38	15	129	7.24000000000000021	4.41000000000000014
969	5.33999999999999986	24.5	28	106	8.55000000000000071	5.37999999999999989
970	4.62000000000000011	\N	17	\N	\N	\N
971	4.75	33	20	116	7.5	4.58999999999999986
972	5.42999999999999972	25	20	103	7.90000000000000036	4.80999999999999961
973	4.51999999999999957	33.5	24	118	7.16000000000000014	4.57000000000000028
974	\N	35.5	21	113	\N	\N
975	5.08999999999999986	27	\N	96	7.40000000000000036	4.40000000000000036
976	\N	\N	21	\N	\N	\N
977	5.16000000000000014	30	25	105	\N	\N
978	4.66999999999999993	34	9	114	7.24000000000000021	4.37000000000000011
979	\N	36	16	117	\N	4.26999999999999957
980	5.04999999999999982	34	26	112	7.83000000000000007	4.62999999999999989
981	4.71999999999999975	32	22	109	\N	4.20999999999999996
982	4.54999999999999982	37	9	121	6.88999999999999968	4.23000000000000043
983	5.37000000000000011	\N	26	96	\N	\N
984	\N	\N	15	\N	\N	\N
985	4.53000000000000025	33.5	\N	113	7	\N
986	\N	\N	25	110	\N	\N
987	\N	\N	\N	\N	\N	\N
988	4.79000000000000004	31.5	\N	103	6.94000000000000039	4.15000000000000036
989	4.86000000000000032	29.5	15	\N	\N	\N
990	\N	\N	\N	\N	\N	\N
991	4.51999999999999957	\N	8	120	\N	4.17999999999999972
992	4.59999999999999964	36	23	117	7.37999999999999989	4.48000000000000043
993	4.78000000000000025	33	25	114	6.99000000000000021	4.40000000000000036
994	4.45000000000000018	\N	\N	116	\N	\N
995	5.17999999999999972	27	16	103	7.67999999999999972	4.74000000000000021
996	\N	\N	\N	\N	\N	\N
997	\N	\N	16	\N	\N	\N
998	4.82000000000000028	36	20	131	\N	\N
999	4.76999999999999957	31.5	23	116	6.87999999999999989	4.04000000000000004
1000	5	32	24	112	7.33999999999999986	4.36000000000000032
1001	4.87999999999999989	\N	14	\N	7.40000000000000036	\N
1002	4.82000000000000028	31	12	115	7.20000000000000018	4.45000000000000018
1003	4.50999999999999979	32.5	18	115	7.20999999999999996	4.19000000000000039
1004	\N	\N	25	\N	\N	\N
1005	\N	\N	\N	\N	\N	\N
1006	4.45000000000000018	30	22	114	7.01999999999999957	4.29000000000000004
1007	\N	\N	15	\N	\N	\N
1008	4.71999999999999975	33	\N	117	\N	\N
1009	\N	28	24	103	\N	\N
1010	\N	38.5	10	127	7.05999999999999961	4.30999999999999961
1011	4.51999999999999957	\N	14	118	\N	\N
1012	4.46999999999999975	39.5	15	135	6.82000000000000028	4.13999999999999968
1013	4.62000000000000011	40	23	134	7.01999999999999957	4.26999999999999957
1014	4.58999999999999986	38.5	34	126	6.95000000000000018	4.09999999999999964
1015	\N	\N	\N	\N	\N	\N
1016	4.63999999999999968	32.5	30	116	6.90000000000000036	4.03000000000000025
1017	5.17999999999999972	27	25	109	7.84999999999999964	4.66000000000000014
1018	5.08999999999999986	27	28	102	7.45000000000000018	4.53000000000000025
1019	4.66999999999999993	29.5	\N	120	7.08999999999999986	4.33000000000000007
1020	5.19000000000000039	24.5	28	98	7.96999999999999975	4.82000000000000028
1021	4.83000000000000007	30	10	118	7.09999999999999964	4.45999999999999996
1022	5.24000000000000021	\N	20	\N	\N	\N
1023	4.48000000000000043	35	\N	125	\N	\N
1024	4.95000000000000018	31	22	113	7.37000000000000011	4.41999999999999993
1025	4.79000000000000004	33.5	29	116	7.09999999999999964	4.13999999999999968
1026	4.45000000000000018	36.5	19	127	6.94000000000000039	4.08000000000000007
1027	4.41999999999999993	43.5	12	140	6.76999999999999957	4.07000000000000028
1028	4.91999999999999993	31	34	104	7.41000000000000014	4.53000000000000025
1029	\N	32	12	117	\N	4.25
1030	4.65000000000000036	37.5	22	126	\N	\N
1031	4.71999999999999975	35.5	15	118	7.37999999999999989	4.44000000000000039
1032	4.49000000000000021	36.5	19	120	\N	\N
1033	4.75	\N	14	126	7.33000000000000007	4.21999999999999975
1034	4.50999999999999979	39.5	13	128	\N	\N
1035	4.75	33	17	117	7.26999999999999957	4.50999999999999979
1036	\N	\N	\N	\N	\N	\N
1037	4.74000000000000021	29	\N	112	7.19000000000000039	4.44000000000000039
1038	\N	\N	\N	\N	\N	\N
1039	5.15000000000000036	24.5	20	96	8.00999999999999979	4.83000000000000007
1040	4.41999999999999993	41.5	14	126	\N	\N
1041	4.53000000000000025	36	\N	129	7.00999999999999979	\N
1042	4.55999999999999961	34.5	21	121	6.84999999999999964	4.08999999999999986
1043	4.42999999999999972	40.5	21	124	6.92999999999999972	4.23000000000000043
1044	\N	36	11	115	\N	4.21999999999999975
1045	4.48000000000000043	36	18	128	\N	\N
1046	\N	\N	32	\N	\N	\N
1047	5.07000000000000028	28.5	26	105	7.45999999999999996	4.62000000000000011
1048	4.30999999999999961	40	11	135	\N	4.03000000000000025
1049	4.73000000000000043	33	25	113	7.40000000000000036	\N
1050	4.5	37.5	18	124	6.95000000000000018	4.12000000000000011
1051	4.51999999999999957	39	8	122	6.95999999999999996	4.25
1052	5.08000000000000007	25.5	22	101	8.13000000000000078	5.07000000000000028
1053	4.91000000000000014	30	25	118	7.70999999999999996	4.78000000000000025
1054	4.69000000000000039	33.5	22	116	7.03000000000000025	4.37999999999999989
1055	\N	\N	\N	\N	\N	\N
1056	4.66000000000000014	34.5	\N	118	7.08999999999999986	4.30999999999999961
1057	\N	\N	\N	\N	\N	\N
1058	5.16000000000000014	30	26	111	\N	\N
1059	\N	31.5	16	115	\N	\N
1060	4.48000000000000043	37.5	11	\N	\N	\N
1061	4.66000000000000014	36	\N	122	6.88999999999999968	4.12999999999999989
1062	4.5	34.5	\N	124	\N	\N
1063	5.23000000000000043	26.5	20	103	7.95000000000000018	4.91999999999999993
1064	4.57000000000000028	37	14	125	6.75999999999999979	4.15000000000000036
1065	\N	31	25	111	\N	4.37999999999999989
1066	\N	\N	21	\N	\N	\N
1067	4.59999999999999964	39	19	122	7	4.44000000000000039
1068	5.23000000000000043	26	23	107	7.94000000000000039	4.83000000000000007
1069	\N	35	12	124	7.08999999999999986	4.23000000000000043
1070	4.29999999999999982	41	16	130	7.01999999999999957	4.19000000000000039
1071	5.23000000000000043	28	21	105	7.87999999999999989	4.80999999999999961
1072	4.63999999999999968	33.5	16	116	6.88999999999999968	4.08999999999999986
1073	4.95999999999999996	29	24	118	7.44000000000000039	4.40000000000000036
1074	4.80999999999999961	33.5	20	119	\N	\N
1075	4.41000000000000014	37.5	16	120	\N	4.42999999999999972
1076	4.59999999999999964	\N	24	118	\N	\N
1077	\N	\N	\N	\N	\N	\N
1078	\N	\N	8	\N	\N	\N
1079	4.42999999999999972	38	13	121	7	4.21999999999999975
1080	4.54999999999999982	31.5	\N	120	7	4.30999999999999961
1081	5.19000000000000039	\N	21	\N	\N	\N
1082	5.28000000000000025	25.5	\N	99	7.69000000000000039	4.76999999999999957
1083	\N	\N	\N	\N	\N	\N
1084	\N	\N	16	\N	\N	\N
1085	4.65000000000000036	33	20	119	7.37999999999999989	4.37999999999999989
1086	5.20000000000000018	\N	22	\N	\N	\N
1087	4.5	39.5	20	127	6.80999999999999961	4.21999999999999975
1088	4.51999999999999957	34	12	117	\N	4.25
1089	4.45000000000000018	37	8	123	7.25	4.58999999999999986
1090	\N	\N	25	\N	7.25999999999999979	4.40000000000000036
1091	4.37000000000000011	\N	18	\N	\N	\N
1092	4.73000000000000043	30.5	\N	116	7.20000000000000018	4.20000000000000018
1093	4.63999999999999968	29.5	\N	115	\N	\N
1094	5.20999999999999996	28.5	19	104	8.26999999999999957	4.87000000000000011
1095	4.73000000000000043	27.5	\N	114	\N	\N
1096	5.20000000000000018	27.5	31	105	7.50999999999999979	4.54000000000000004
1097	4.58000000000000007	36.5	15	126	\N	\N
1098	\N	\N	\N	\N	\N	\N
1099	5.16000000000000014	31	30	109	\N	\N
1100	4.62999999999999989	34.5	17	114	7.45000000000000018	4.29999999999999982
1101	4.48000000000000043	36	17	117	7.03000000000000025	4.20000000000000018
1102	4.58000000000000007	38	26	120	7.25999999999999979	4.29000000000000004
1103	4.58000000000000007	35.5	24	118	7.19000000000000039	4.26999999999999957
1104	\N	\N	\N	\N	\N	\N
1105	4.90000000000000036	29.5	12	110	7.40000000000000036	4.53000000000000025
1106	4.75	29.5	17	111	\N	\N
1107	\N	38	17	123	6.88999999999999968	4.13999999999999968
1108	5.08000000000000007	31	32	115	7.62999999999999989	4.62000000000000011
1109	5	34.5	16	118	7.55999999999999961	4.54999999999999982
1110	4.54999999999999982	36.5	\N	117	6.95999999999999996	\N
1111	4.79000000000000004	35	\N	119	7.44000000000000039	4.41000000000000014
1112	5.25999999999999979	\N	26	90	\N	\N
1113	4.62999999999999989	35	24	114	7.26999999999999957	4.41999999999999993
1114	\N	\N	\N	\N	\N	\N
1115	\N	\N	\N	\N	\N	\N
1116	\N	33	24	117	\N	\N
1117	4.83999999999999986	34	\N	112	7.08999999999999986	4.28000000000000025
1118	4.69000000000000039	35.5	31	119	\N	\N
1119	4.38999999999999968	43.5	15	141	\N	\N
1121	\N	\N	20	\N	\N	\N
1122	4.48000000000000043	\N	14	125	\N	\N
1123	4.98000000000000043	35.5	21	118	\N	\N
1124	\N	\N	\N	\N	\N	\N
1125	4.33000000000000007	36.5	17	119	\N	\N
1126	4.59999999999999964	32.5	18	117	7.15000000000000036	4.32000000000000028
1127	4.57000000000000028	37	16	121	\N	\N
1128	4.41000000000000014	36.5	20	123	6.91000000000000014	4.12000000000000011
1129	4.53000000000000025	38.5	27	122	\N	\N
1130	4.67999999999999972	34.5	9	123	6.95000000000000018	4.08000000000000007
1131	5.04000000000000004	28.5	\N	\N	\N	\N
1132	5.20000000000000018	31	33	108	7.75999999999999979	4.95000000000000018
1133	4.88999999999999968	\N	14	\N	\N	\N
1134	4.49000000000000021	33.5	22	121	\N	\N
1135	5.41000000000000014	24	29	90	8.15000000000000036	5.04000000000000004
1136	4.49000000000000021	34	21	123	\N	\N
1137	4.40000000000000036	40	21	130	\N	\N
1138	5.04000000000000004	35	28	115	7.70000000000000018	4.37999999999999989
1139	4.70000000000000018	37.5	17	123	7.01999999999999957	4.17999999999999972
1140	4.59999999999999964	36	9	121	6.70000000000000018	4.15000000000000036
1141	4.5	36.5	25	119	7.05999999999999961	4.40000000000000036
1142	4.78000000000000025	29.5	26	118	\N	\N
1143	4.48000000000000043	39.5	17	130	7.07000000000000028	4.30999999999999961
1144	4.48000000000000043	37	14	123	6.80999999999999961	4.09999999999999964
1145	5.04999999999999982	29.5	21	103	8.33999999999999986	4.87000000000000011
1146	5.12000000000000011	25.5	35	101	7.83999999999999986	4.83999999999999986
1147	4.75	33.5	13	119	7.08999999999999986	4.29000000000000004
1148	\N	\N	23	\N	\N	\N
1149	\N	25.5	28	102	7.71999999999999975	4.51999999999999957
1150	4.88999999999999968	34	16	116	7.34999999999999964	4.32000000000000028
1151	4.30999999999999961	36.5	15	121	6.95000000000000018	4.15000000000000036
1152	\N	\N	\N	\N	\N	\N
1153	\N	27	22	109	\N	\N
1154	4.45000000000000018	40.5	13	130	7.12000000000000011	4.12000000000000011
1155	4.58999999999999986	34.5	\N	120	7.08999999999999986	4.28000000000000025
1156	\N	\N	\N	\N	\N	\N
1157	5.32000000000000028	29	21	105	8	4.83999999999999986
1158	5.01999999999999957	30.5	17	108	7.5	4.53000000000000025
1159	4.91999999999999993	32.5	19	113	7.21999999999999975	4.58999999999999986
1160	\N	28	29	109	7.76999999999999957	4.62000000000000011
1161	4.41999999999999993	37	20	127	7.32000000000000028	4.15000000000000036
1162	\N	32.5	18	122	7.12000000000000011	\N
1163	4.50999999999999979	38	14	124	6.87999999999999989	4.16000000000000014
1164	\N	\N	20	\N	\N	\N
1165	4.53000000000000025	33.5	15	123	7.08999999999999986	4.45000000000000018
1166	\N	\N	\N	\N	\N	\N
1167	4.42999999999999972	33.5	16	121	7.15000000000000036	4.57000000000000028
1168	4.40000000000000036	36.5	\N	133	6.80999999999999961	4.05999999999999961
1169	4.69000000000000039	33	18	121	\N	\N
1170	4.59999999999999964	30	14	117	7.28000000000000025	4.23000000000000043
1171	4.51999999999999957	38	15	129	7.00999999999999979	4.09999999999999964
1172	4.80999999999999961	33.5	\N	120	7	4.41000000000000014
1173	5.12000000000000011	31.5	\N	110	7.70999999999999996	4.53000000000000025
1174	4.62000000000000011	32.5	23	123	\N	4.37000000000000011
1175	\N	31.5	23	111	7.75	4.82000000000000028
1176	5.26999999999999957	32.5	19	116	7.70999999999999996	4.70999999999999996
1177	\N	\N	25	\N	\N	\N
1178	\N	\N	\N	\N	\N	\N
1179	4.95000000000000018	31.5	\N	111	7.54999999999999982	4.45999999999999996
1180	\N	\N	\N	\N	\N	\N
1181	\N	34.5	16	\N	7.12000000000000011	4.26999999999999957
1182	\N	\N	\N	\N	\N	\N
1183	5.04999999999999982	\N	36	\N	\N	\N
1184	4.5	37.5	\N	134	6.90000000000000036	4.08999999999999986
1185	5.13999999999999968	26.5	22	108	\N	\N
1186	4.53000000000000025	\N	16	\N	\N	\N
1187	4.91000000000000014	30.5	25	117	7.61000000000000032	4.54000000000000004
1188	5.33000000000000007	25	\N	113	\N	4.74000000000000021
1189	4.69000000000000039	31	\N	112	7.03000000000000025	4.12000000000000011
1190	4.54999999999999982	33.5	11	119	7.05999999999999961	4.53000000000000025
1191	4.45000000000000018	39.5	15	120	6.45000000000000018	3.9700000000000002
1191	4.45000000000000018	39.5	15	120	\N	\N
1192	\N	\N	18	\N	\N	\N
1193	4.54000000000000004	36	14	121	6.71999999999999975	4.09999999999999964
1194	4.70000000000000018	36	22	120	7.26999999999999957	4.33999999999999986
1195	5.09999999999999964	27	30	102	8.01999999999999957	4.95000000000000018
1196	4.66999999999999993	35	22	127	7.12999999999999989	4.29000000000000004
1197	4.88999999999999968	31	29	107	8.27999999999999936	4.62000000000000011
1198	5.04999999999999982	33.5	23	111	7.66000000000000014	4.58000000000000007
1199	4.76999999999999957	36	12	\N	\N	4.45999999999999996
1200	4.34999999999999964	37.5	18	125	7.00999999999999979	4.15000000000000036
1201	4.57000000000000028	33	\N	115	7.08999999999999986	4.12000000000000011
1202	4.33000000000000007	40.5	27	134	7.37999999999999989	4.5
1203	4.62999999999999989	37	13	118	7.07000000000000028	4.23000000000000043
1204	5.32000000000000028	36	\N	109	8.07000000000000028	4.75
1205	\N	38.5	\N	118	\N	\N
1206	4.49000000000000021	37	6	125	\N	\N
1207	4.69000000000000039	29.5	16	\N	\N	4.45000000000000018
1208	4.96999999999999975	33.5	\N	116	7.13999999999999968	4.45000000000000018
1209	4.45999999999999996	36.5	12	122	\N	4.29000000000000004
1210	4.62999999999999989	28.5	15	121	\N	\N
1211	\N	\N	27	\N	\N	\N
1212	4.66000000000000014	36.5	22	121	7.16000000000000014	4.11000000000000032
1213	4.53000000000000025	38.5	14	125	6.78000000000000025	4.12999999999999989
1214	4.45999999999999996	34.5	\N	123	\N	\N
1215	4.54999999999999982	36.5	14	120	\N	\N
1216	\N	\N	\N	\N	\N	\N
1217	4.62999999999999989	34	8	113	7.20000000000000018	4.40000000000000036
1218	4.91000000000000014	28	19	\N	7.45000000000000018	4.42999999999999972
1219	4.82000000000000028	35.5	18	118	6.95000000000000018	4.23000000000000043
1220	\N	\N	27	114	8.07000000000000028	4.5
1221	4.58000000000000007	33.5	\N	122	7.25	4.25999999999999979
1222	\N	36	32	120	\N	\N
1223	4.62999999999999989	34	22	117	7.20999999999999996	4.46999999999999975
1224	4.58000000000000007	29.5	19	114	7.53000000000000025	4.30999999999999961
1225	4.91999999999999993	36.5	\N	115	7.48000000000000043	4.36000000000000032
1226	5.01999999999999957	33	39	112	8.0600000000000005	4.94000000000000039
1227	4.46999999999999975	36.5	17	120	6.82000000000000028	4.16000000000000014
1228	5.12999999999999989	27.5	27	98	7.71999999999999975	4.78000000000000025
1229	4.62999999999999989	\N	\N	\N	\N	\N
1230	5.20000000000000018	22.5	20	\N	7.83000000000000007	4.70000000000000018
1231	5.12000000000000011	33.5	16	114	7.61000000000000032	4.70000000000000018
1232	4.83999999999999986	32	\N	\N	\N	\N
1233	4.51999999999999957	35	13	121	\N	\N
1234	\N	\N	25	\N	\N	\N
1235	\N	\N	21	\N	\N	\N
1236	4.57000000000000028	32.5	24	116	\N	\N
1237	5.08999999999999986	27	23	115	7.90000000000000036	5.01999999999999957
1238	4.61000000000000032	31	11	111	\N	\N
1239	\N	35	17	115	6.82000000000000028	3.99000000000000021
1240	4.83000000000000007	34	25	118	7.33999999999999986	4.30999999999999961
1241	4.73000000000000043	32	15	109	7.15000000000000036	4.38999999999999968
1242	4.44000000000000039	39	\N	130	\N	4.13999999999999968
1243	4.58999999999999986	35	7	116	6.79999999999999982	4.19000000000000039
1244	4.58000000000000007	30.5	13	124	7.21999999999999975	4.28000000000000025
1245	5.29999999999999982	28.5	23	110	7.69000000000000039	4.51999999999999957
1246	5.20999999999999996	30.5	18	108	7.75	4.75999999999999979
1247	5.15000000000000036	\N	24	\N	7.80999999999999961	4.76999999999999957
1248	4.91000000000000014	33	\N	116	7.09999999999999964	4.29000000000000004
1249	5.29000000000000004	27.5	28	101	7.88999999999999968	4.70000000000000018
1250	4.70999999999999996	33.5	\N	115	7.15000000000000036	4.30999999999999961
1251	4.48000000000000043	39	15	122	7.03000000000000025	4.13999999999999968
1252	4.49000000000000021	36	20	124	6.88999999999999968	4.19000000000000039
1253	5.00999999999999979	30.5	27	101	7.57000000000000028	4.62000000000000011
1254	4.36000000000000032	39.5	11	126	7.03000000000000025	4.13999999999999968
1255	4.46999999999999975	30	21	116	7.37000000000000011	4.62999999999999989
1256	\N	28	27	108	7.76999999999999957	4.69000000000000039
1257	\N	33	21	120	7.26999999999999957	4.33999999999999986
1258	\N	\N	\N	\N	\N	\N
1259	\N	\N	\N	\N	\N	\N
1260	4.91000000000000014	29.5	\N	106	7.50999999999999979	4.53000000000000025
1261	4.57000000000000028	37.5	14	117	6.96999999999999975	4.28000000000000025
1262	4.66000000000000014	35	15	117	7.32000000000000028	4.40000000000000036
1263	5.12999999999999989	29	28	101	\N	4.73000000000000043
1264	4.38999999999999968	40.5	11	135	7	4.15000000000000036
1265	4.69000000000000039	39	15	123	\N	4.23000000000000043
1266	4.62999999999999989	32.5	19	110	7.32000000000000028	4.33000000000000007
1267	4.46999999999999975	34.5	14	122	7.54999999999999982	4.48000000000000043
1268	4.91999999999999993	32	15	108	7.08000000000000007	4.46999999999999975
1269	\N	33	11	121	7.08999999999999986	4.37000000000000011
1270	4.69000000000000039	31.5	25	118	6.75	4.32000000000000028
1271	4.66000000000000014	29.5	16	119	7.07000000000000028	4.33000000000000007
1272	4.75	31.5	17	113	7.19000000000000039	4.30999999999999961
1273	4.62000000000000011	33.5	\N	118	6.65000000000000036	4.04999999999999982
1274	4.80999999999999961	31	\N	110	7.28000000000000025	4.33000000000000007
1275	4.50999999999999979	36	27	123	\N	\N
1276	4.41000000000000014	36	21	125	7	4.29000000000000004
1277	4.83000000000000007	\N	17	\N	\N	\N
1278	5.26999999999999957	30.5	23	111	8.00999999999999979	5
1279	4.76999999999999957	27.5	\N	109	7.05999999999999961	4.36000000000000032
1280	4.62999999999999989	37	24	125	7.20999999999999996	4.28000000000000025
1281	\N	\N	22	\N	\N	\N
1282	\N	\N	\N	\N	\N	\N
1283	\N	\N	24	\N	\N	\N
1284	\N	42	\N	136	6.62999999999999989	4.00999999999999979
1285	4.44000000000000039	39.5	8	131	\N	\N
1286	4.57000000000000028	38.5	19	119	6.87000000000000011	4.03000000000000025
1287	\N	\N	\N	\N	\N	\N
1288	4.41999999999999993	44	21	141	\N	\N
1289	\N	\N	\N	\N	\N	\N
1290	4.92999999999999972	32	23	115	7.45000000000000018	4.33000000000000007
1291	\N	\N	\N	\N	\N	\N
1292	4.57000000000000028	37.5	31	122	6.94000000000000039	4.13999999999999968
1293	5.04999999999999982	28.5	26	105	7.87999999999999989	5.04999999999999982
1294	\N	\N	\N	\N	\N	\N
1295	4.66999999999999993	36.5	19	122	7.20999999999999996	4.25
1296	5.23000000000000043	\N	\N	\N	\N	\N
1297	4.62999999999999989	32.5	16	119	\N	4.66000000000000014
1298	4.46999999999999975	33.5	22	\N	\N	\N
1299	4.42999999999999972	43	18	133	6.84999999999999964	4.13999999999999968
1300	4.88999999999999968	31	24	117	7.17999999999999972	4.37999999999999989
1301	4.45000000000000018	38.5	13	125	7.40000000000000036	4.44000000000000039
1302	\N	37	6	117	7.07000000000000028	4.25999999999999979
1303	4.38999999999999968	33.5	19	113	\N	\N
1304	4.41999999999999993	39.5	22	118	7.07000000000000028	4.16999999999999993
1305	5.04000000000000004	29.5	28	107	\N	4.54999999999999982
1306	4.57000000000000028	36	17	130	7	4.16000000000000014
1307	4.37000000000000011	\N	\N	\N	\N	\N
1308	4.58000000000000007	36.5	\N	118	7.00999999999999979	4.25
1309	4.63999999999999968	\N	17	\N	\N	\N
1310	5.12000000000000011	28	23	100	8.00999999999999979	4.79000000000000004
1311	4.83000000000000007	30.5	\N	112	\N	\N
1312	4.50999999999999979	33	19	121	7.44000000000000039	4.44000000000000039
1313	\N	\N	\N	\N	\N	\N
1314	4.51999999999999957	34.5	22	118	\N	\N
1315	4.55999999999999961	29	\N	113	7.20000000000000018	4.40000000000000036
1316	\N	36	18	127	\N	\N
1317	\N	32	\N	117	\N	\N
1318	4.55999999999999961	36.5	9	121	7.08000000000000007	4.20000000000000018
1319	4.58999999999999986	30.5	18	116	6.94000000000000039	4.11000000000000032
1320	5.28000000000000025	27.5	22	112	7.53000000000000025	4.37000000000000011
1321	4.62999999999999989	32.5	\N	117	\N	\N
1322	4.29000000000000004	34.5	19	122	7	4.15000000000000036
1323	4.62999999999999989	33.5	17	121	7.07000000000000028	4.37000000000000011
1324	5.00999999999999979	32	30	118	7.65000000000000036	4.53000000000000025
1325	4.78000000000000025	34	24	118	7.12999999999999989	4.57000000000000028
1326	4.50999999999999979	39.5	18	120	7.30999999999999961	4.30999999999999961
1327	5.59999999999999964	24.5	\N	92	\N	\N
1328	5.16999999999999993	34	26	115	\N	\N
1329	4.98000000000000043	\N	27	\N	\N	\N
1330	4.62000000000000011	34.5	\N	120	\N	\N
1331	4.5	40	11	128	\N	\N
1332	4.46999999999999975	35.5	20	122	\N	4.41999999999999993
1333	4.92999999999999972	31	25	115	7.44000000000000039	4.42999999999999972
1334	5.20999999999999996	24.5	26	104	\N	\N
1335	4.61000000000000032	36	19	128	\N	4.19000000000000039
1336	4.55999999999999961	\N	\N	\N	\N	\N
1337	4.58999999999999986	33	12	120	7.00999999999999979	4.29999999999999982
1338	4.73000000000000043	30.5	16	115	\N	\N
1339	4.66999999999999993	33.5	26	119	6.92999999999999972	4.33999999999999986
1340	\N	\N	15	\N	\N	\N
1341	4.5	\N	10	\N	\N	\N
1342	\N	\N	\N	\N	\N	\N
1343	\N	\N	\N	\N	\N	\N
1344	4.45999999999999996	39.5	12	128	6.95000000000000018	4.12999999999999989
1345	4.65000000000000036	32.5	24	115	7	4.30999999999999961
1346	4.62000000000000011	36	11	123	7.34999999999999964	4.5
1347	5.09999999999999964	\N	23	\N	\N	\N
1348	4.5	39.5	16	125	\N	\N
1349	4.57000000000000028	39	12	122	6.96999999999999975	4.25
1350	4.80999999999999961	32.5	19	120	\N	\N
1351	\N	\N	\N	\N	\N	\N
1352	4.83999999999999986	32	16	121	\N	\N
1353	4.90000000000000036	29	\N	107	7.76999999999999957	4.66999999999999993
1354	\N	\N	\N	\N	\N	\N
1355	\N	\N	\N	\N	\N	\N
1356	\N	\N	13	\N	\N	\N
1357	4.50999999999999979	32.5	14	121	7.07000000000000028	4.24000000000000021
1358	\N	\N	\N	\N	\N	\N
1359	\N	\N	\N	\N	\N	\N
1360	4.54000000000000004	\N	\N	\N	\N	\N
1361	4.71999999999999975	35.5	16	123	\N	\N
1362	5.16000000000000014	27	28	108	8.22000000000000064	4.79000000000000004
1363	4.73000000000000043	32.5	13	110	7.41000000000000014	4.37000000000000011
1364	4.74000000000000021	32.5	23	115	7.08000000000000007	4.45999999999999996
1365	4.69000000000000039	35	\N	125	7.33000000000000007	4.50999999999999979
1366	4.62000000000000011	31.5	\N	115	6.80999999999999961	4.01999999999999957
1367	4.45999999999999996	33.5	20	122	\N	\N
1368	\N	\N	\N	\N	\N	\N
1369	\N	\N	20	\N	\N	\N
1370	\N	\N	\N	\N	\N	\N
1371	4.41999999999999993	37.5	20	120	\N	\N
1372	4.54999999999999982	38	\N	126	\N	\N
1373	\N	\N	\N	\N	\N	\N
1374	4.73000000000000043	38.5	23	124	7.20000000000000018	4.33000000000000007
1375	\N	\N	\N	\N	\N	\N
1376	5.04999999999999982	\N	\N	\N	\N	\N
1377	\N	\N	\N	\N	\N	\N
1378	4.45000000000000018	41	20	138	\N	\N
1379	5.29000000000000004	25	26	101	\N	\N
1380	\N	35	10	126	6.87999999999999989	4.30999999999999961
1381	4.41999999999999993	40.5	19	126	\N	\N
1382	4.70999999999999996	33.5	21	118	\N	\N
1383	4.92999999999999972	30	30	111	7.25999999999999979	4.45999999999999996
1384	4.45999999999999996	39.5	13	126	\N	\N
1385	5.20999999999999996	27	22	99	8.07000000000000028	4.82000000000000028
1386	4.88999999999999968	29	21	116	\N	\N
1387	4.95000000000000018	32	\N	114	7.5	4.62000000000000011
1388	\N	\N	11	\N	\N	\N
1389	4.57000000000000028	36	\N	126	\N	\N
1390	4.45000000000000018	36	\N	121	7.28000000000000025	4.62000000000000011
1391	4.59999999999999964	34.5	24	125	\N	\N
1392	5.26999999999999957	\N	25	\N	\N	\N
1393	4.58000000000000007	33.5	\N	119	7.17999999999999972	4.32000000000000028
1394	5.17999999999999972	27	21	109	7.75	4.92999999999999972
1395	4.63999999999999968	34.5	\N	\N	\N	\N
1396	5	28	\N	109	7.12999999999999989	4.37000000000000011
1397	5.04000000000000004	\N	21	\N	\N	\N
1398	\N	\N	14	\N	\N	\N
1399	4.82000000000000028	\N	27	\N	\N	4.51999999999999957
1400	4.54000000000000004	35	14	124	7.08000000000000007	4.58999999999999986
1401	4.38999999999999968	35.5	11	124	\N	\N
1402	4.75	\N	32	\N	\N	\N
1403	4.54000000000000004	35.5	\N	\N	\N	\N
1404	5.12000000000000011	28	24	111	7.95000000000000018	4.86000000000000032
1405	\N	\N	21	\N	\N	\N
1406	4.71999999999999975	35.5	25	115	7.15000000000000036	4.34999999999999964
1407	\N	\N	\N	\N	\N	\N
1408	\N	\N	\N	\N	\N	\N
1409	4.53000000000000025	41	23	131	7.19000000000000039	\N
1410	4.84999999999999964	31	14	115	\N	\N
1411	\N	\N	23	\N	\N	\N
1412	4.54000000000000004	38	\N	127	\N	\N
1413	5.01999999999999957	29.5	23	114	\N	\N
1414	4.49000000000000021	42	17	134	\N	\N
1415	5.51999999999999957	25	21	\N	\N	\N
1416	4.38999999999999968	35.5	\N	123	7.12999999999999989	4.20000000000000018
1417	\N	\N	\N	\N	\N	\N
1418	4.88999999999999968	27.5	\N	110	7.5	4.75
1419	\N	\N	\N	\N	\N	\N
1420	4.59999999999999964	39.5	15	123	\N	\N
1421	4.79999999999999982	34	15	125	6.87000000000000011	4.29999999999999982
1422	5.01999999999999957	27.5	24	\N	\N	4.73000000000000043
1423	5.04000000000000004	32.5	17	117	7.33999999999999986	4.45999999999999996
1424	4.41000000000000014	37	20	125	\N	\N
1425	5.07000000000000028	31	\N	112	7.42999999999999972	4.51999999999999957
1426	4.57000000000000028	40	7	\N	\N	\N
1427	5.15000000000000036	\N	21	\N	\N	\N
1428	5.00999999999999979	30	\N	111	7.26999999999999957	4.50999999999999979
1429	4.58999999999999986	34	\N	118	7.13999999999999968	\N
1430	4.66999999999999993	35.5	\N	122	\N	4.26999999999999957
1431	4.45999999999999996	35.5	\N	123	6.94000000000000039	4.36000000000000032
1432	\N	\N	\N	\N	\N	\N
1433	4.79000000000000004	\N	23	\N	7.96999999999999975	5.00999999999999979
1434	4.59999999999999964	36	22	127	7.33000000000000007	4.54999999999999982
1435	4.91999999999999993	32	\N	124	6.91000000000000014	4.12999999999999989
1436	4.82000000000000028	36	23	125	\N	\N
1437	4.38999999999999968	35	16	118	\N	\N
1438	4.59999999999999964	32	17	119	6.80999999999999961	4.08000000000000007
1439	\N	\N	25	\N	\N	\N
1440	4.48000000000000043	37.5	17	124	7.25999999999999979	\N
1441	\N	\N	\N	\N	\N	\N
1442	4.62000000000000011	\N	13	\N	\N	\N
1443	4.87000000000000011	30.5	22	113	7.12999999999999989	4.33999999999999986
1444	\N	34	20	120	\N	\N
1445	4.29000000000000004	\N	21	\N	\N	\N
1446	4.46999999999999975	34	\N	125	7.30999999999999961	4.45999999999999996
1447	\N	\N	11	\N	\N	\N
1448	5.13999999999999968	29.5	33	102	7.71999999999999975	\N
1449	4.88999999999999968	30	27	114	7.66000000000000014	4.49000000000000021
1450	\N	\N	15	\N	\N	\N
1451	4.51999999999999957	41	14	133	7.15000000000000036	4.26999999999999957
1452	5.5	\N	33	\N	\N	\N
1453	5.09999999999999964	29.5	20	103	\N	\N
1454	4.69000000000000039	33	18	111	7.37999999999999989	4.32000000000000028
1455	4.66000000000000014	36	\N	122	6.83000000000000007	4.32000000000000028
1456	4.54999999999999982	39	15	123	\N	4.03000000000000025
1457	\N	35.5	\N	117	\N	\N
1458	5.16000000000000014	28	21	112	8.01999999999999957	4.86000000000000032
1459	4.38999999999999968	37.5	20	127	\N	\N
1460	5.17999999999999972	30	23	110	7.45000000000000018	4.59999999999999964
1461	4.67999999999999972	35.5	\N	123	7.05999999999999961	4.45999999999999996
1462	4.62000000000000011	38.5	18	126	7.12000000000000011	4.40000000000000036
1463	5.25999999999999979	33	27	105	8.41000000000000014	4.87999999999999989
1464	\N	\N	\N	\N	\N	\N
1465	4.70000000000000018	33	\N	125	7.32000000000000028	4.30999999999999961
1466	4.42999999999999972	38.5	\N	122	7.07000000000000028	4.20999999999999996
1467	4.59999999999999964	32.5	17	114	\N	\N
1468	\N	\N	21	\N	\N	\N
1469	4.88999999999999968	28	\N	113	\N	\N
1470	4.61000000000000032	36.5	9	124	7.00999999999999979	4.12000000000000011
1471	\N	\N	\N	\N	\N	\N
1472	4.48000000000000043	\N	12	\N	\N	\N
1473	4.66000000000000014	33.5	21	116	7.25	4.28000000000000025
1474	4.55999999999999961	33	30	120	\N	\N
1475	\N	\N	\N	\N	\N	\N
1476	4.58999999999999986	35	\N	125	\N	\N
1477	4.48000000000000043	37	15	128	\N	\N
1478	4.51999999999999957	\N	\N	\N	\N	\N
1479	5.07000000000000028	\N	22	\N	8.02999999999999936	\N
1480	4.44000000000000039	36	22	132	7.08999999999999986	4.17999999999999972
1481	4.26999999999999957	42	\N	131	\N	\N
1482	5.33999999999999986	32	\N	108	8.14000000000000057	4.65000000000000036
1483	5.21999999999999975	27	25	94	8.02999999999999936	4.87000000000000011
1484	5.07000000000000028	31	27	115	7.95000000000000018	\N
1485	4.57000000000000028	35	\N	122	7.07000000000000028	4.26999999999999957
1486	5.23000000000000043	26	28	98	7.83000000000000007	5.01999999999999957
1487	4.5	36	\N	117	\N	\N
1488	4.42999999999999972	37.5	\N	126	\N	\N
1489	\N	\N	\N	\N	\N	\N
1490	\N	\N	\N	\N	\N	\N
1491	4.71999999999999975	29	\N	119	\N	\N
1492	4.45000000000000018	35	\N	120	\N	4.53000000000000025
1493	\N	\N	17	\N	\N	\N
1494	4.5	36.5	15	124	7.00999999999999979	4.12999999999999989
1495	4.58000000000000007	33	14	124	6.94000000000000039	4.37000000000000011
1496	\N	\N	\N	\N	\N	\N
1497	\N	\N	18	\N	\N	\N
1498	5.25999999999999979	26.5	\N	\N	8.21000000000000085	5.26999999999999957
1499	\N	\N	\N	\N	\N	\N
1500	5.26999999999999957	28.5	24	109	\N	\N
1501	4.67999999999999972	32.5	13	119	7.17999999999999972	4.20999999999999996
1502	4.63999999999999968	34.5	18	\N	\N	\N
1503	4.45999999999999996	39.5	21	136	7.08000000000000007	4.29999999999999982
1504	4.58000000000000007	\N	17	\N	\N	\N
1505	4.45000000000000018	36	\N	124	\N	\N
1506	4.58999999999999986	28	13	121	7.20000000000000018	4.45999999999999996
1507	\N	\N	\N	\N	\N	\N
1508	4.70999999999999996	34	21	125	7.07000000000000028	4.19000000000000039
1509	4.49000000000000021	31	23	121	6.95000000000000018	4.28000000000000025
1510	\N	36	\N	126	\N	\N
1511	\N	\N	\N	\N	\N	\N
1512	\N	\N	\N	\N	\N	\N
1513	4.70000000000000018	37	\N	123	7.44000000000000039	4.41000000000000014
1514	4.5	34.5	11	124	\N	\N
1515	4.65000000000000036	34	\N	125	\N	\N
1516	4.75	28.5	24	112	\N	\N
1517	5.11000000000000032	25.5	\N	107	8.13000000000000078	4.90000000000000036
1518	4.95000000000000018	31	\N	113	7.13999999999999968	4.40000000000000036
1519	5.24000000000000021	30	27	108	\N	\N
1520	\N	37	\N	124	\N	\N
1521	4.57000000000000028	32	16	127	\N	\N
1522	4.74000000000000021	35.5	\N	118	7.20999999999999996	4.51999999999999957
1523	\N	\N	\N	\N	\N	\N
1524	5.00999999999999979	29	23	111	7.38999999999999968	4.38999999999999968
1525	4.58999999999999986	31.5	\N	117	\N	4.41999999999999993
1526	\N	\N	\N	\N	\N	\N
1527	4.83000000000000007	\N	31	\N	7.37000000000000011	\N
1528	4.83000000000000007	31	\N	111	7.03000000000000025	4.12999999999999989
1529	\N	\N	\N	\N	\N	\N
1530	4.58000000000000007	36	\N	121	7.12999999999999989	4.51999999999999957
1531	4.44000000000000039	29.5	\N	116	\N	\N
1532	\N	\N	18	\N	\N	\N
1533	4.62999999999999989	36	19	122	\N	\N
1534	5.34999999999999964	26	20	106	7.87000000000000011	5
1535	4.54999999999999982	36.5	20	124	6.94000000000000039	4.40000000000000036
1536	4.61000000000000032	35.5	12	133	7.08999999999999986	4.12000000000000011
1537	4.37999999999999989	38.5	16	131	6.66000000000000014	4.42999999999999972
1538	5.12999999999999989	34	26	109	7.84999999999999964	4.73000000000000043
1539	\N	\N	\N	\N	\N	\N
1540	4.67999999999999972	33	\N	117	7.25	4.42999999999999972
1541	4.37999999999999989	37	9	124	\N	\N
1542	4.88999999999999968	29	\N	112	7.50999999999999979	4.63999999999999968
1543	\N	\N	\N	\N	\N	\N
1544	4.65000000000000036	33	19	\N	\N	4.37000000000000011
1545	5.04999999999999982	29	29	118	7.88999999999999968	4.50999999999999979
1546	4.51999999999999957	38	21	129	\N	\N
1547	4.41000000000000014	34.5	20	124	\N	\N
1548	\N	\N	44	\N	\N	\N
1549	\N	\N	\N	\N	\N	\N
1550	4.80999999999999961	34	16	119	7.29999999999999982	4.33999999999999986
1551	4.45000000000000018	36	\N	122	6.87000000000000011	4.20999999999999996
1552	4.48000000000000043	41	11	135	\N	\N
1553	\N	\N	27	\N	\N	\N
1554	4.49000000000000021	\N	\N	\N	\N	\N
1555	4.66000000000000014	36	25	123	\N	4.28000000000000025
1556	4.87999999999999989	42	15	124	7	4.32000000000000028
1557	\N	\N	26	\N	\N	\N
1558	4.48000000000000043	37.5	18	123	7	4.34999999999999964
1559	4.57000000000000028	26.5	12	112	6.94000000000000039	4.23000000000000043
1560	4.76999999999999957	32.5	18	109	7.15000000000000036	4.45999999999999996
1561	4.48000000000000043	36	15	132	7.28000000000000025	4.37999999999999989
1562	4.70999999999999996	31	\N	116	7.13999999999999968	4.5
1563	5.05999999999999961	30	26	113	8.00999999999999979	4.91999999999999993
1564	4.69000000000000039	34	13	\N	\N	\N
1565	\N	25.5	23	\N	\N	4.92999999999999972
1566	4.48000000000000043	44.5	\N	139	\N	\N
1567	4.62000000000000011	35	22	118	7.12999999999999989	4.30999999999999961
1568	4.62999999999999989	36	10	122	7.12000000000000011	4.30999999999999961
1569	4.66000000000000014	39	\N	126	7.37999999999999989	4.33000000000000007
1570	4.55999999999999961	30	29	114	7.40000000000000036	4.53000000000000025
1571	5.37000000000000011	25	22	93	8.16999999999999993	5.11000000000000032
1572	4.58999999999999986	33.5	\N	123	7.01999999999999957	\N
1573	\N	\N	\N	\N	\N	\N
1574	4.95999999999999996	\N	23	\N	\N	\N
1575	4.91000000000000014	29.5	24	110	7.75999999999999979	4.62000000000000011
1576	4.51999999999999957	36.5	13	121	6.95999999999999996	4.13999999999999968
1577	4.40000000000000036	35.5	13	119	6.94000000000000039	4.25999999999999979
1578	\N	34.5	20	\N	7.26999999999999957	4.40000000000000036
1579	4.74000000000000021	31	23	120	\N	\N
1580	4.5	35	18	125	\N	\N
1581	4.46999999999999975	42	17	138	7.30999999999999961	4.45999999999999996
1582	4.54000000000000004	34	15	130	\N	\N
1583	4.46999999999999975	38	21	123	\N	\N
1584	4.49000000000000021	36.5	20	129	6.95000000000000018	3.9700000000000002
1585	4.96999999999999975	30.5	20	106	7.33000000000000007	4.70000000000000018
1586	4.83999999999999986	30	20	114	\N	\N
1587	\N	\N	\N	\N	\N	\N
1588	4.69000000000000039	35.5	25	119	7.32000000000000028	4.32000000000000028
1589	4.63999999999999968	40	24	125	7.03000000000000025	4.19000000000000039
1590	4.50999999999999979	35.5	17	124	7.12999999999999989	4.48000000000000043
1591	5.08000000000000007	33	28	113	7.91000000000000014	4.63999999999999968
1592	5.08000000000000007	30.5	24	107	7.57000000000000028	4.69000000000000039
1593	4.69000000000000039	35	21	121	7.37999999999999989	4.41000000000000014
1594	4.65000000000000036	\N	\N	\N	\N	\N
1595	4.41999999999999993	\N	17	\N	\N	\N
1596	4.83000000000000007	31.5	28	115	\N	\N
1597	4.38999999999999968	39	\N	132	\N	\N
1598	5.24000000000000021	30	34	107	8.02999999999999936	4.87000000000000011
1599	5.08999999999999986	\N	\N	\N	\N	\N
1600	4.59999999999999964	32	28	123	7.34999999999999964	4.51999999999999957
1601	4.37000000000000011	41	12	131	\N	\N
1602	4.80999999999999961	28.5	\N	108	7.25999999999999979	4.48000000000000043
1603	5.03000000000000025	27.5	27	106	\N	5.08000000000000007
1604	5.29999999999999982	26	\N	104	8	4.83000000000000007
1605	\N	\N	37	\N	\N	\N
1606	\N	35	15	117	\N	\N
1607	4.62000000000000011	33.5	12	116	\N	\N
1608	4.74000000000000021	29	\N	113	\N	4.49000000000000021
1609	4.88999999999999968	31	26	113	7.45000000000000018	4.37000000000000011
1610	4.66000000000000014	36.5	\N	123	7.50999999999999979	4.62000000000000011
1611	4.45999999999999996	36.5	16	124	7.04999999999999982	4.25999999999999979
1612	4.48000000000000043	35.5	\N	121	\N	\N
1613	\N	\N	\N	\N	\N	\N
1614	4.75	36.5	18	121	7	4.26999999999999957
1615	5.08999999999999986	25	21	116	7.76999999999999957	4.79000000000000004
1616	\N	\N	\N	\N	\N	\N
1617	4.49000000000000021	35	21	127	6.95999999999999996	4.25999999999999979
1618	4.61000000000000032	34.5	19	118	7	4.15000000000000036
1619	4.38999999999999968	36	17	123	7.00999999999999979	4.24000000000000021
1620	4.57000000000000028	34	15	123	\N	4.33999999999999986
1621	4.41999999999999993	34.5	15	129	\N	\N
1622	5.21999999999999975	30.5	21	109	7.58000000000000007	4.66000000000000014
1623	4.50999999999999979	37	24	125	\N	\N
1624	4.45000000000000018	36.5	\N	125	\N	\N
1625	4.48000000000000043	34	\N	127	\N	\N
1626	5.57000000000000028	27	23	97	8.07000000000000028	4.98000000000000043
1627	4.62000000000000011	39	17	126	7.08000000000000007	4.20999999999999996
1628	4.75	\N	\N	\N	\N	\N
1629	4.79999999999999982	34.5	18	114	6.78000000000000025	4.26999999999999957
1630	4.79000000000000004	34.5	25	108	\N	4.71999999999999975
1631	4.79000000000000004	33.5	24	120	6.87000000000000011	4.33999999999999986
1632	\N	\N	18	\N	\N	\N
1633	4.50999999999999979	32	\N	117	\N	\N
1634	4.59999999999999964	35	9	128	7.09999999999999964	\N
1635	4.44000000000000039	39.5	22	133	7.13999999999999968	4.28000000000000025
1636	4.65000000000000036	33	20	122	7.08999999999999986	4.25
1637	4.53000000000000025	38	18	133	6.75999999999999979	4.15000000000000036
1638	\N	\N	\N	\N	\N	\N
1639	\N	\N	16	\N	\N	\N
1640	\N	\N	23	\N	\N	\N
1641	4.34999999999999964	36.5	\N	125	7.28000000000000025	4.36000000000000032
1642	\N	32.5	\N	116	7	4.26999999999999957
1643	4.75999999999999979	32	15	117	7.01999999999999957	4.20999999999999996
1644	4.66000000000000014	35.5	\N	120	7.19000000000000039	4.51999999999999957
1645	4.87999999999999989	31	\N	112	7.37000000000000011	4.42999999999999972
1646	4.87000000000000011	32.5	32	119	7.38999999999999968	\N
1647	5.23000000000000043	25.5	23	102	7.87999999999999989	4.75999999999999979
1648	5.04000000000000004	25.5	17	101	7.71999999999999975	4.78000000000000025
1649	5.04999999999999982	34.5	\N	113	\N	4.83999999999999986
1650	5.32000000000000028	29	26	110	8.25999999999999979	5.07000000000000028
1651	4.62999999999999989	32	21	121	7.07000000000000028	4.26999999999999957
1652	4.90000000000000036	28.5	21	111	7.46999999999999975	4.44000000000000039
1653	4.84999999999999964	36.5	24	121	7.65000000000000036	4.67999999999999972
1654	4.75999999999999979	26	\N	120	7.12000000000000011	4.28000000000000025
1655	4.78000000000000025	34.5	21	120	7.17999999999999972	4.45999999999999996
1656	4.73000000000000043	34.5	20	123	7.25	4.44000000000000039
1657	4.91999999999999993	35	\N	119	\N	\N
1658	4.79000000000000004	33.5	16	114	7.33999999999999986	4.37000000000000011
1659	\N	\N	\N	\N	\N	\N
1660	4.63999999999999968	33	29	127	\N	\N
\.


--
-- Data for Name: draft; Type: TABLE DATA; Schema: public; Owner: football
--

COPY public.draft (player_id, "Round", "Pick_No") FROM stdin;
1661	1	1
1662	1	2
1663	1	3
1664	1	4
1665	1	5
1666	1	6
1667	1	7
64	1	8
101	1	9
13	1	10
1668	1	11
252	1	12
1669	1	13
161	1	14
61	1	15
80	1	16
1670	1	17
1671	1	18
181	1	19
182	1	20
107	1	21
84	1	22
302	1	23
142	1	24
43	1	25
193	1	26
1672	1	27
108	1	28
1673	1	\N
227	1	29
46	1	30
139	1	31
235	2	32
85	2	33
1674	2	34
127	2	35
145	2	36
1675	2	37
1676	2	38
284	2	39
273	2	40
250	2	41
70	2	42
152	2	43
313	2	44
1677	2	45
261	2	46
1678	2	47
285	2	48
256	2	49
201	2	50
118	2	51
1679	2	52
1680	2	53
6	2	54
29	2	55
1681	2	56
1682	2	57
77	2	58
5	2	59
158	2	60
19	2	61
1683	2	62
113	2	63
1684	3	64
221	3	65
304	3	66
62	3	67
254	3	68
1685	3	69
166	3	70
298	3	71
41	3	72
87	3	73
1686	3	74
49	3	75
60	3	76
329	3	77
300	3	78
268	3	79
315	3	80
1687	3	81
58	3	82
150	3	83
106	3	84
212	3	85
53	3	86
311	3	87
96	3	88
122	3	89
1688	3	90
1689	3	\N
34	3	91
324	3	92
169	3	93
310	3	94
110	\N	95
309	\N	96
234	\N	97
1690	\N	98
1691	4	99
65	4	100
292	4	101
243	4	102
79	4	103
331	4	104
92	4	105
220	4	106
216	4	107
282	4	108
1692	4	109
131	4	110
170	4	111
214	4	112
175	4	113
189	4	114
50	4	115
257	4	116
1693	4	117
44	4	118
95	4	119
1694	4	120
18	4	121
21	4	122
124	4	123
45	4	124
218	4	125
260	4	126
1695	4	127
25	4	128
171	4	129
183	4	130
202	\N	131
128	\N	132
259	\N	133
82	\N	134
1696	\N	135
27	\N	136
190	\N	137
1697	\N	138
155	\N	139
271	5	140
264	5	141
22	5	142
1698	5	143
208	5	144
208	3	90
294	5	145
1699	5	146
149	5	147
20	5	148
242	5	149
1700	5	150
75	5	151
144	5	152
280	5	153
240	5	154
1701	5	\N
120	5	155
322	5	156
1702	5	\N
1703	5	157
272	5	158
1704	5	159
35	5	160
318	5	161
133	5	162
78	5	163
308	5	164
1705	5	165
1706	5	166
1707	5	167
88	5	168
1708	5	169
301	\N	170
63	\N	171
132	\N	172
1709	\N	173
67	\N	174
1710	\N	175
148	6	176
126	6	177
1711	6	178
164	6	179
1712	6	180
1713	6	181
1714	6	182
26	6	183
3	6	184
1715	6	185
1716	6	186
291	6	187
1717	6	188
38	6	189
102	6	190
1718	6	191
185	6	192
303	6	193
1719	6	194
1720	6	195
1721	6	196
312	6	197
1722	6	198
69	6	199
219	6	200
9	6	201
333	6	202
226	6	203
191	6	204
211	6	205
1723	6	206
89	6	207
1724	\N	208
52	\N	209
176	\N	210
293	\N	211
104	\N	212
42	\N	213
1725	\N	214
1726	\N	215
805	\N	216
1727	\N	217
269	\N	218
1728	\N	219
99	\N	220
1729	\N	221
1730	7	222
86	7	223
1731	7	224
1732	7	225
1733	7	226
316	7	227
83	7	228
14	7	229
1734	7	230
90	7	231
76	7	232
213	7	233
8	7	234
91	7	235
1735	7	236
177	7	237
1736	7	238
1737	7	239
206	7	240
241	7	241
200	7	242
179	7	243
167	7	244
1738	7	245
204	7	246
1739	7	247
23	7	248
1740	7	249
1741	7	250
1742	7	251
265	7	252
1743	7	253
1744	1	1
1745	1	2
621	1	3
427	1	4
399	1	5
1746	1	6
650	1	7
1747	1	8
584	1	9
1748	1	10
1749	1	11
1750	1	12
570	1	13
348	1	14
462	1	15
1751	1	16
338	1	17
1752	1	18
1753	1	19
1754	1	20
398	1	21
447	1	22
1755	1	23
386	1	24
558	1	25
534	1	26
1756	1	27
377	1	28
548	1	29
1757	1	30
426	1	31
568	1	32
495	2	33
580	2	34
531	2	35
1758	2	36
479	2	37
502	2	38
528	2	39
590	2	40
1759	2	41
651	2	42
480	2	43
420	2	44
595	2	45
655	2	46
358	2	47
1760	2	48
340	2	49
418	2	50
637	2	51
498	2	52
613	2	53
535	2	54
626	2	55
537	2	56
390	2	57
563	2	58
500	2	59
344	2	60
482	2	61
482	3	72
1761	2	62
400	2	63
543	2	64
554	3	65
658	3	66
1762	3	67
605	3	68
501	3	69
412	3	70
421	3	71
618	3	72
654	3	73
660	3	74
575	3	75
341	3	76
443	3	77
648	3	78
609	3	79
349	3	80
539	3	81
451	3	82
576	3	83
1763	3	84
430	3	85
1764	3	86
642	3	87
635	3	88
425	3	89
1765	3	90
474	3	91
515	3	92
335	3	93
611	3	94
1766	3	95
1767	3	96
614	\N	97
1768	\N	98
406	\N	99
602	\N	100
1769	\N	101
481	\N	102
452	\N	103
1770	\N	104
1771	\N	105
392	\N	106
351	\N	107
352	4	108
475	4	109
643	4	110
624	4	111
1772	4	112
472	4	113
559	4	114
477	4	115
507	4	116
574	4	117
1773	4	\N
460	4	118
1774	4	119
433	4	120
652	4	121
599	4	122
546	4	123
572	4	124
1775	4	125
657	4	126
577	4	127
523	4	128
1776	4	\N
596	4	129
1777	4	130
486	4	131
565	4	132
612	4	133
653	4	134
404	4	135
445	4	136
347	4	137
437	\N	138
378	\N	139
429	4	140
444	\N	141
639	\N	142
521	\N	143
1778	\N	144
371	5	145
1779	5	146
540	5	147
365	5	148
493	5	149
512	5	150
496	5	151
411	5	152
413	5	153
606	5	154
363	5	155
456	5	156
459	5	157
442	5	158
415	5	159
473	5	160
488	5	161
536	5	162
538	5	163
342	5	164
1780	5	165
436	5	166
542	5	167
510	5	168
1781	5	169
1782	5	\N
334	5	170
560	5	171
533	5	172
339	5	173
339	4	111
591	5	174
1783	5	175
1784	\N	176
617	\N	177
1785	\N	178
1786	\N	179
469	\N	180
405	\N	181
1787	\N	182
1788	\N	183
1789	\N	184
360	6	185
380	6	186
1790	6	187
532	6	188
601	6	189
619	6	190
659	6	191
1791	6	192
1792	6	193
616	6	194
634	6	195
544	6	196
379	6	197
1793	6	198
586	6	199
353	6	200
457	6	201
615	6	202
1794	6	203
1795	6	204
509	6	205
582	6	206
1796	6	207
1797	6	208
394	6	209
594	6	210
1798	6	\N
530	6	211
1799	6	212
458	6	213
566	6	214
491	6	215
646	\N	216
514	\N	217
1800	\N	218
384	7	219
552	7	220
519	7	221
545	7	222
1801	7	223
440	7	224
581	7	225
1802	7	226
373	7	227
1803	7	228
1804	7	229
448	7	230
1805	7	231
1806	7	232
370	7	233
564	7	234
1807	7	235
1808	7	236
424	7	237
1809	7	238
362	7	239
1810	7	240
1811	7	241
461	7	242
428	7	243
453	7	244
625	7	245
1812	7	246
408	7	247
1813	7	248
374	7	249
1814	7	250
1815	\N	251
401	\N	252
1816	\N	253
851	1	1
1817	1	2
729	1	3
1818	1	4
1819	1	5
1820	1	6
1821	1	7
1821	1	7
928	1	8
856	1	9
909	1	10
1822	1	11
956	1	12
885	1	13
730	1	14
862	1	15
1823	1	16
1824	1	17
1825	1	18
1826	1	19
1827	1	20
893	1	21
749	1	22
990	1	23
1828	1	24
799	1	25
905	1	26
886	1	27
742	1	28
697	1	29
798	1	30
860	1	31
1829	1	32
721	2	33
789	2	34
1830	2	35
1831	2	36
927	2	37
1832	2	38
728	2	39
1833	2	40
835	2	41
769	2	42
818	2	43
661	2	44
808	2	45
932	2	46
832	2	47
877	2	48
770	2	49
980	2	50
861	2	51
662	2	52
1834	2	53
683	2	54
806	2	55
733	2	56
1835	2	57
882	2	58
775	2	59
966	2	60
1836	2	61
1837	2	62
732	2	63
842	2	64
883	3	65
708	3	66
943	3	67
902	3	68
1838	3	69
1839	3	70
764	3	71
924	3	72
679	3	73
712	3	74
874	3	75
911	3	76
797	3	77
815	3	78
773	3	79
899	3	80
766	3	81
1840	3	82
1841	3	83
821	3	84
768	3	85
1842	3	86
830	3	87
698	3	88
876	3	89
920	3	90
1843	3	91
880	3	92
783	3	93
705	3	94
1844	3	95
890	3	96
718	\N	97
665	\N	98
991	\N	99
1845	\N	100
944	4	101
796	4	102
722	4	103
794	4	104
702	4	105
816	4	106
790	4	107
837	4	108
671	4	109
870	4	110
962	4	112
1846	4	113
1847	4	114
803	4	115
672	4	116
976	4	117
676	4	118
974	4	119
739	4	120
819	4	121
992	4	122
931	4	123
967	4	124
846	4	125
1848	4	126
841	4	127
935	4	128
904	4	129
939	4	130
680	4	131
918	4	132
1849	\N	133
741	\N	134
762	\N	135
784	\N	136
917	\N	137
847	5	138
1850	5	139
800	5	140
774	5	141
1851	5	142
1852	5	143
1853	5	144
872	5	145
759	5	146
833	5	147
669	5	148
1854	5	149
677	5	150
780	5	151
726	5	152
725	5	153
869	5	154
896	5	155
765	5	156
720	5	157
692	5	158
1855	5	159
881	5	160
1856	5	161
836	5	162
922	5	163
812	5	164
913	5	165
942	5	166
707	5	167
820	5	168
979	5	169
889	\N	170
975	\N	171
1857	\N	172
952	\N	173
955	\N	174
1858	6	175
828	6	176
744	6	177
912	6	178
873	6	179
1859	6	180
755	6	181
703	6	182
823	6	183
781	6	184
701	6	185
1860	6	186
1861	6	187
1862	6	188
866	6	189
1863	6	190
704	6	191
736	6	192
723	6	193
1864	6	194
1865	6	195
1866	6	196
1867	6	197
858	6	198
751	6	199
1868	6	200
1869	6	201
715	6	202
839	6	203
1870	6	204
993	6	205
1871	6	206
1872	\N	207
1873	\N	208
1874	\N	209
688	\N	210
945	\N	211
921	\N	212
771	\N	213
826	\N	214
1875	\N	215
957	\N	216
689	\N	217
673	\N	218
748	7	219
1876	7	220
1877	7	221
1878	7	222
1879	7	223
985	7	224
1880	7	225
1881	7	226
1882	7	227
674	7	228
1883	7	229
811	7	230
1884	7	231
844	7	232
1885	7	233
926	7	234
1886	7	235
916	7	236
685	7	237
1887	7	238
1888	7	239
814	7	240
936	7	241
875	7	242
1889	7	243
1890	7	244
716	7	245
763	7	246
1891	7	247
1892	7	248
988	7	249
804	7	250
809	\N	251
941	\N	252
940	\N	253
1893	\N	254
1894	\N	255
897	\N	256
1895	1	1
1896	1	2
1311	1	3
1090	1	4
1304	1	5
1172	1	6
1897	1	8
1222	1	9
1043	1	10
1310	1	11
1102	1	12
1305	1	13
1187	1	14
1131	1	15
1041	1	16
1183	1	17
1028	1	18
1898	1	19
1087	1	20
1254	1	21
1073	1	22
1145	1	23
1899	1	24
1036	1	25
1276	1	26
994	1	27
1290	1	28
1900	1	29
1011	1	30
1198	1	31
1129	1	32
1215	2	33
1326	2	34
1283	2	35
1251	2	36
1188	2	37
1094	2	38
1901	2	39
1214	2	40
1245	2	41
1189	2	42
1282	2	43
1902	2	44
1309	2	45
1307	2	46
1023	2	47
1197	2	48
1013	2	49
1903	2	50
1904	2	51
1250	2	52
1252	2	53
1905	2	54
1256	2	55
1906	2	56
1907	2	57
1138	2	58
1048	2	59
996	2	60
1239	2	61
1151	2	62
1288	2	63
1908	2	64
1000	3	65
1165	3	66
1148	3	67
1232	3	68
1223	3	69
1134	3	70
1909	3	\N
1173	3	71
1236	3	72
1210	3	73
1262	3	74
1272	3	75
1200	3	76
1319	3	77
1071	3	78
1191	3	79
1280	3	80
1128	3	81
1068	3	82
1184	3	83
1253	3	84
1910	3	85
1295	3	86
1127	3	87
1016	3	88
1221	3	89
1231	3	91
1081	3	92
1027	3	93
1070	3	94
1325	3	95
1181	\N	96
1086	\N	97
1911	\N	98
1083	\N	99
1117	\N	100
1046	\N	101
1196	\N	102
1045	4	103
1092	4	104
1912	4	105
1061	4	106
1219	4	107
1193	4	108
1314	4	109
1321	4	110
1259	4	111
1192	4	112
1137	4	113
1249	4	114
1205	4	115
1144	4	116
1038	4	117
1096	4	118
1242	4	119
1913	4	120
1300	4	121
1914	4	122
1235	4	123
1132	4	124
1324	4	125
1244	4	126
1915	4	127
1233	4	128
1168	4	129
1292	4	130
1916	4	131
1917	4	132
1274	4	133
1099	4	134
1054	\N	135
1176	\N	136
1212	\N	137
1207	\N	138
1287	5	139
1006	5	140
1105	5	141
1042	5	142
1056	5	143
1918	5	144
1104	5	145
1227	5	146
1178	5	147
1116	5	148
1243	5	149
1179	5	150
1919	5	151
1224	5	152
1230	5	153
1255	5	154
1317	5	155
1141	5	156
1050	5	157
1920	5	158
1058	5	159
1195	5	160
1225	5	161
1265	5	162
1921	5	163
1922	5	164
1153	5	165
1273	5	166
1289	5	167
1294	5	168
1082	5	169
1258	5	170
1264	\N	171
1206	\N	172
1923	\N	173
1924	6	174
1270	6	175
1268	6	176
1122	6	177
1208	6	178
1098	6	179
1012	6	180
1169	6	181
1312	6	182
1925	6	183
1097	6	184
1926	6	185
1927	6	186
1928	6	\N
1929	6	187
1930	6	188
1931	6	189
1296	6	190
1932	6	191
1039	6	192
1293	6	193
1306	6	194
1060	6	195
1007	6	196
1201	6	197
1933	6	198
1113	6	199
1085	6	200
1088	6	201
1237	6	202
1934	6	203
1143	6	204
1935	\N	205
1126	\N	206
1936	\N	207
1937	\N	208
1052	\N	209
1065	\N	210
1004	\N	211
1063	\N	212
1316	\N	213
1938	\N	214
1020	7	215
1939	7	216
1026	7	217
1298	7	218
1112	7	219
1940	7	220
1941	7	221
1942	7	222
1034	7	223
1218	7	224
1164	7	225
1275	7	226
1943	7	227
1277	7	228
1944	7	229
1945	7	230
1946	7	231
1947	7	232
1948	7	233
1103	7	234
1247	7	235
1949	7	236
1110	7	237
1950	7	238
1209	7	239
1017	7	240
1159	7	241
1951	7	242
1952	7	243
1953	7	244
1263	7	245
1228	7	246
1163	\N	247
1204	\N	248
1954	\N	249
1955	\N	250
999	\N	251
1299	\N	252
1030	\N	253
1315	\N	254
1368	1	1
1956	1	2
1552	1	3
1622	1	4
1613	1	5
1461	1	6
1362	1	7
1597	1	8
1957	1	9
1649	1	10
1347	1	11
1958	1	12
1653	1	13
1512	1	14
1492	1	15
1959	1	16
1514	1	17
1484	1	18
1336	1	19
1375	1	20
1581	1	21
1960	1	22
1546	1	23
1591	1	24
1331	1	25
1522	1	26
1360	1	27
1580	1	28
1650	1	29
1477	1	30
1440	1	31
1420	1	32
1464	2	33
1961	2	34
1612	2	35
1533	2	36
1414	2	37
1444	2	38
1475	2	39
1353	2	40
1619	2	41
1962	2	42
1513	2	43
1407	2	44
1505	2	45
1963	2	46
1397	2	47
1616	2	48
1381	2	49
1494	2	50
1408	2	51
1332	2	52
1476	2	53
1964	2	54
1965	2	55
1404	2	56
1489	2	57
1383	2	58
1537	2	59
1632	2	60
1431	2	61
1966	2	62
1967	2	63
1378	2	64
1651	3	65
1437	3	66
1553	3	67
1398	3	68
1519	3	69
1499	3	70
1527	3	71
1448	3	73
1345	3	74
1486	3	75
1633	3	76
1551	3	77
1460	3	78
1660	3	79
1356	3	80
1419	3	81
1433	3	82
1392	3	83
1520	3	84
1354	3	85
1544	3	86
1490	3	87
1422	3	88
1395	3	89
1443	3	90
1338	3	91
1416	3	92
1424	3	93
1406	3	94
1329	3	95
1549	3	96
1569	\N	97
1455	\N	98
1563	\N	99
1547	\N	100
1508	\N	101
1465	\N	102
1617	\N	103
1367	\N	104
1629	\N	105
1571	\N	106
1405	4	107
1376	4	108
1598	4	109
1472	4	110
1511	4	111
1509	4	112
1577	4	113
1427	4	114
1363	4	115
1342	4	116
1968	4	117
1554	4	118
1636	4	119
1567	4	120
1604	4	121
1418	4	122
1969	4	123
1970	4	124
1542	4	125
1458	4	126
1637	4	127
1400	4	128
1379	4	129
1524	4	130
1971	4	131
1417	4	132
1560	4	133
1457	4	134
1972	4	135
1473	4	136
1595	4	137
1601	4	138
1587	\N	139
1579	\N	140
1584	\N	141
1434	\N	142
1358	\N	143
1393	\N	144
1413	\N	145
1351	\N	146
1507	5	147
1588	5	148
1575	5	149
1517	5	150
1583	5	151
1973	5	152
1534	5	153
1974	5	\N
1609	5	154
1439	5	155
1482	5	156
1623	5	157
1447	5	158
1975	5	159
1453	5	160
1496	5	161
1474	5	162
1635	5	163
1642	5	164
1493	5	165
1374	5	166
1428	5	167
1466	5	168
1451	5	169
1976	5	170
1390	5	171
1977	5	172
1541	5	173
1545	5	174
1529	5	175
1978	5	176
1979	5	177
1608	\N	178
1333	\N	179
1328	6	180
1548	6	181
1980	6	182
1981	6	183
1982	6	184
1425	6	185
1438	6	186
1566	6	187
1343	6	188
1523	6	189
1655	6	190
1528	6	191
1983	6	192
1984	6	193
1402	6	194
1463	6	195
1357	6	196
1565	6	197
1985	6	198
1430	6	199
1641	6	200
1578	6	201
1643	6	202
1986	6	203
1987	6	204
1535	6	205
1988	6	206
1470	6	207
1452	6	208
1605	6	209
1638	6	210
1989	6	211
1561	\N	212
1990	\N	213
1611	\N	214
1340	7	215
1391	7	216
1491	7	217
1389	7	218
1607	7	219
1991	7	220
1625	7	221
1349	7	222
1992	7	223
1530	7	224
1646	7	225
1993	7	226
1994	7	227
1471	7	228
1600	7	229
1995	7	230
1996	7	231
1399	7	232
1627	7	233
1497	7	234
1997	7	235
1998	7	236
1999	7	237
2000	7	238
1485	7	239
2001	7	240
1593	7	241
1436	7	242
2002	7	243
1602	7	244
1371	7	245
1568	7	246
2003	\N	247
2004	\N	248
1478	\N	249
1334	\N	250
1610	\N	251
1384	\N	252
2005	\N	253
1631	\N	254
2006	\N	255
\.


--
-- Data for Name: info; Type: TABLE DATA; Schema: public; Owner: football
--

COPY public.info (player_id, "position", "Height", "Weight", "Year") FROM stdin;
1	DE	78	284	2016
2	QB	71	200	2016
3	TE	77	247	2016
4	WR	69	197	2016
5	K	72	207	2016
6	CB	70	190	2016
7	ILB	72	232	2016
8	OT	77	326	2016
9	QB	73	217	2016
10	C	73	294	2016
11	WR	75	196	2016
12	TE	74	230	2016
13	CB	73	199	2016
14	WR	69	182	2016
15	DE	76	285	2016
16	RB	70	228	2016
17	DE	77	264	2016
18	OT	77	321	2016
19	S	71	199	2016
20	OT	77	311	2016
21	DT	73	311	2016
22	DE	74	284	2016
23	C	74	298	2016
24	CB	69	193	2016
25	C	74	302	2016
26	OLB	73	235	2016
27	RB	71	219	2016
28	DE	77	269	2016
29	WR	73	197	2016
30	QB	72	212	2016
31	CB	73	211	2016
32	TE	75	250	2016
33	C	75	303	2016
34	QB	76	231	2016
35	OLB	72	245	2016
36	WR	74	194	2016
37	OLB	73	229	2016
38	CB	71	192	2016
39	S	72	206	2016
40	DE	79	291	2016
41	DE	75	285	2016
42	WR	72	206	2016
43	CB	72	193	2016
44	CB	72	212	2016
45	S	72	199	2016
46	DT	76	323	2016
47	WR	76	234	2016
48	CB	72	192	2016
49	DE	76	251	2016
50	OLB	76	232	2016
51	Pos	\N	\N	2016
52	CB	73	193	2016
53	WR	72	211	2016
54	RB	71	227	2016
55	S	73	218	2016
56	S	72	212	2016
57	OG	78	295	2016
58	OT	77	316	2016
59	DT	75	314	2016
60	OT	77	307	2016
61	WR	71	194	2016
62	DT	74	311	2016
63	RB	70	217	2016
64	OT	78	308	2016
65	QB	76	217	2016
66	WR	71	203	2016
67	OT	76	303	2016
68	RB	68	207	2016
69	WR	75	205	2016
70	DE	75	243	2016
71	DE	75	248	2016
72	K	72	186	2016
73	OLB	73	226	2016
74	CB	72	187	2016
75	OT	76	304	2016
76	ILB	71	243	2016
77	CB	73	201	2016
78	WR	73	188	2016
79	DT	73	293	2016
80	OT	79	310	2016
81	S	72	210	2016
82	RB	70	215	2016
83	P	76	221	2016
84	WR	74	202	2016
85	DE	77	277	2016
86	QB	75	213	2016
87	RB	73	210	2016
88	OT	78	315	2016
89	QB	76	234	2016
90	TE	74	231	2016
91	P	76	209	2016
92	OT	78	310	2016
93	CB	73	188	2016
94	RB	72	225	2016
95	RB	70	192	2016
96	OLB	77	245	2016
97	K	71	183	2016
98	DE	74	271	2016
99	OLB	76	230	2016
100	RB	69	198	2016
101	OLB	78	244	2016
102	ILB	75	249	2016
103	WR	70	193	2016
104	S	72	217	2016
105	OLB	74	240	2016
106	CB	71	187	2016
107	WR	72	186	2016
108	OG	76	312	2016
109	WR	75	220	2016
110	C	78	307	2016
111	QB	76	215	2016
112	OLB	73	242	2016
113	DT	76	287	2016
114	S	74	209	2016
115	OG	75	321	2016
116	TE	77	248	2016
117	FB	74	239	2016
118	QB	76	223	2016
119	P	70	198	2016
120	OT	78	304	2016
121	CB	74	199	2016
122	DT	73	309	2016
123	CB	71	176	2016
124	OT	78	305	2016
125	DT	77	293	2016
126	TE	77	244	2016
127	TE	77	250	2016
128	DT	75	303	2016
129	RB	75	247	2016
130	FB	73	259	2016
131	TE	78	249	2016
132	WR	73	196	2016
133	QB	75	218	2016
134	WR	73	190	2016
135	TE	76	254	2016
136	S	73	201	2016
137	CB	72	201	2016
138	RB	72	230	2016
139	OT	78	324	2016
140	ILB	72	239	2016
141	CB	71	188	2016
142	CB	72	189	2016
143	CB	70	204	2016
144	DT	75	299	2016
145	OLB	73	245	2016
146	DE	76	273	2016
147	OT	77	313	2016
148	FB	73	238	2016
149	DT	76	291	2016
150	OLB	75	259	2016
151	RB	72	238	2016
152	DT	76	314	2016
153	ILB	73	234	2016
154	OT	77	301	2016
155	QB	77	253	2016
156	WR	75	209	2016
157	DT	78	310	2016
158	CB	70	197	2016
159	OLB	73	222	2016
160	CB	69	186	2016
161	S	70	205	2016
162	DE	75	275	2016
163	DE	77	295	2016
164	P	74	212	2016
165	OG	75	317	2016
166	DE	78	285	2016
167	S	76	216	2016
168	C	76	311	2016
169	QB	73	220	2016
170	S	74	217	2016
171	S	70	207	2016
172	ILB	72	236	2016
173	OT	76	335	2016
174	K	73	197	2016
175	ILB	74	243	2016
176	LS	73	240	2016
177	RB	72	209	2016
178	DT	76	311	2016
179	WR	74	203	2016
180	NT	73	320	2016
181	DE	75	269	2016
182	OLB	73	232	2016
183	OT	78	312	2016
184	WR	72	201	2016
185	WR	72	197	2016
186	OLB	75	238	2016
187	S	70	202	2016
188	ILB	73	241	2016
189	WR	74	215	2016
190	DE	78	296	2016
191	S	72	201	2016
192	K	73	214	2016
193	QB	79	244	2016
194	RB	72	223	2016
195	DT	72	287	2016
196	OLB	75	247	2016
197	TE	76	247	2016
198	WR	69	201	2016
199	WR	70	200	2016
200	RB	71	219	2016
201	C	76	299	2016
202	ILB	74	237	2016
203	OT	79	316	2016
204	OLB	72	238	2016
205	NT	75	338	2016
206	DE	78	239	2016
207	TE	77	250	2016
208	OG	76	306	2016
209	WR	76	207	2016
210	ILB	73	248	2016
211	CB	72	182	2016
212	WR	73	201	2016
213	S	72	191	2016
214	WR	72	198	2016
215	P	76	212	2016
216	WR	73	206	2016
217	TE	76	262	2016
218	ILB	73	232	2016
219	OT	78	305	2016
220	CB	71	199	2016
221	DE	79	277	2016
222	S	72	211	2016
223	OT	79	322	2016
224	DE	77	285	2016
225	DE	74	252	2016
226	DE	75	235	2016
227	DT	75	294	2016
228	ILB	73	241	2016
229	WR	74	223	2016
230	P	75	219	2016
231	DE	80	287	2016
232	K	74	186	2016
233	DE	73	246	2016
234	OT	76	314	2016
235	DE	76	273	2016
236	DE	77	265	2016
237	DE	76	273	2016
238	OLB	74	223	2016
239	ILB	70	231	2016
240	WR	73	207	2016
241	WR	74	209	2016
242	RB	70	208	2016
243	ILB	76	254	2016
244	CB	70	181	2016
245	DE	74	265	2016
246	S	75	211	2016
247	QB	74	226	2016
248	RB	72	220	2016
249	CB	72	198	2016
250	ILB	73	247	2016
251	CB	73	209	2016
252	DT	73	299	2016
253	DT	75	327	2016
254	CB	71	182	2016
255	OG	77	294	2016
256	DT	75	307	2016
257	DT	75	303	2016
258	OT	77	324	2016
259	CB	73	171	2016
260	WR	73	203	2016
261	DT	76	307	2016
262	CB	71	192	2016
263	WR	76	206	2016
264	CB	71	185	2016
265	TE	76	253	2016
266	OLB	73	244	2016
267	WR	73	199	2016
268	OG	76	303	2016
269	CB	71	186	2016
270	WR	71	198	2016
271	WR	74	194	2016
272	OT	77	324	2016
273	WR	70	194	2016
274	S	72	216	2016
275	DT	75	298	2016
276	S	74	202	2016
277	CB	72	203	2016
278	C	75	305	2016
279	OT	79	329	2016
280	RB	70	208	2016
281	ILB	75	235	2016
282	CB	71	189	2016
283	OLB	74	223	2016
284	DE	74	251	2016
285	OT	78	301	2016
286	WR	73	206	2016
287	S	71	193	2016
288	OT	78	312	2016
289	QB	77	236	2016
290	OLB	71	227	2016
291	QB	78	234	2016
292	DE	75	271	2016
293	RB	70	207	2016
294	OT	78	313	2016
295	WR	75	212	2016
296	DT	75	286	2016
297	DE	75	253	2016
298	S	74	208	2016
299	RB	72	217	2016
300	OT	77	304	2016
301	OT	77	306	2016
302	WR	74	221	2016
303	OG	76	314	2016
304	C	77	298	2016
305	OT	77	310	2016
306	OG	76	330	2016
307	FB	71	246	2016
308	OT	78	320	2016
309	DT	76	329	2016
310	TE	78	257	2016
311	ILB	74	239	2016
312	FB	73	239	2016
313	DT	77	297	2016
314	RB	68	204	2016
315	DT	75	301	2016
316	OLB	76	267	2016
317	QB	77	237	2016
318	OG	75	298	2016
319	CB	71	193	2016
320	OT	76	301	2016
321	RB	73	220	2016
322	RB	71	220	2016
323	TE	78	257	2016
324	CB	71	197	2016
325	WR	74	229	2016
326	WR	77	224	2016
327	QB	75	231	2016
328	NT	72	318	2016
329	CB	73	204	2016
330	DT	74	291	2016
331	CB	69	183	2016
332	OT	77	328	2016
333	DT	76	277	2016
334	WR	73	189	2017
335	DT	76	304	2017
336	S	72	214	2017
337	WR	75	197	2017
338	DT	75	286	2017
339	CB	75	215	2017
340	OLB	74	253	2017
341	OLB	75	241	2017
342	OG	75	323	2017
343	OG	75	301	2017
344	CB	72	202	2017
345	P	75	210	2017
346	S	70	195	2017
347	OG	80	353	2017
348	DE	75	259	2017
349	DE	76	269	2017
350	QB	74	219	2017
351	ILB	74	243	2017
352	OLB	75	246	2017
353	OT	78	304	2017
354	OT	77	297	2017
355	ILB	72	238	2017
356	WR	73	203	2017
357	OLB	77	250	2017
358	OLB	75	247	2017
359	OG	78	329	2017
360	DT	75	307	2017
361	TE	78	255	2017
362	WR	74	222	2017
363	ILB	72	231	2017
364	DE	76	273	2017
365	ILB	71	238	2017
366	TE	75	254	2017
367	OT	77	273	2017
368	OT	77	316	2017
369	ILB	74	226	2017
370	K	76	199	2017
371	TE	77	246	2017
372	WR	71	182	2017
373	DE	75	242	2017
374	RB	72	218	2017
375	S	73	218	2017
376	TE	75	241	2017
377	DE	78	277	2017
378	WR	75	204	2017
379	CB	75	220	2017
380	S	72	208	2017
381	RB	70	220	2017
382	DT	74	301	2017
383	RB	66	179	2017
384	WR	73	195	2017
385	OG	76	295	2017
386	CB	72	195	2017
387	RB	73	233	2017
388	RB	70	210	2017
389	OG	74	322	2017
390	OLB	75	234	2017
391	TE	75	247	2017
392	WR	74	214	2017
393	OT	79	318	2017
394	WR	75	219	2017
395	ILB	74	235	2017
396	DE	75	271	2017
397	RB	73	208	2017
398	ILB	73	238	2017
399	WR	75	209	2017
400	OG	76	314	2017
401	RB	69	205	2017
402	CB	74	206	2017
403	OT	77	309	2017
404	QB	75	216	2017
405	OLB	75	248	2017
406	CB	74	209	2017
407	OG	76	318	2017
408	WR	74	196	2017
409	WR	73	202	2017
410	DE	75	257	2017
411	CB	70	183	2017
412	C	75	303	2017
413	K	69	167	2017
414	ILB	74	240	2017
415	OG	76	332	2017
416	TE	75	234	2017
417	WR	73	208	2017
418	S	72	199	2017
419	QB	75	232	2017
420	TE	75	239	2017
421	OG	76	305	2017
422	OLB	74	236	2017
423	S	71	205	2017
424	WR	73	194	2017
425	RB	72	233	2017
426	ILB	72	229	2017
427	RB	72	240	2017
428	C	77	307	2017
429	RB	72	215	2017
430	OT	78	302	2017
431	DE	76	272	2017
432	DT	75	310	2017
433	ILB	74	244	2017
434	OG	75	318	2017
435	S	74	218	2017
436	WR	71	191	2017
437	DT	75	302	2017
438	WR	73	209	2017
439	WR	76	218	2017
440	K	72	202	2017
441	CB	72	194	2017
442	CB	72	196	2017
443	DE	77	266	2017
444	WR	74	202	2017
445	OG	76	303	2017
446	ILB	71	242	2017
447	DE	75	253	2017
448	S	76	217	2017
449	WR	73	212	2017
450	RB	67	208	2017
451	WR	71	199	2017
452	DE	76	266	2017
453	DT	74	300	2017
454	TE	76	247	2017
455	S	73	216	2017
456	RB	73	219	2017
457	TE	78	257	2017
458	LS	76	248	2017
459	OT	79	311	2017
460	WR	76	221	2017
461	RB	72	232	2017
462	S	73	206	2017
463	TE	78	251	2017
464	WR	76	221	2017
465	CB	72	197	2017
466	P	72	212	2017
467	RB	70	216	2017
468	RB	70	227	2017
469	OG	75	306	2017
470	S	72	201	2017
471	CB	70	186	2017
472	S	73	214	2017
473	OT	79	298	2017
474	S	73	205	2017
475	DT	75	316	2017
476	S	72	206	2017
477	OG	77	300	2017
478	P	71	194	2017
479	WR	74	201	2017
480	CB	72	186	2017
481	DT	77	304	2017
482	S	73	220	2017
483	DT	78	316	2017
484	DT	73	319	2017
485	RB	69	208	2017
486	DE	77	274	2017
487	WR	71	186	2017
488	ILB	73	238	2017
489	DE	75	265	2017
490	WR	68	178	2017
491	QB	76	214	2017
492	RB	70	214	2017
493	CB	70	184	2017
494	ILB	72	233	2017
495	CB	75	200	2017
496	S	70	201	2017
497	TE	76	247	2017
498	QB	76	233	2017
499	QB	73	219	2017
500	DE	79	289	2017
501	WR	74	204	2017
502	OG	76	309	2017
503	CB	72	189	2017
504	WR	74	226	2017
505	ILB	74	251	2017
506	CB	72	193	2017
507	DE	74	261	2017
508	OT	79	332	2017
509	DT	75	280	2017
510	ILB	75	240	2017
511	OG	77	312	2017
512	TE	77	258	2017
513	QB	75	226	2017
514	OG	76	307	2017
515	CB	70	188	2017
516	CB	67	180	2017
517	QB	75	232	2017
518	RB	69	196	2017
519	S	71	202	2017
520	WR	69	192	2017
521	RB	71	213	2017
522	QB	74	225	2017
523	WR	75	208	2017
524	OG	75	334	2017
525	WR	71	189	2017
526	DE	74	266	2017
527	CB	70	189	2017
528	S	72	210	2017
529	RB	71	202	2017
530	OT	80	307	2017
531	DT	78	295	2017
532	RB	70	214	2017
533	WR	67	173	2017
534	OLB	74	250	2017
535	ILB	74	240	2017
536	RB	69	214	2017
537	S	76	224	2017
538	OLB	72	223	2017
539	CB	72	206	2017
540	OG	75	309	2017
541	WR	72	190	2017
542	DE	75	264	2017
543	OT	77	319	2017
544	DE	75	253	2017
545	CB	70	200	2017
546	S	74	212	2017
547	ILB	72	232	2017
548	TE	76	246	2017
549	WR	71	199	2017
550	LS	74	243	2017
551	DE	73	268	2017
552	DE	75	258	2017
553	RB	71	213	2017
554	DE	75	305	2017
555	C	75	298	2017
556	TE	77	253	2017
557	WR	74	219	2017
558	S	71	213	2017
559	RB	71	233	2017
560	QB	74	226	2017
561	OLB	75	242	2017
562	TE	76	264	2017
563	C	78	310	2017
564	OLB	71	241	2017
565	RB	68	176	2017
566	DT	73	313	2017
567	WR	72	186	2017
568	OT	78	310	2017
569	WR	72	193	2017
570	OLB	73	237	2017
571	RB	68	205	2017
572	OLB	72	230	2017
573	P	75	214	2017
574	WR	75	194	2017
575	OLB	72	232	2017
576	DE	76	248	2017
577	TE	76	270	2017
578	WR	75	220	2017
579	CB	71	189	2017
580	OT	78	322	2017
581	DE	76	280	2017
582	FB	70	231	2017
583	WR	73	216	2017
584	WR	71	188	2017
585	WR	73	213	2017
586	C	76	312	2017
587	WR	72	189	2017
588	QB	75	228	2017
589	QB	75	213	2017
590	WR	71	196	2017
591	TE	77	253	2017
592	WR	70	193	2017
593	WR	77	243	2017
594	OT	77	331	2017
595	TE	78	278	2017
596	OT	78	343	2017
597	CB	69	177	2017
598	DE	75	261	2017
599	OG	76	319	2017
600	OT	82	309	2017
601	DT	73	296	2017
602	TE	75	248	2017
603	RB	71	223	2017
604	WR	73	215	2017
605	DE	75	264	2017
606	TE	77	252	2017
607	WR	75	195	2017
608	FB	72	234	2017
609	WR	71	204	2017
610	CB	73	188	2017
611	CB	71	188	2017
612	WR	68	181	2017
613	CB	72	199	2017
614	CB	73	199	2017
615	OLB	73	243	2017
616	DT	75	304	2017
617	WR	68	181	2017
618	WR	71	203	2017
619	OT	77	311	2017
620	OG	77	315	2017
621	DE	75	273	2017
622	WR	72	205	2017
623	RB	70	190	2017
624	S	72	204	2017
625	CB	72	202	2017
626	DT	75	310	2017
627	C	77	307	2017
628	S	73	206	2017
629	QB	74	222	2017
630	DT	73	331	2017
631	S	73	204	2017
632	OT	79	321	2017
633	K	72	190	2017
634	ILB	73	228	2017
635	DT	75	305	2017
636	P	76	219	2017
637	DE	76	280	2017
638	DT	74	310	2017
639	DT	75	309	2017
640	QB	74	221	2017
641	OLB	76	252	2017
642	QB	77	229	2017
643	WR	72	178	2017
644	OT	79	306	2017
645	CB	71	192	2017
646	CB	72	194	2017
647	WR	68	185	2017
648	OLB	75	244	2017
649	RB	67	190	2017
650	WR	76	218	2017
651	S	73	202	2017
652	RB	71	210	2017
653	RB	72	212	2017
654	DE	76	255	2017
655	CB	73	211	2017
656	WR	69	189	2017
657	CB	73	184	2017
658	CB	75	198	2017
659	S	71	197	2017
660	DT	77	298	2017
661	WR	72	186	2018
662	EDGE	77	253	2018
663	RB	74	213	2018
664	EDGE	74	248	2018
665	TE	75	249	2018
666	CB	71	192	2018
667	QB	72	210	2018
668	QB	77	237	2018
669	S	74	202	2018
670	TE	77	256	2018
671	S	74	198	2018
672	EDGE	76	257	2018
673	DE	78	262	2018
674	WR	76	216	2018
675	DT	76	321	2018
676	CB	72	185	2018
677	ILB	73	248	2018
678	K	70	183	2018
679	OLB	73	229	2018
680	RB	73	228	2018
681	RB	72	233	2018
682	QB	73	224	2018
683	S	74	195	2018
684	TE	75	247	2018
685	FB	74	245	2018
686	EDGE	77	255	2018
687	QB	75	218	2018
688	WR	69	184	2018
689	ILB	74	230	2018
690	S	74	215	2018
691	OT	77	307	2018
692	DE	76	296	2018
693	K	70	208	2018
694	OT	80	345	2018
695	CB	72	198	2018
696	WR	77	214	2018
697	DT	76	291	2018
698	OLB	75	233	2018
699	WR	72	186	2018
700	ILB	73	239	2018
701	WR	74	202	2018
702	WR	71	200	2018
703	CB	73	194	2018
704	WR	75	226	2018
705	OT	78	305	2018
706	LS	73	243	2018
707	K	77	213	2018
708	EDGE	78	250	2018
709	CB	72	200	2018
710	S	72	190	2018
711	WR	75	199	2018
712	OT	77	298	2018
713	DE	76	269	2018
714	RB	71	227	2018
715	ILB	74	238	2018
716	C	76	311	2018
717	WR	75	220	2018
718	C	76	307	2018
719	RB	71	215	2018
720	TE	75	254	2018
721	OG	76	306	2018
722	WR	70	181	2018
723	OLB	74	245	2018
724	RB	71	199	2018
725	OT	77	309	2018
726	S	73	206	2018
727	P	73	230	2018
728	C	75	306	2018
729	QB	75	221	2018
730	DE	78	264	2018
731	P	79	232	2018
732	CB	73	203	2018
733	CB	70	208	2018
734	CB	73	194	2018
735	OLB	75	251	2018
736	OG	76	319	2018
737	DE	76	292	2018
738	P	74	208	2018
739	TE	76	262	2018
740	EDGE	75	248	2018
741	RB	69	205	2018
742	S	74	220	2018
743	LB	77	253	2018
744	DE	76	264	2018
745	S	74	205	2018
746	RB	75	241	2018
747	ILB	76	256	2018
748	QB	74	222	2018
749	LB	75	232	2018
750	CB	74	197	2018
751	QB	76	215	2018
752	CB	70	175	2018
753	DT	76	318	2018
754	QB	75	212	2018
755	EDGE	76	263	2018
756	DB	73	201	2018
757	RB	74	248	2018
758	QB	70	214	2018
759	S	75	200	2018
760	WR	74	196	2018
761	RB	71	239	2018
762	DE	76	283	2018
763	DT	76	321	2018
764	RB	71	229	2018
765	TE	77	247	2018
766	WR	73	205	2018
767	OT	77	307	2018
768	CB	73	193	2018
769	TE	77	247	2018
770	TE	77	256	2018
771	OG	77	311	2018
772	WR	73	199	2018
773	DE	77	275	2018
774	OLB	73	227	2018
775	RB	70	224	2018
776	CB	69	190	2018
777	WR	73	203	2018
778	ILB	72	228	2018
779	DE	76	297	2018
780	CB	72	200	2018
781	S	72	208	2018
782	OT	78	292	2018
783	S	75	214	2018
784	EDGE	75	235	2018
785	OG	76	320	2018
786	EDGE	75	239	2018
787	WR	68	192	2018
788	DT	72	298	2018
789	OG	74	327	2018
790	TE	76	253	2018
791	RB	70	204	2018
792	DT	76	311	2018
793	CB	75	200	2018
794	RB	68	198	2018
795	EDGE	74	249	2018
796	DE	77	283	2018
797	DE	77	270	2018
798	CB	71	191	2018
799	TE	76	250	2018
800	DT	74	292	2018
801	S	72	205	2018
802	WR	74	199	2018
803	LB	73	229	2018
804	TE	77	256	2018
805	EDGE	75	242	2018
806	CB	71	175	2018
807	CB	71	193	2018
808	CB	73	192	2018
809	RB	72	199	2018
810	QB	74	216	2018
811	EDGE	75	246	2018
812	S	72	198	2018
813	S	75	215	2018
814	WR	70	183	2018
815	OLB	75	236	2018
816	ILB	73	234	2018
817	CB	70	185	2018
818	RB	71	213	2018
819	CB	72	180	2018
820	OT	76	299	2018
821	DT	74	309	2018
822	RB	71	205	2018
823	OG	77	305	2018
824	OT	78	317	2018
825	CB	73	181	2018
826	EDGE	75	252	2018
827	S	73	195	2018
828	RB	70	216	2018
829	S	74	200	2018
830	EDGE	78	238	2018
831	CB	73	186	2018
832	WR	70	201	2018
833	ILB	74	238	2018
834	WR	75	205	2018
835	EDGE	75	252	2018
836	WR	73	203	2018
837	QB	75	222	2018
838	WR	77	227	2018
839	QB	76	218	2018
840	OLB	74	234	2018
841	OT	79	311	2018
842	EDGE	75	265	2018
843	QB	77	230	2018
844	DE	75	287	2018
845	DT	74	315	2018
846	CB	69	180	2018
847	OL	77	308	2018
848	OG	76	303	2018
849	WR	73	177	2018
850	EDGE	73	254	2018
851	QB	73	215	2018
852	WR	69	190	2018
853	ILB	76	243	2018
854	OG	78	311	2018
855	CB	74	198	2018
856	OT	80	309	2018
857	DT	76	286	2018
858	DT	77	314	2018
859	DB	74	205	2018
860	RB	71	214	2018
861	WR	71	201	2018
862	OT	81	309	2018
863	WR	70	189	2018
864	WR	72	210	2018
865	WR	75	207	2018
866	CB	71	200	2018
867	OLB	74	226	2018
868	RB	74	232	2018
869	S	72	199	2018
870	CB	71	208	2018
871	OG	77	325	2018
872	DT	76	306	2018
873	CB	72	180	2018
874	DT	73	317	2018
875	DT	75	314	2018
876	OT	77	309	2018
877	EDGE	75	251	2018
878	OLB	73	223	2018
879	OT	79	297	2018
880	OT	78	320	2018
881	EDGE	73	253	2018
882	CB	73	190	2018
883	OT	80	305	2018
884	OT	78	312	2018
885	DT	74	311	2018
886	RB	71	220	2018
887	RB	72	233	2018
888	WR	72	201	2018
889	CB	70	190	2018
890	DT	76	307	2018
891	OG	75	318	2018
892	K	72	185	2018
893	C	76	305	2018
894	WR	73	203	2018
895	OLB	76	246	2018
896	C	76	310	2018
897	WR	71	203	2018
898	C	77	312	2018
899	OL	76	308	2018
900	S	73	205	2018
901	CB	69	188	2018
902	S	73	204	2018
903	RB	69	218	2018
904	OT	78	306	2018
905	WR	72	189	2018
906	S	71	189	2018
907	WR	73	212	2018
908	EDGE	74	253	2018
909	QB	76	226	2018
910	DE	76	273	2018
911	QB	77	235	2018
912	ILB	74	244	2018
913	TE	71	225	2018
914	S	72	193	2018
915	ILB	72	230	2018
916	RB	73	228	2018
917	TE	77	244	2018
918	WR	77	218	2018
919	P	78	208	2018
920	DT	72	314	2018
921	OT	78	302	2018
922	DT	75	329	2018
923	C	75	292	2018
924	DT	77	315	2018
925	QB	75	220	2018
926	ILB	72	237	2018
927	OG	78	315	2018
928	OLB	73	236	2018
929	WR	74	203	2018
930	S	71	185	2018
931	TE	77	253	2018
932	DT	75	283	2018
933	DT	74	312	2018
934	CB	71	200	2018
935	DE	74	280	2018
936	CB	72	180	2018
937	CB	71	195	2018
938	WR	75	218	2018
939	EDGE	76	251	2018
940	WR	77	228	2018
941	OT	75	320	2018
942	OG	76	314	2018
943	DE	78	281	2018
944	TE	76	259	2018
945	CB	72	186	2018
946	OLB	75	232	2018
947	RB	70	198	2018
948	DT	76	288	2018
949	CB	73	185	2018
950	CB	75	204	2018
951	OT	78	291	2018
952	P	73	210	2018
953	P	75	211	2018
954	OG	77	310	2018
955	WR	76	206	2018
956	DT	76	347	2018
957	ILB	73	240	2018
958	CB	72	200	2018
959	RB	70	194	2018
960	S	74	200	2018
961	CB	72	183	2018
962	RB	70	202	2018
963	CB	70	191	2018
964	OLB	75	236	2018
965	RB	74	247	2018
966	WR	71	213	2018
967	S	71	205	2018
968	WR	74	211	2018
969	OT	76	317	2018
970	S	71	195	2018
971	TE	78	256	2018
972	C	75	306	2018
973	WR	73	206	2018
974	S	74	216	2018
975	QB	77	224	2018
976	S	71	195	2018
977	DE	75	296	2018
978	WR	76	221	2018
979	RB	73	216	2018
980	OT	77	296	2018
981	RB	72	225	2018
982	WR	74	197	2018
983	DT	76	301	2018
984	RB	71	210	2018
985	WR	75	215	2018
986	EDGE	73	249	2018
987	P	77	217	2018
988	QB	73	213	2018
989	ILB	74	238	2018
990	OG	75	313	2018
991	CB	73	190	2018
992	ILB	73	236	2018
993	EDGE	76	258	2018
994	S	71	205	2019
995	OT	78	317	2019
996	S	72	206	2019
997	LB	73	234	2019
998	LB	75	239	2019
999	LB	73	232	2019
1000	DL	76	281	2019
1001	LB	73	236	2019
1002	LB	71	228	2019
1003	S	69	199	2019
1004	RB	72	224	2019
1005	WR	74	225	2019
1006	RB	71	220	2019
1007	CB	73	198	2019
1008	P	73	200	2019
1009	OL	77	299	2019
1010	CB	74	197	2019
1011	CB	71	193	2019
1012	CB	71	196	2019
1013	EDGE	75	250	2019
1014	RB	72	226	2019
1015	OL	78	312	2019
1016	LB	74	237	2019
1017	OT	79	310	2019
1018	OL	76	306	2019
1019	S	72	201	2019
1020	DL	76	296	2019
1021	S	75	210	2019
1022	OL	78	309	2019
1023	S	73	195	2019
1024	TE	78	262	2019
1025	DL	76	266	2019
1026	CB	71	201	2019
1027	WR	76	220	2019
1028	OL	75	306	2019
1029	WR	75	211	2019
1030	EDGE	75	252	2019
1031	RB	71	209	2019
1032	WR	72	226	2019
1033	CB	72	194	2019
1034	CB	72	201	2019
1035	TE	74	250	2019
1036	WR	69	166	2019
1037	QB	74	211	2019
1038	EDGE	76	271	2019
1039	DL	75	306	2019
1040	CB	72	195	2019
1041	EDGE	77	249	2019
1042	LB	72	230	2019
1043	LB	71	234	2019
1044	WR	75	217	2019
1045	WR	77	227	2019
1046	OT	77	312	2019
1047	OL	74	310	2019
1048	WR	72	205	2019
1049	EDGE	74	251	2019
1050	LB	73	237	2019
1051	CB	69	169	2019
1052	DL	75	294	2019
1053	DL	74	283	2019
1054	DL	77	286	2019
1055	LB	73	234	2019
1056	LB	74	242	2019
1057	TE	76	249	2019
1058	DL	75	298	2019
1059	S	73	205	2019
1060	CB	71	187	2019
1061	DL	77	255	2019
1062	WR	76	214	2019
1063	OT	77	317	2019
1064	CB	74	202	2019
1065	LB	71	234	2019
1066	WR	75	211	2019
1067	EDGE	75	243	2019
1068	OL	75	316	2019
1069	WR	70	189	2019
1070	CB	73	206	2019
1071	OL	77	309	2019
1072	S	71	190	2019
1073	OT	77	315	2019
1074	S	70	204	2019
1075	WR	70	201	2019
1076	LB	72	237	2019
1077	WR	67	173	2019
1078	WR	74	211	2019
1079	WR	73	215	2019
1080	WR	71	160	2019
1081	OT	75	308	2019
1082	OT	78	308	2019
1083	S	70	205	2019
1084	LB	72	230	2019
1085	LB	74	245	2019
1086	OT	76	312	2019
1087	TE	76	249	2019
1088	CB	71	193	2019
1089	WR	77	227	2019
1090	EDGE	76	264	2019
1091	CB	70	192	2019
1092	QB	76	213	2019
1093	QB	77	226	2019
1094	OT	76	329	2019
1095	P	74	213	2019
1096	OL	77	306	2019
1097	WR	74	215	2019
1098	OL	75	305	2019
1099	DL	73	312	2019
1100	S	72	209	2019
1101	S	71	210	2019
1102	DL	76	277	2019
1103	RB	69	205	2019
1104	K	72	232	2019
1105	TE	80	265	2019
1106	LB	74	234	2019
1107	LB	75	241	2019
1108	DL	73	285	2019
1109	LS	76	241	2019
1110	WR	71	184	2019
1111	EDGE	77	254	2019
1112	OT	76	320	2019
1113	EDGE	76	252	2019
1114	OT	77	335	2019
1115	OL	76	327	2019
1116	LB	71	237	2019
1117	QB	74	217	2019
1118	EDGE	76	255	2019
1119	WR	74	201	2019
1120	LB	74	225	2019
1121	LB	73	230	2019
1122	S	73	206	2019
1123	LB	74	242	2019
1124	LB	75	222	2019
1125	WR	70	187	2019
1126	WR	74	221	2019
1127	RB	70	216	2019
1128	S	73	207	2019
1129	WR	74	228	2019
1130	CB	71	190	2019
1131	QB	75	231	2019
1132	OL	76	322	2019
1133	TE	76	249	2019
1134	RB	68	208	2019
1135	OL	75	335	2019
1136	RB	69	206	2019
1137	RB	70	198	2019
1138	DL	75	308	2019
1139	TE	77	251	2019
1140	CB	73	191	2019
1141	EDGE	77	248	2019
1142	RB	70	217	2019
1143	RB	70	201	2019
1144	S	71	210	2019
1145	OT	77	322	2019
1146	DL	75	305	2019
1147	WR	76	210	2019
1148	WR	77	226	2019
1149	OT	77	303	2019
1150	FB	73	242	2019
1151	WR	69	188	2019
1152	OL	77	315	2019
1153	DL	76	275	2019
1154	CB	73	210	2019
1155	QB	79	249	2019
1156	RB	70	220	2019
1157	OT	76	299	2019
1158	EDGE	73	266	2019
1159	EDGE	77	256	2019
1160	OL	76	310	2019
1161	WR	73	214	2019
1162	WR	74	209	2019
1163	WR	72	204	2019
1164	EDGE	78	253	2019
1165	WR	70	183	2019
1166	OL	79	326	2019
1167	LB	72	226	2019
1168	CB	74	208	2019
1169	S	70	191	2019
1170	WR	73	201	2019
1171	CB	74	213	2019
1172	QB	77	221	2019
1173	DL	75	281	2019
1174	LB	74	234	2019
1175	OT	75	306	2019
1176	OT	78	312	2019
1177	LB	72	233	2019
1178	LB	73	230	2019
1179	DL	75	288	2019
1180	OT	76	314	2019
1181	TE	76	254	2019
1182	LB	75	253	2019
1183	DL	76	342	2019
1184	CB	74	192	2019
1185	DL	76	280	2019
1186	CB	73	207	2019
1187	OL	76	308	2019
1188	OT	77	310	2019
1189	QB	76	228	2019
1190	WR	74	202	2019
1191	CB	71	196	2019
1192	RB	69	200	2019
1193	CB	71	195	2019
1194	TE	76	249	2019
1195	DL	73	336	2019
1196	RB	71	221	2019
1197	OL	76	303	2019
1198	OT	79	317	2019
1199	S	73	212	2019
1200	WR	72	208	2019
1201	QB	72	202	2019
1202	WR	75	228	2019
1203	WR	74	203	2019
1204	OT	77	314	2019
1205	EDGE	75	247	2019
1206	CB	73	186	2019
1207	EDGE	76	254	2019
1208	QB	73	225	2019
1209	WR	73	197	2019
1210	RB	70	222	2019
1211	RB	70	212	2019
1212	TE	76	253	2019
1213	WR	72	202	2019
1214	CB	73	199	2019
1215	CB	71	190	2019
1216	QB	70	207	2019
1217	WR	70	191	2019
1218	TE	75	244	2019
1219	DL	79	271	2019
1220	OT	79	324	2019
1221	LB	73	239	2019
1222	DL	74	287	2019
1223	TE	77	249	2019
1224	RB	73	228	2019
1225	DL	77	280	2019
1226	OL	76	301	2019
1227	CB	74	205	2019
1228	OL	75	307	2019
1229	CB	74	218	2019
1230	OT	76	307	2019
1231	OT	78	309	2019
1232	EDGE	75	258	2019
1233	RB	72	210	2019
1234	OT	79	320	2019
1235	OL	76	307	2019
1236	LB	74	240	2019
1237	OT	78	305	2019
1238	CB	71	209	2019
1239	S	72	208	2019
1240	EDGE	75	257	2019
1241	TE	77	255	2019
1242	S	72	196	2019
1243	WR	70	184	2019
1244	WR	73	199	2019
1245	OT	77	312	2019
1246	OT	78	312	2019
1247	DL	75	319	2019
1248	QB	74	210	2019
1249	OT	77	305	2019
1250	TE	77	255	2019
1251	WR	71	214	2019
1252	RB	71	211	2019
1253	DL	72	324	2019
1254	S	71	198	2019
1255	RB	71	208	2019
1256	OT	78	327	2019
1257	RB	72	227	2019
1258	K	69	213	2019
1259	CB	71	193	2019
1260	QB	76	230	2019
1261	WR	75	211	2019
1262	RB	67	203	2019
1263	DL	76	307	2019
1264	WR	73	190	2019
1265	LB	74	238	2019
1266	TE	74	242	2019
1267	WR	74	219	2019
1268	TE	77	255	2019
1269	CB	73	199	2019
1270	EDGE	72	233	2019
1271	RB	70	224	2019
1272	TE	76	251	2019
1273	QB	73	224	2019
1274	QB	74	218	2019
1275	LB	73	241	2019
1276	EDGE	78	260	2019
1277	TE	76	251	2019
1278	OT	78	313	2019
1279	QB	75	221	2019
1280	LB	73	238	2019
1281	OL	74	293	2019
1282	LB	74	250	2019
1283	OT	77	312	2019
1284	S	74	198	2019
1285	CB	75	189	2019
1286	WR	73	205	2019
1287	S	73	195	2019
1288	S	72	205	2019
1289	QB	76	222	2019
1290	DL	78	295	2019
1291	K	70	184	2019
1292	LB	74	234	2019
1293	OT	77	323	2019
1294	EDGE	74	251	2019
1295	TE	77	252	2019
1296	DL	77	300	2019
1297	WR	75	215	2019
1298	RB	70	211	2019
1299	CB	71	203	2019
1300	TE	75	267	2019
1301	WR	72	190	2019
1302	WR	76	206	2019
1303	S	71	208	2019
1304	LB	72	237	2019
1305	DL	75	315	2019
1306	RB	71	212	2019
1307	CB	74	185	2019
1308	RB	69	197	2019
1309	CB	76	211	2019
1310	OT	76	302	2019
1311	DL	75	303	2019
1312	RB	68	206	2019
1313	DL	74	302	2019
1314	S	71	213	2019
1315	TE	76	240	2019
1316	S	72	199	2019
1317	LB	73	240	2019
1318	S	72	209	2019
1319	EDGE	75	256	2019
1320	DL	75	281	2019
1321	P	74	218	2019
1322	S	71	205	2019
1323	S	74	212	2019
1324	DL	77	318	2019
1325	EDGE	75	253	2019
1326	CB	72	192	2019
1327	OL	80	318	2020
1328	OL	76	302	2020
1329	DL	75	309	2020
1330	RB	71	197	2020
1331	WR	72	205	2020
1332	RB	70	217	2020
1333	DL	75	257	2020
1334	OL	74	314	2020
1335	RB	70	208	2020
1336	CB	72	195	2020
1337	CB	69	186	2020
1338	TE	75	257	2020
1339	LB	73	230	2020
1340	LB	72	235	2020
1341	CB	68	180	2020
1342	OL	78	309	2020
1343	K	70	185	2020
1344	CB	69	191	2020
1345	LB	74	238	2020
1346	WR	73	212	2020
1347	OL	79	364	2020
1348	RB	69	192	2020
1349	RB	69	207	2020
1350	LB	72	234	2020
1351	OL	76	314	2020
1352	LB	74	246	2020
1353	DL	75	290	2020
1354	S	72	187	2020
1355	K	73	190	2020
1356	WR	71	204	2020
1357	LB	73	235	2020
1358	OL	77	315	2020
1359	TE	77	252	2020
1360	LB	72	240	2020
1361	LB	77	233	2020
1362	DL	77	326	2020
1363	TE	77	243	2020
1364	TE	74	248	2020
1365	QB	75	229	2020
1366	CB	68	183	2020
1367	S	71	202	2020
1368	QB	75	221	2020
1369	OL	77	300	2020
1370	WR	77	220	2020
1371	RB	68	188	2020
1372	WR	73	205	2020
1373	S	70	194	2020
1374	WR	73	202	2020
1375	LB	75	254	2020
1376	OL	76	321	2020
1377	P	76	195	2020
1378	S	75	221	2020
1379	OL	76	308	2020
1380	CB	73	190	2020
1381	WR	76	238	2020
1382	S	72	209	2020
1383	OL	78	311	2020
1384	WR	74	209	2020
1385	DL	75	308	2020
1386	LB	77	280	2020
1387	DL	75	257	2020
1388	OL	75	313	2020
1389	LB	75	236	2020
1390	WR	74	198	2020
1391	S	73	206	2020
1392	OL	75	312	2020
1393	RB	70	217	2020
1394	DL	75	311	2020
1395	CB	74	188	2020
1396	QB	76	224	2020
1397	DL	75	303	2020
1398	S	73	202	2020
1399	DL	74	313	2020
1400	WR	74	216	2020
1401	CB	68	183	2020
1402	DL	73	308	2020
1403	WR	73	201	2020
1404	DL	78	311	2020
1405	LB	73	224	2020
1406	TE	74	242	2020
1407	S	74	213	2020
1408	CB	73	205	2020
1409	RB	72	247	2020
1410	LB	74	242	2020
1411	RB	69	209	2020
1412	RB	71	213	2020
1413	OL	77	306	2020
1414	S	73	217	2020
1415	OL	78	331	2020
1416	WR	70	200	2020
1417	LB	75	231	2020
1418	QB	78	231	2020
1419	WR	75	212	2020
1420	RB	67	207	2020
1421	S	72	205	2020
1422	DL	76	302	2020
1423	DL	77	275	2020
1424	RB	70	203	2020
1425	LS	75	229	2020
1426	WR	69	186	2020
1427	DL	77	330	2020
1428	QB	74	219	2020
1429	WR	71	188	2020
1430	S	74	203	2020
1431	CB	72	197	2020
1432	LB	77	235	2020
1433	DL	74	304	2020
1434	WR	76	223	2020
1435	LB	74	234	2020
1436	DL	76	263	2020
1437	WR	72	228	2020
1438	S	70	201	2020
1439	DL	75	261	2020
1440	CB	70	191	2020
1441	QB	74	205	2020
1442	CB	73	202	2020
1443	DL	75	263	2020
1444	DL	77	266	2020
1445	CB	69	191	2020
1446	WR	75	201	2020
1447	CB	73	202	2020
1448	DL	76	320	2020
1449	DL	74	262	2020
1450	WR	69	178	2020
1451	CB	71	197	2020
1452	OL	76	303	2020
1453	OL	73	302	2020
1454	LB	72	234	2020
1455	LB	75	247	2020
1456	RB	68	205	2020
1457	S	73	208	2020
1458	OL	80	311	2020
1459	CB	73	204	2020
1460	OL	76	307	2020
1461	QB	78	236	2020
1462	RB	71	209	2020
1463	OL	76	308	2020
1464	WR	76	216	2020
1465	DL	75	248	2020
1466	WR	73	189	2020
1467	WR	72	196	2020
1468	CB	70	190	2020
1469	DL	75	248	2020
1470	WR	76	210	2020
1471	P	70	196	2020
1472	CB	70	195	2020
1473	TE	76	245	2020
1474	LB	71	224	2020
1475	OL	77	323	2020
1476	QB	73	222	2020
1477	CB	70	198	2020
1478	S	74	213	2020
1479	DL	74	308	2020
1480	CB	73	205	2020
1481	WR	71	188	2020
1482	OL	75	309	2020
1483	OL	75	309	2020
1484	OL	77	322	2020
1485	CB	72	187	2020
1486	OL	75	306	2020
1487	WR	73	197	2020
1488	WR	73	202	2020
1489	WR	73	200	2020
1490	LB	74	256	2020
1491	WR	75	215	2020
1492	WR	73	193	2020
1493	WR	78	222	2020
1494	CB	72	193	2020
1495	WR	76	230	2020
1496	WR	73	206	2020
1497	LB	73	227	2020
1498	DL	73	316	2020
1499	S	71	198	2020
1500	OL	77	319	2020
1501	RB	70	220	2020
1502	S	71	220	2020
1503	LB	73	243	2020
1504	WR	73	227	2020
1505	S	69	203	2020
1506	LB	75	245	2020
1507	DL	76	268	2020
1508	TE	76	253	2020
1509	RB	71	212	2020
1510	CB	73	202	2020
1511	OL	75	337	2020
1512	DL	77	324	2020
1513	TE	78	262	2020
1514	WR	74	198	2020
1515	RB	72	215	2020
1516	RB	68	221	2020
1517	OL	76	310	2020
1518	QB	74	213	2020
1519	OL	74	327	2020
1520	LB	77	262	2020
1521	WR	72	207	2020
1522	QB	76	224	2020
1523	QB	78	224	2020
1524	DL	76	289	2020
1525	WR	73	208	2020
1526	LB	75	241	2020
1527	DL	75	293	2020
1528	P	71	198	2020
1529	LB	75	240	2020
1530	QB	75	215	2020
1531	RB	68	208	2020
1532	TE	77	242	2020
1533	S	72	201	2020
1534	OL	78	306	2020
1535	S	71	209	2020
1536	S	71	190	2020
1537	WR	75	207	2020
1538	OL	77	309	2020
1539	K	71	182	2020
1540	QB	76	231	2020
1541	WR	70	176	2020
1542	QB	76	229	2020
1543	TE	74	250	2020
1544	RB	69	223	2020
1545	DL	74	297	2020
1546	LB	74	241	2020
1547	S	74	227	2020
1548	OL	75	315	2020
1549	OL	78	315	2020
1550	TE	76	253	2020
1551	CB	73	200	2020
1552	CB	73	205	2020
1553	DL	76	252	2020
1554	TE	77	258	2020
1555	RB	75	232	2020
1556	LB	74	237	2020
1557	OL	75	344	2020
1558	WR	71	203	2020
1559	WR	74	209	2020
1560	TE	79	252	2020
1561	WR	76	225	2020
1562	QB	73	212	2020
1563	OL	79	318	2020
1564	P	73	213	2020
1565	DL	73	318	2020
1566	WR	74	212	2020
1567	RB	71	216	2020
1568	WR	69	186	2020
1569	LB	75	229	2020
1570	RB	68	209	2020
1571	OL	77	331	2020
1572	CB	72	183	2020
1573	LB	71	235	2020
1574	TE	76	257	2020
1575	OL	76	306	2020
1576	WR	76	223	2020
1577	CB	71	193	2020
1578	WR	71	201	2020
1579	LB	72	234	2020
1580	LB	72	229	2020
1581	WR	71	206	2020
1582	S	73	202	2020
1583	WR	72	224	2020
1584	CB	70	187	2020
1585	DL	74	262	2020
1586	DL	74	297	2020
1587	CB	68	187	2020
1588	DL	75	264	2020
1589	RB	69	219	2020
1590	WR	76	208	2020
1591	OL	75	307	2020
1592	OL	76	306	2020
1593	LB	74	236	2020
1594	CB	73	187	2020
1595	CB	69	185	2020
1596	DL	75	261	2020
1597	LB	76	238	2020
1598	OL	76	321	2020
1599	P	74	213	2020
1600	DL	76	265	2020
1601	S	72	192	2020
1602	QB	76	235	2020
1603	OL	78	312	2020
1604	OL	78	317	2020
1605	OL	76	313	2020
1606	WR	72	212	2020
1607	S	70	207	2020
1608	LB	75	238	2020
1609	DL	76	275	2020
1610	TE	77	248	2020
1611	WR	72	197	2020
1612	RB	68	212	2020
1613	QB	72	217	2020
1614	TE	74	240	2020
1615	OL	80	308	2020
1616	LB	76	267	2020
1617	LB	72	228	2020
1618	RB	65	185	2020
1619	RB	70	226	2020
1620	RB	73	217	2020
1621	CB	73	195	2020
1622	OL	77	315	2020
1623	S	70	215	2020
1624	WR	69	170	2020
1625	CB	72	192	2020
1626	OL	77	317	2020
1627	LB	76	250	2020
1628	P	73	191	2020
1629	TE	77	255	2020
1630	P	72	226	2020
1631	DL	76	251	2020
1632	LB	73	245	2020
1633	RB	70	214	2020
1634	WR	76	198	2020
1635	CB	70	191	2020
1636	LB	75	230	2020
1637	S	71	206	2020
1638	OL	77	308	2020
1639	RB	69	226	2020
1640	DL	74	305	2020
1641	WR	72	185	2020
1642	LB	74	265	2020
1643	LB	74	237	2020
1644	WR	75	217	2020
1645	TE	75	247	2020
1646	DL	75	264	2020
1647	OL	74	304	2020
1648	DL	76	308	2020
1649	OL	76	312	2020
1650	OL	78	350	2020
1651	LB	74	241	2020
1652	DL	76	290	2020
1653	OL	77	320	2020
1654	LS	76	235	2020
1655	TE	77	244	2020
1656	DL	77	258	2020
1657	TE	76	261	2020
1658	LB	74	230	2020
1659	DL	77	264	2020
1660	DL	75	264	2020
1661	QB	\N	\N	2016
1662	QB	\N	\N	2016
1663	DE	\N	\N	2016
1664	RB	\N	\N	2016
1665	CB	\N	\N	2016
1666	OT	\N	\N	2016
1667	DE	\N	\N	2016
1668	CB	\N	\N	2016
1669	OT	\N	\N	2016
1670	S	\N	\N	2016
1671	C	\N	\N	2016
1672	DT	\N	\N	2016
1673	Selection forfeited [Forfeited 1]	\N	\N	2016
1674	LB	\N	\N	2016
1675	DT	\N	\N	2016
1676	CB	\N	\N	2016
1677	RB	\N	\N	2016
1678	WR	\N	\N	2016
1679	LB	\N	\N	2016
1680	LB	\N	\N	2016
1681	OG	\N	\N	2016
1682	CB	\N	\N	2016
1683	CB	\N	\N	2016
1684	S	\N	\N	2016
1685	DE	\N	\N	2016
1686	CB	\N	\N	2016
1687	TE	\N	\N	2016
1688	RB	\N	\N	2016
1689	Selection forfeited.[Forfeited 2]	\N	\N	2016
1690	S	\N	\N	2016
1691	LB	\N	\N	2016
1692	LB	\N	\N	2016
1693	KR	\N	\N	2016
1694	DT	\N	\N	2016
1695	S	\N	\N	2016
1696	QB	\N	\N	2016
1697	TE	\N	\N	2016
1698	RB	\N	\N	2016
1699	DE	\N	\N	2016
1700	RB	\N	\N	2016
1701	Selection forfeited during the 2015 Supplemental draft.[Forfeited 3]	\N	\N	2016
1702	Selection forfeited .[Forfeited 4]	\N	\N	2016
1703	CB	\N	\N	2016
1704	S	\N	\N	2016
1705	WR	\N	\N	2016
1706	DT	\N	\N	2016
1707	S	\N	\N	2016
1708	LB	\N	\N	2016
1709	CB	\N	\N	2016
1710	LB	\N	\N	2016
1711	CB	\N	\N	2016
1712	WR	\N	\N	2016
1713	DE	\N	\N	2016
1714	WR	\N	\N	2016
1715	CB	\N	\N	2016
1716	WR	\N	\N	2016
1717	TE	\N	\N	2016
1718	QB	\N	\N	2016
1719	LB	\N	\N	2016
1720	OG	\N	\N	2016
1721	CB	\N	\N	2016
1722	FB	\N	\N	2016
1723	WR	\N	\N	2016
1724	LB	\N	\N	2016
1725	LB	\N	\N	2016
1726	C	\N	\N	2016
1727	TE	\N	\N	2016
1728	S	\N	\N	2016
1729	OG	\N	\N	2016
1730	LB	\N	\N	2016
1731	OG	\N	\N	2016
1732	WR	\N	\N	2016
1733	DE	\N	\N	2016
1734	WR	\N	\N	2016
1735	RB	\N	\N	2016
1736	WR	\N	\N	2016
1737	LB	\N	\N	2016
1738	S	\N	\N	2016
1739	RB	\N	\N	2016
1740	CB	\N	\N	2016
1741	LB	\N	\N	2016
1742	LB	\N	\N	2016
1743	CB	\N	\N	2016
1744	DE	\N	\N	2017
1745	QB	\N	\N	2017
1746	S	\N	\N	2017
1747	RB	\N	\N	2017
1748	QB	\N	\N	2017
1749	CB	\N	\N	2017
1750	QB	\N	\N	2017
1751	CB	\N	\N	2017
1752	CB	\N	\N	2017
1753	TE	\N	\N	2017
1754	OT	\N	\N	2017
1755	TE	\N	\N	2017
1756	CB	\N	\N	2017
1757	LB	\N	\N	2017
1758	S	\N	\N	2017
1759	RB	\N	\N	2017
1760	RB	\N	\N	2017
1761	WR	\N	\N	2017
1762	RB	\N	\N	2017
1763	WR	\N	\N	2017
1764	RB	\N	\N	2017
1765	CB	\N	\N	2017
1766	S	\N	\N	2017
1767	WR	\N	\N	2017
1768	WR	\N	\N	2017
1769	CB	\N	\N	2017
1770	QB	\N	\N	2017
1771	RB	\N	\N	2017
1772	S	\N	\N	2017
1773	Selection from New Orleans [R4 - 8] forfeited d.[Forfeited/Penalized 1]	\N	\N	2017
1774	RB	\N	\N	2017
1775	LB	\N	\N	2017
1776	Selection moved down twelve spots [Forfeited/Penalized 2]	\N	\N	2017
1777	OT	\N	\N	2017
1778	DT	\N	\N	2017
1779	TE	\N	\N	2017
1780	CB	\N	\N	2017
1781	CB	\N	\N	2017
1782	Selection forfeited [Forfeited/Penalized 3]	\N	\N	2017
1783	WR	\N	\N	2017
1784	C	\N	\N	2017
1785	DT	\N	\N	2017
1786	RB	\N	\N	2017
1787	RB	\N	\N	2017
1788	LB	\N	\N	2017
1789	S	\N	\N	2017
1790	S	\N	\N	2017
1791	FB	\N	\N	2017
1792	LB	\N	\N	2017
1793	DT	\N	\N	2017
1794	RB	\N	\N	2017
1795	CB	\N	\N	2017
1796	CB	\N	\N	2017
1797	S	\N	\N	2017
1798	Selection forfeited [Forfeited/Penalized 4]	\N	\N	2017
1799	OT	\N	\N	2017
1800	S	\N	\N	2017
1801	DT	\N	\N	2017
1802	WR	\N	\N	2017
1803	DT	\N	\N	2017
1804	CB	\N	\N	2017
1805	OT	\N	\N	2017
1806	LB	\N	\N	2017
1807	CB	\N	\N	2017
1808	OT	\N	\N	2017
1809	RB	\N	\N	2017
1810	FB	\N	\N	2017
1811	RB	\N	\N	2017
1812	DT	\N	\N	2017
1813	DE	\N	\N	2017
1814	DE	\N	\N	2017
1815	TE	\N	\N	2017
1816	QB	\N	\N	2017
1817	RB	\N	\N	2018
1818	CB	\N	\N	2018
1819	LB	\N	\N	2018
1820	OG	\N	\N	2018
1821	QB	\N	\N	2018
1822	S	\N	\N	2018
1823	LB	\N	\N	2018
1824	S	\N	\N	2018
1825	CB	\N	\N	2018
1826	LB	\N	\N	2018
1827	C	\N	\N	2018
1828	WR	\N	\N	2018
1829	QB	\N	\N	2018
1830	RB	\N	\N	2018
1831	LB	\N	\N	2018
1832	RB	\N	\N	2018
1833	WR	\N	\N	2018
1834	CB	\N	\N	2018
1835	DT	\N	\N	2018
1836	WR	\N	\N	2018
1837	OT	\N	\N	2018
1838	DT	\N	\N	2018
1839	LB	\N	\N	2018
1840	S	\N	\N	2018
1841	OT	\N	\N	2018
1842	TE	\N	\N	2018
1843	WR	\N	\N	2018
1844	S	\N	\N	2018
1845	LB	\N	\N	2018
1846	WR	\N	\N	2018
1847	DE	\N	\N	2018
1848	RB	\N	\N	2018
1849	WR	\N	\N	2018
1850	DT	\N	\N	2018
1851	CB	\N	\N	2018
1852	LB	\N	\N	2018
1853	WR	\N	\N	2018
1854	P	\N	\N	2018
1855	WR	\N	\N	2018
1856	LB	\N	\N	2018
1857	P	\N	\N	2018
1858	WR	\N	\N	2018
1859	DT	\N	\N	2018
1860	LB	\N	\N	2018
1861	WR	\N	\N	2018
1862	CB	\N	\N	2018
1863	S	\N	\N	2018
1864	WR	\N	\N	2018
1865	DT	\N	\N	2018
1866	CB	\N	\N	2018
1867	LB	\N	\N	2018
1868	S	\N	\N	2018
1869	RB	\N	\N	2018
1870	RB	\N	\N	2018
1871	OT	\N	\N	2018
1872	WR	\N	\N	2018
1873	WR	\N	\N	2018
1874	CB	\N	\N	2018
1875	C	\N	\N	2018
1876	QB	\N	\N	2018
1877	LB	\N	\N	2018
1878	CB	\N	\N	2018
1879	DT	\N	\N	2018
1880	LB	\N	\N	2018
1881	RB	\N	\N	2018
1882	LB	\N	\N	2018
1883	K	\N	\N	2018
1884	LB	\N	\N	2018
1885	OT	\N	\N	2018
1886	LB	\N	\N	2018
1887	DE	\N	\N	2018
1888	LS	\N	\N	2018
1889	CB	\N	\N	2018
1890	DE	\N	\N	2018
1891	P	\N	\N	2018
1892	LB	\N	\N	2018
1893	OT	\N	\N	2018
1894	WR	\N	\N	2018
1895	QB	\N	\N	2019
1896	DE	\N	\N	2019
1897	TE	\N	\N	2019
1898	DT	\N	\N	2019
1899	RB	\N	\N	2019
1900	DE	\N	\N	2019
1901	CB	\N	\N	2019
1902	C	\N	\N	2019
1903	TE	\N	\N	2019
1904	WR	\N	\N	2019
1905	CB	\N	\N	2019
1906	WR	\N	\N	2019
1907	WR	\N	\N	2019
1908	WR	\N	\N	2019
1909	Selection forfeited during the 2018 supplemental draft.[Forfeited 1]	\N	\N	2019
1910	DE	\N	\N	2019
1911	LB	\N	\N	2019
1912	S	\N	\N	2019
1913	WR	\N	\N	2019
1914	RB	\N	\N	2019
1915	CB	\N	\N	2019
1916	OG	\N	\N	2019
1917	S	\N	\N	2019
1918	S	\N	\N	2019
1919	LB	\N	\N	2019
1920	CB	\N	\N	2019
1921	P	\N	\N	2019
1922	LB	\N	\N	2019
1923	LB	\N	\N	2019
1924	WR	\N	\N	2019
1925	OT	\N	\N	2019
1926	CB	\N	\N	2019
1927	RB	\N	\N	2019
1928	Selection forfeited during the 2018 supplemental draft.[Forfeited 2]	\N	\N	2019
1929	WR	\N	\N	2019
1930	LB	\N	\N	2019
1931	OT	\N	\N	2019
1932	S	\N	\N	2019
1933	CB	\N	\N	2019
1934	WR	\N	\N	2019
1935	CB	\N	\N	2019
1936	LB	\N	\N	2019
1937	WR	\N	\N	2019
1938	RB	\N	\N	2019
1939	OG	\N	\N	2019
1940	FB	\N	\N	2019
1941	CB	\N	\N	2019
1942	RB	\N	\N	2019
1943	CB	\N	\N	2019
1944	DE	\N	\N	2019
1945	DE	\N	\N	2019
1946	TE	\N	\N	2019
1947	OT	\N	\N	2019
1948	FB	\N	\N	2019
1949	WR	\N	\N	2019
1950	CB	\N	\N	2019
1951	DT	\N	\N	2019
1952	S	\N	\N	2019
1953	LB	\N	\N	2019
1954	DE	\N	\N	2019
1955	LS	\N	\N	2019
1956	DE	\N	\N	2020
1957	CB	\N	\N	2020
1958	WR	\N	\N	2020
1959	CB	\N	\N	2020
1960	WR	\N	\N	2020
1961	WR	\N	\N	2020
1962	WR	\N	\N	2020
1963	WR	\N	\N	2020
1964	DE	\N	\N	2020
1965	RB	\N	\N	2020
1966	RB	\N	\N	2020
1967	ILB	\N	\N	2020
1968	DE	\N	\N	2020
1969	CB	\N	\N	2020
1970	RB	\N	\N	2020
1971	DT	\N	\N	2020
1972	OG	\N	\N	2020
1973	S	\N	\N	2020
1974	Selection forfeited during the 2019 supplemental draft. [Forfeited 1]	\N	\N	2020
1975	K	\N	\N	2020
1976	DT	\N	\N	2020
1977	RB	\N	\N	2020
1978	WR	\N	\N	2020
1979	DE	\N	\N	2020
1980	OG	\N	\N	2020
1981	LB	\N	\N	2020
1982	DT	\N	\N	2020
1983	OG	\N	\N	2020
1984	DT	\N	\N	2020
1985	S	\N	\N	2020
1986	OT	\N	\N	2020
1987	LB	\N	\N	2020
1988	TE	\N	\N	2020
1989	CB	\N	\N	2020
1990	OLB	\N	\N	2020
1991	WR	\N	\N	2020
1992	CB	\N	\N	2020
1993	OG	\N	\N	2020
1994	OT	\N	\N	2020
1995	C	\N	\N	2020
1996	QB	\N	\N	2020
1997	DT	\N	\N	2020
1998	FS	\N	\N	2020
1999	CB	\N	\N	2020
2000	OLB	\N	\N	2020
2001	QB	\N	\N	2020
2002	CB	\N	\N	2020
2003	CB	\N	\N	2020
2004	K	\N	\N	2020
2005	C	\N	\N	2020
2006	LB	\N	\N	2020
\.


--
-- Data for Name: player; Type: TABLE DATA; Schema: public; Owner: football
--

COPY public.player (player_id, name) FROM stdin;
1	Mehdi Abdesmad
2	Vernon Adams
3	Jerell Adams
4	Bralon Addison
5	Roberto Aguayo
6	Mackensie Alexander
7	Dominique Alexander
8	Vadal Alexander
9	Brandon Allen
10	Jack Allen
11	Geronimo Allison
12	Stephen Anderson
13	Eli Apple
14	Demarcus Ayers
15	Sterling Bailey
16	Peyton Barber
17	Jimmy Bean
18	Willie Beavers
19	Vonn Bell
20	Caleb Benenoch
21	Andrew Billings
22	Ronald Blair
23	Austin Blythe
24	Briean Boddy-Calhoun
25	Evan Boehm
26	Devante Bond
27	Devontae Booker
28	Joey Bosa
29	Tyler Boyd
30	Trevone Boykin
31	James Bradberry
32	Ben Braunecker
33	Jake Brendel
34	Jacoby Brissett
35	Kentrell Brothers
36	Chris Brown
37	Beniquez Brown
38	Anthony Brown
39	Lamarcus Brutus
40	Deforest Buckner
41	Jonathan Bullard
42	Aaron Burbridge
43	Artie Burns
44	Juston Burris
45	Deon Bush
46	Vernon Butler
47	Devon Cajuste
48	Taveze Calhoun
49	Shilique Calhoun
50	De'Vondre Campbell
51	Player
52	Maurice Canady
53	Leonte Carroo
54	Tra Carson
55	Tevin Carter
56	Jeremy Cash
57	Joseph Cheek
58	Le'Raven Clark
59	Kenny Clark
60	Shon Coleman
61	Corey Coleman
62	Maliek Collins
63	Alex Collins
64	Jack Conklin
65	Connor Cook
66	Pharoh Cooper
67	Fahn Cooper
68	Marshaun Coprich
69	Cody Core
70	Kamalei Correa
71	James Cowser
72	Brad Craddock
73	Su'A Cravens
74	Ken Crawley
75	Joe Dahl
76	Steven Daniels
77	Sean Davis
78	Trevor Davis
79	Sheldon Day
80	Taylor Decker
81	KJ Dillon
82	Kenneth Dixon
83	Riley Dixon
84	Josh Doctson
85	Kevin Dodd
86	Brandon Doughty
87	Kenyan Drake
88	Spencer Drango
89	Jeff Driskel
90	Thomas Duarte
91	Lachlan Edwards
92	Parker Ehinger
93	Deandre Elliott
94	Ezekiel Elliott
95	Tyler Ervin
96	Kyler Fackrell
97	Ka'Imi Fairbairn
98	Jason Fanaika
99	Travis Feeney
100	Josh Ferguson
101	Leonard Floyd
102	Josh Forrest
103	D.J. Foster
104	Kavon Frazier
105	Kris Frost
106	Kendall Fuller
107	Will Fuller
108	Joshua Garnett
109	Keyarris Garrett
110	Graham Glasgow
111	Jared Goff
112	B.J. Goodson
113	Adam Gotsis
114	T.J. Green
115	Darrell Greene
116	David Grinnage
117	Glenn Gronkowski
118	Christian Hackenberg
119	Tom Hackett
120	Joe Haeg
121	Deiondre Hall
122	Javon Hargrave
123	De'Vante Harris
124	Jerald Hawkins
125	Joel Heath
126	Temarrick Hemingway
127	Hunter Henry
128	Willie Henry
129	Derrick Henry
130	Quayvon Hicks
131	Tyler Higbee
132	Rashard Higgins
133	Kevin Hogan
134	Johnny Holton
135	Austin Hooper
136	Deandre Houston-Carson
137	Xavien Howard
138	Jordan Howard
139	Germain Ifedi
140	Scooby Wright III
141	Cleveland Wallace III
142	William Jackson III
143	Vernon Hargreaves III
144	Matt Ioannidis
145	Myles Jack
146	Branden Jackson
147	Dominick Jackson
148	Andy Janovich
149	Quinton Jefferson
150	Jordan Jenkins
151	Devon Johnson
152	Austin Johnson
153	C.J. Johnson
154	Tyler Johnstone
155	Cardale Jones
156	Cayleb Jones
157	Chris Jones
158	Cyrus Jones
159	Deion Jones
160	Jonathan Jones
161	Karl Joseph
162	Matt Judon
163	Ufomba Kamalu
164	Drew Kaser
165	Nila Kasitati
166	Bronson Kaufusi
167	Jayron Kearse
168	Ryan Kelly
169	Cody Kessler
170	Miles Killebrew
171	Derrick Kindred
172	Raphael Kirby
173	Denver Kirkland
174	Marshall Koehn
175	Nick Kwiatkoski
176	Jimmy Landes
177	Daniel Lasco
178	Darius Latham
179	Kenny Lawler
180	Nile Lawrence-Stample
181	Shaq Lawson
182	Darron Lee
183	Alex Lewis
184	Roger Lewis
185	Kolby Listenbee
186	Cory Littleton
187	Jordan Lomax
188	Steve Longa
189	Ricardo Louis
190	Dean Lowry
191	Jordan Lucas
192	John Lunsford
193	Paxton Lynch
194	Tre Madden
195	Luther Maddy
196	Curt Maggitt
197	Ryan Malleck
198	Byron Marshall
199	Jalin Marshall
200	Keith Marshall
201	Nick Martin
202	Blake Martinez
203	Tyler Marz
204	Tyler Matakevich
205	Chris Mayes
206	Alex McCalister
207	Jake McGee
208	Connor McGovern
209	Mekale McKay
210	Cassanova McKinzy
211	Harlan Miller
212	Braxton Miller
213	Jalen Mills
214	Malcolm Mitchell
215	Will Monday
216	Chris Moore
217	David Morgan
218	Antonio Morrison
219	Kyle Murphy
220	Eric Murray
221	Carl Nassib
222	Keanu Neal
223	Stephane Nembot
224	Giorgio Newberry
225	Yannick Ngakoue
226	Dadi Nicolas
227	Robert Nkemdiche
228	Jared Norris
229	Marquez North
230	Nick O'Toole
231	Shawn Oakman
232	Jaden Oberkrom
233	Victor Ochi
234	Rees Odhiambo
235	Emmanuel Ogbah
236	Romeo Okwara
237	Drew Ott
238	Montese Overton
239	Gionni Paul
240	Jordan Payton
241	Charone Peake
242	Paul Perkins
243	Joshua Perry
244	Kevin Peterson
245	D.J. Pettway
246	Tyvis Powell
247	Dak Prescott
248	C.J. Prosise
249	Jimmy Pruitt
250	Reggie Ragland
251	Jalen Ramsey
252	Sheldon Rankins
253	D.J. Reader
254	Will Redmond
255	Alex Redmond
256	Jarran Reed
257	Hassan Ridgeway
258	Dominique Robertson
259	Rashard Robinson
260	Demarcus Robinson
261	A'Shawn Robinson
262	Keivarae Russell
263	Alonzo Russell
264	Zack Sanchez
265	Beau Sandland
266	Joe Schobert
267	Rashawn Scott
268	Isaac Seumalo
269	Kevon Seymour
270	Hunter Sharp
271	Tajae Sharpe
272	Brandon Shell
273	Sterling Shepard
274	Elijah Shumate
275	Devaunte Sigler
276	Justin Simmons
277	Leshaun Sims
278	Matt Skura
279	Pearce Slater
280	Wendell Smallwood
281	Terrance Smith
282	Ryan Smith
283	Jaylon Smith
284	Noah Spence
285	Jason Spriggs
286	Nelson Spruce
287	A.J. Stamps
288	Ronnie Stanley
289	Joel Stave
290	Eric Striker
291	Nate Sudfeld
292	Charles Tapper
293	Kelvin Taylor
294	John Theus
295	Michael Thomas
296	Lawrence Thomas
297	Ron Thompson
298	Darian Thompson
299	Shadrach Thornton
300	Joe Thuney
301	Cole Toner
302	Laquon Treadwell
303	Sebastian Tretola
304	Max Tuerk
305	Laremy Tunsil
306	Landon Turner
307	Soma Vainuku
308	Halapoulivaati Vaitai
309	Vincent Valentine
310	Nick Vannett
311	Nick Vigil
312	Dan Vitale
313	Jihad Ward
314	Deandre Washington
315	Adolphus Washington
316	Stephen Weatherly
317	Carson Wentz
318	Christian Westerman
319	D.J. White
320	Cody Whitehair
321	Brandon Wilds
322	Jonathan Williams
323	Bryce Williams
324	Brandon Williams
325	Duke Williams
326	De'Runnya Wilson
327	Josh Woodrum
328	Antwaun Woods
329	Daryl Worley
330	Connor Wujciak
331	Tavon Young
332	Avery Young
333	Anthony Zettel
334	Rodney Adams
335	Montravius Adams
336	Jamal Adams
337	Quincy Adeboyejo
338	Jonathan Allen
339	Brian Allen
340	Ryan Anderson
341	Alex Anzalone
342	Isaac Asiata
343	Erik Austell
344	Chidobe Awuzie
345	Toby Baker
346	Budda Baker
347	Zach Banner
348	Derek Barnett
349	Tarell Basham
350	C.J. Beathard
351	Kendell Beckwith
352	Vince Biegel
353	Adam Bisnowaty
354	Garrett Bolles
355	Ben Boulware
356	Kendrick Bourne
357	Tashawn Bower
358	Tyus Bowser
359	Ben Braden
360	Caleb Brantley
361	Pharaoh Brown
362	Noah Brown
363	Jayon Brown
364	Fadol Brown
365	Blair Brown
366	Billy Brown
367	Daniel Brunskill
368	Collin Buchanan
369	Riley Bullough
370	Harrison Butker
371	Jake Butt
372	K.D. Cannon
373	Josh Carraway
374	Chris Carson
375	Jamal Carter
376	Cethan Carter
377	Taco Charlton
378	Jehu Chesson
379	Jeremy Clark
380	Chuck Clark
381	Corey Clement
382	Chunky Clements
383	Tarik Cohen
384	Stacy Coley
385	Aviante Collins
386	Gareon Conley
387	James Conner
388	Dalvin Cook
389	Ethan Cooper
390	Zach Cunningham
391	Darrell Daniels
392	Amara Darboh
393	Julien Davenport
394	Robert Davis
395	Kevin Davis
396	Keionta Davis
397	Justin Davis
398	Jarrad Davis
399	Corey Davis
400	Dion Dawkins
401	Matthew Dayes
402	Treston DeCoud
403	J.J. Dielman
404	Joshua Dobbs
405	Dylan Donahue
406	Rasul Douglas
407	Jessamen Dunker
408	Malachi Dupre
409	Travin Dural
410	Ken Ekanem
411	Corn Elder
412	Pat Elflein
413	Jake Elliott
414	Brooks Ellis
415	Jermaine Eluemunor
416	Evan Engram
417	Amba Etta-Tawo
418	Justin Evans
419	Jerod Evans
420	Gerald Everett
421	Dan Feeney
422	Devonte Fields
423	Johnathan Ford
424	Isaiah Ford
425	D'Onta Foreman
426	Reuben Foster
427	Leonard Fournette
428	Kyle Fuller
429	Wayne Gallman
430	Antonio Garcia
431	Myles Garrett
432	Davon Gaudchaux
433	Ben Gedeon
434	Avery Gennesy
435	Nate Gerry
436	Shelton Gibson
437	Ryan Glasgow
438	Chris Godwin
439	Kenny Golladay
440	Zane Gonzalez
441	Shaquill Griffin
442	Nate Hairston
443	Daeshon Hall
444	Chad Hansen
445	Sean Harlow
446	Connor Harris
447	Charles Harris
448	Josh Harvey-Clemons
449	Keon Hatcher
450	DeAngelo Henderson
451	Carlos Henderson
452	Trey Hendrickson
453	Treyvon Hester
454	Cole Hikutini
455	Delano Hill
456	Brian Hill
457	Bucky Hodges
458	Colin Holba
459	Will Holden
460	Mack Hollins
461	Elijah Hood
462	Malik Hooker
463	O.J. Howard
464	Bug Howard
465	Marlon Humphrey
466	Hayden Hunt
467	Kareem Hunt
468	Rushel Shell III
469	Danny Isidora
470	Eddie Jackson
471	Adoree Jackson
472	Rayshawn Jenkins
473	Roderick Johnson
474	John Johnson
475	Jaleel Johnson
476	Jadar Johnson
477	Dorian Johnson
478	Cameron Johnston
479	Zay Jones
480	Sidney Jones
481	Nazair Jones
482	Josh Jones
483	Jarron Jones
484	D.J. Jones
485	Aaron Jones
486	Deatrich Wise Jr.
487	Greg Ward Jr.
488	Anthony Walker Jr.
489	Bryan Cox Jr.
490	Victor Bolden Jr.
491	Brad Kaaya
492	Alvin Kamara
493	Damontae Kazee
494	Keith Kelsey
495	Kevin King
496	Desmond King
497	George Kittle
498	DeShone Kizer
499	Trevor Knight
500	Tanoh Kpassagnon
501	Cooper Kupp
502	Forrest Lamp
503	Ashton Lampkin
504	Jerome Lane
505	Harvey Langi
506	Marshon Lattimore
507	Carl Lawson
508	Javarius Leamon
509	Jeremiah Ledbetter
510	Marquel Lee
511	Cameron Lee
512	Jordan Leggett
513	Mitch Leidner
514	Corey Levin
515	Jourdan Lewis
516	William Likely
517	Sefo Liufau
518	T.J. Logan
519	Shalom Luani
520	Keevan Lucas
521	Marlon Mack
522	Patrick Mahomes
523	Josh Malone
524	Damien Mama
525	Gabe Marks
526	Joe Mathis
527	Arthur Maulet
528	Marcus Maye
529	Christian McCaffrey
530	Conor McDermott
531	Malik McDowell
532	Elijah McGuire
533	Isaiah McKenzie
534	Takkarist McKinley
535	Raekwon McMillan
536	Jeremy McNichols
537	Obi Melifonwu
538	Matt Milano
539	Fabian Moreau
540	Jordan Morgan
541	Drew Morgan
542	Avery Moss
543	Taylor Moton
544	Al-Quadin Muhammad
545	Jalen Myrick
546	Montae Nicholson
547	Hardy Nickerson
548	David Njoku
549	Speedy Noil
550	Bradley Northnagel
551	Noble Nwachukwu
552	Ifeadi Odenigbo
553	Dare Ogunbowale
554	Larry Ogunjobi
555	Tyler Orlosky
556	Scott Orndoff
557	Zach Pascal
558	Jabrill Peppers
559	Samaje Perine
560	Nathan Peterman
561	Carroll Phillips
562	Hayden Plinke
563	Ethan Pocic
564	Ejuan Price
565	Donnel Pumphrey
566	Elijah Qualls
567	James Quick
568	Ryan Ramczyk
569	Michael Rector
570	Haason Reddick
571	Devine Redding
572	Jalen Reeves-Maybin
573	Austin Rehkow
574	Josh Reynolds
575	Duke Riley
576	Derek Rivers
577	Michael Roberts
578	Jalen Robinette
579	Ezra Robinson
580	Cam Robinson
581	Isaac Rochell
582	Sam Rogers
583	Darreus Rogers
584	John Ross
585	Fred Ross
586	Chase Roullier
587	Travis Rudolph
588	Cooper Rush
589	Seth Russell
590	Curtis Samuel
591	Eric Saubert
592	Artavis Scott
593	Ricky Seals-Jones
594	Justin Senior
595	Adam Shaheen
596	David Sharpe
597	Sojourn Shelton
598	Garrett Sickels
599	Nico Siragusa
600	Dan Skipper
601	Tanzel Smart
602	Jonnu Smith
603	De'Veon Smith
604	JuJu Smith-Schuster
605	Dawuane Smoot
606	Jeremy Sprinkle
607	Jamari Staples
608	Freddie Stevenson
609	ArDarius Stewart
610	Channing Stribling
611	Cameron Sutton
612	Ryan Switzer
613	Teez Tabor
614	Cordrea Tankersley
615	Pita Taumoepenu
616	Vincent Taylor
617	Trent Taylor
618	Taywan Taylor
619	Sam Tevi
620	Nate Theaker
621	Solomon Thomas
622	Noel Thomas
623	Jahad Thomas
624	Tedric Thompson
625	Jack Tocho
626	Dalvin Tomlinson
627	Jon Toth
628	Damarius Travis
629	Mitchell Trubisky
630	Stevie Tu'Ikolovatu
631	Michael Tyson
632	Jerry Ugokwe
633	Conrad Ukropina
634	Tanner Vallejo
635	Eddie Vanderdoes
636	Justin Vogel
637	DeMarcus Walker
638	Charles Walker
639	Carlos Watkins
640	Deshaun Watson
641	T.J. Watt
642	Davis Webb
643	Dede Westbrook
644	Chad Wheeler
645	TreDavious White
646	Marquez White
647	Kermit Whitfield
648	Tim Williams
649	Stanley Williams
650	Mike Williams
651	Marcus Williams
652	Joe Williams
653	Jamaal Williams
654	Jordan Willis
655	Quincy Wilson
656	Jesus Wilson
657	Howard Wilson
658	Ahkello Witherspoon
659	Xavier Woods
660	Chris Wormley
661	Dante Pettis
662	Kemoko Turay
663	Josh Adams
664	Ola Adeniyi
665	Jordan Akins
666	Jaire Alexander
667	Austin Allen
668	Josh Allen
669	Marcus Allen
670	Mark Andrews
671	Troy Apke
672	Dorance Armstrong
673	Ade Aruna
674	Marcell Ateman
675	John Atkins
676	Anthony Averett
677	Genard Avery
678	Mike Badgley
679	Jerome Baker
680	Kalen Ballage
681	Saquon Barkley
682	J.T. Barrett
683	Jessie Bates
684	Marcus Baugh
685	Nick Bawden
686	Davin Bellamy
687	Kurt Benkert
688	Braxton Berrios
689	Keishawn Bierria
690	Quin Blanding
691	David Bright
692	Andrew Brown
693	Drew Brown
694	Orlando Brown
695	Tony Brown
696	Equanimeous St. brown
697	Taven Bryan
698	Oren Burks
699	Deontay Burnett
700	Jason Cabinda
701	Deon Cain
702	Antonio Callaway
703	Chris Campbell
704	Dylan Cantrell
705	Alex Cappa
706	Tanner Carew
707	Daniel Carlson
708	Lorenzo Carter
709	Andre Chachere
710	Sean Chandler
711	D.J. Chark
712	Geron Christian
713	Bradley Chubb
714	Nick Chubb
715	Jack Cichy
716	Will Clapp
717	Simmie Cobbs
718	Mason Cole
719	Lavon Coleman
720	Tyler Conklin
721	Austin Corbett
722	Keke Coutee
723	Chris Covington
724	Justin Crawford
725	Tyrell Crosby
726	Dane Cruikshank
727	Trevor Daniel
728	James Daniels
729	Sam Darnold
730	Marcus Davenport
731	Joseph Davidson
732	Carlton Davis
733	Duke Dawson
734	Dee Delaney
735	Nick Deluca
736	Jamil Demby
737	Matt Dickerson
738	Michael Dickson
739	Will Dissly
740	Garret Dooley
741	Chase Edmonds
742	Terrell Edmunds
743	Tremaine Edmunds
744	Duke Ejiofor
745	Deshon Elliott
746	Donnie Ernsberger
747	Leighton Vander esch
748	Danny Etling
749	Rashaan Evans
750	Brandon Facyson
751	Luke Falk
752	Rashard Fant
753	Foley Fatukasi
754	Riley Ferguson
755	Kylie Fitts
756	Minkah Fitzpatrick
757	Dimitri Flowers
758	Quinton Flowers
759	Tre Flowers
760	Robert Foster
761	Jarvion Franklin
762	John Franklin-Myers
763	Joshua Frazier
764	Royce Freeman
765	Troy Fumagalli
766	Michael Gallup
767	Nick Gates
768	Rashaan Gaulden
769	Mike Gesicki
770	Dallas Goedert
771	Colby Gossett
772	Davon Grayson
773	Rasheem Green
774	Shaquem Griffin
775	Derrius Guice
776	Grant Haley
777	Daesean Hamilton
778	Shaun dion Hamilton
779	Dashawn Hand
780	Davontae Harris
781	Marcell Harris
782	Desmond Harrison
783	Ronnie Harrison
784	Marquis Haynes
785	Taylor Hearn
786	James Hearns
787	Quadree Henderson
788	Zaycoven Henderson
789	Will Hernandez
790	Chris Herndon
791	Kyle Hicks
792	B.J. Hill
793	Holton Hill
794	Nyheim Hines
795	Jeff Holland
796	Jalyn Holmes
797	Sam Hubbard
798	Mike Hughes
799	Hayden Hurst
800	Maurice Hurst
801	Godwin Igwebuike
802	Darren Carrington II
803	Joel Iyiegbuniwe
804	Ryan Izzo
805	Darius Jackson
806	Donte Jackson
807	J.C. Jackson
808	Josh Jackson
809	Justin Jackson
810	Lamar Jackson
811	Leon Jacobs
812	Natrell Jamerson
813	Derwin James
814	Richie James
815	Malik Jefferson
816	Josey Jewell
817	Danny Johnson
818	Kerryon Johnson
819	Taron Johnson
820	Jamarco Jones
821	Justin Jones
822	Ronald Jones
823	Sam Jones
824	Jaryd Jones-Smith
825	Michael Joseph
826	Peter Kalambayi
827	Joshua Kalu
828	John Kelly
829	Kameron Kelly
830	Arden Key
831	Jamarcus King
832	Christian Kirk
833	Micah Kiser
834	Chris Lacy
835	Harold Landry
836	Jordan Lasley
837	Kyle Lauletta
838	Allen Lazard
839	Tanner Lee
840	Darius Leonard
841	Rick Leonard
842	Tyquan Lewis
843	Chase Litton
844	James Looney
845	Lowell Lotulelei
846	Avonte Maddox
847	Cole Madison
848	K.J. Malone
849	Tavares Martin
850	Hercules Mata'afa
851	Baker Mayfield
852	Ray-ray McCloud
853	Mike McCray
854	Kc McDermott
855	Tarvarus McFadden
856	Mike McGlinchey
857	R.J. McIntosh
858	Kahlil McKenzie
859	Quenton Meeks
860	Sony Michel
861	Anthony Miller
862	Kolton Miller
863	Steven Mitchell
864	D.J. Moore
865	Jmon Moore
866	Kamrin Moore
867	Skai Moore
868	Ryan Nall
869	Siran Neal
870	Nick Nelson
871	Quenton Nelson
872	Bilal Nichols
873	Parry Nickerson
874	Derrick Nnadi
875	Kendrick Norton
876	Joseph Noteboom
877	Uchenna Nwosu
878	Dorian O'daniel
879	Brian O'neill
880	Chukwuma Okorafor
881	Ogbonnia Okoronkwo
882	Isaiah Oliver
883	Brandon Parker
884	Timon Parris
885	Daron Payne
886	Rashaad Penny
887	Kamryn Pettway
888	Cam Phillips
889	Darius Phillips
890	Harrison Phillips
891	Skyler Phillips
892	Eddy Pineiro
893	Billy Price
894	Byron Pringle
895	Jacob Pugh
896	Scott Quessenberry
897	Trey Quinn
898	Frank Ragnow
899	Martinas Rankin
900	Max Redfield
901	D.J. Reed
902	Justin Reid
903	Demario Richard
904	Will Richardson
905	Calvin Ridley
906	Stephen Roberts
907	Korey Robertson
908	Javon Rolland-Jones
909	Josh Rosen
910	Olubunmi Rotimi
911	Mason Rudolph
912	Christian Sam
913	Jaylen Samuels
914	Dominick Sanders
915	Tegray Scales
916	Bo Scarbrough
917	Dalton Schultz
918	Jaleel Scott
919	Jk Scott
920	Deadrin Senat
921	Greg Senat
922	Tim Settle
923	Coleman Shelton
924	Nathan Shepherd
925	Nic Shimonek
926	Andre Smith
927	Braden Smith
928	Roquan Smith
929	Trequan Smith
930	Van Smith
931	Durham Smythe
932	Breeland Speaks
933	Taylor Stallworth
934	M.J. Stewart
935	Kentavius Street
936	Greg Stroman
937	Chandon Sullivan
938	Courtland Sutton
939	Josh Sweat
940	Auden Tate
941	Rod Taylor
942	Wyatt Teller
943	Chad Thomas
944	Ian Thomas
945	Jordan Thomas
946	Matthew Thomas
947	Roc Thomas
948	Trenton Thompson
949	Henre Toliver
950	Kevin Toliver
951	Brett Toth
952	Johnny Townsend
953	Shane Tripucka
954	Salesi Uhatafe
955	Marquez Valdes-Scantling
956	Vita Vea
957	Azeem Victor
958	Dmontre Wade
959	Akrum Wadley
960	Trey Walker
961	Levi Wallace
962	Mark Walton
963	Denzel Ward
964	Fred Warner
965	Chris Warren
966	James Washington
967	Armani Watts
968	Jester Weah
969	Toby Weathersby
970	Damon Webb
971	David Wells
972	Sean Welsh
973	Karaun White
974	Kyzir White
975	Mike White
976	Jordan Whitehead
977	Jojo Wicker
978	Jake Wieneke
979	Jordan Wilkins
980	Connor Williams
981	Darrel Williams
982	Cedrick Wilson
983	Eddy Wilson
984	Jeff Wilson
985	Javon Wims
986	Anthony Winbush
987	Ryan Winslow
988	Logan Woodside
989	Chris Worley
990	Isaiah Wynn
991	Isaac Yiadom
992	Kenny Young
993	Trevon Young
994	Johnathan Abram
995	Paul Adams
996	Nasir Adderley
997	Azeez Al-Shaair
998	Otaro Alaka
999	Dakota Allen
1000	Zach Allen
1001	Bryson Allen-Williams
1002	Jeff Allison
1003	Ugo Amadi
1004	Rodney Anderson
1005	J.J. Arcega-Whiteside
1006	Ryquell Armstead
1007	Blessuan Austin
1008	Jake Bailey
1009	Zack Bailey
1010	Derrick Baity
1011	Deandre Baker
1012	Corey Ballentine
1013	Ben Banogu
1014	Alex Barnes
1015	Alex Bars
1016	Cody Barton
1017	Jackson Barton
1018	Ryan Bates
1019	John Battle
1020	Terry Beckner
1021	Mike Bell
1022	Beau Benzschawel
1023	Marquise Blair
1024	Kendall Blanton
1025	Nick Bosa
1026	Kris Boyd
1027	Miles Boykin
1028	Garrett Bradbury
1029	Tyre Brady
1030	Jordan Brailford
1031	Nick Brossette
1032	A.J. Brown
1033	Blace Brown
1034	Jordan Brown
1035	Keenen Brown
1036	Marquise Brown
1037	Jake Browning
1038	Austin Bryant
1039	Isaiah Buggs
1040	Sean Bunting
1041	Brian Burns
1042	Ben Burr-Kirven
1043	Devin Bush
1044	Emmanuel Butler
1045	Hakeem Butler
1046	Yodny Cajuste
1047	Deion Calhoun
1048	Parris Campbell
1049	Malik Carney
1050	Blake Cashman
1051	Hamp Cheevers
1052	Demarcus Christmas
1053	L.J. Collier
1054	John Cominsky
1055	Te'von Coney
1056	Ryan Connelly
1057	C.J. Conrad
1058	Byron Cowart
1059	Jonathan Crawford
1060	Xavier Crawford
1061	Maxx Crosby
1062	Jamal Custis
1063	Dennis Daley
1064	Davante Davis
1065	Deshaun Davis
1066	Felton Davis
1067	Jamal Davis
1068	Nate Davis
1069	Ryan Davis
1070	Jamel Dean
1071	Michael Deiter
1072	Lukas Denis
1073	Andre Dillard
1074	D'Cota Dixon
1075	Johnnie Dixon
1076	Tyrel Dodson
1077	Greg Dortch
1078	Keelan Doss
1079	Ashton Dulin
1080	Jovon Durante
1081	Chuma Edoga
1082	David Edwards
1083	Mike Edwards
1084	T.J. Edwards
1085	Emeke Egbule
1086	Bobby Evans
1087	Noah Fant
1088	Rashad Fenton
1089	Jazz Ferguson
1090	Clelin Ferrell
1091	Mark Fields
1092	Ryan Finley
1093	Nick Fitzgerald
1094	Cody Ford
1095	Jack Fox
1096	Hjalte Froholdt
1097	Travis Fulgham
1098	Lamont Gaillard
1099	Greg Gaines
1100	Malik Gant
1101	Chauncey Gardner-Johnson
1102	Rashan Gary
1103	Myles Gaskin
1104	Matt Gay
1105	Zach Gentry
1106	Joe Giles-Harris
1107	Andrew Van ginkel
1108	Kevin Givens
1109	Dan Godsil
1110	Terry Godwin
1111	Carl Granderson
1112	Derwin Gray
1113	Gerri Green
1114	Donnell Greene
1115	Ethan Greenidge
1116	Dre Greenlaw
1117	Will Grier
1118	Porter Gustin
1119	Emanuel Hall
1120	Nate Hall
1121	Terez Hall
1122	Saquan Hampton
1123	Terrill Hanks
1124	Chase Hansen
1125	Mecole Hardman
1126	Kelvin Harmon
1127	Damien Harris
1128	Will Harris
1129	N'Keal Harry
1130	Montre Hartage
1131	Dwayne Haskins
1132	Phil Haynes
1133	Daniel Helm
1134	Darrell Henderson
1135	Nate Herbig
1136	Karan Higdon
1137	Justice Hill
1138	Trysten Hill
1139	T.J. Hockenson
1140	Alijah Holder
1141	Justin Hollins
1142	Elijah Holyfield
1143	Travis Homer
1144	Amani Hooker
1145	Tytus Howard
1146	Albert Huggins
1147	Lil'Jordan Humphrey
1148	Jalen Hurd
1149	Mitch Hyatt
1150	Alec Ingold
1151	Andy Isabella
1152	Martez Ivey
1153	Joe Jackson
1154	Mike Jackson
1155	Tyree Jackson
1156	Josh Jacobs
1157	Andre James
1158	Cece Jefferson
1159	Jalen Jelks
1160	Elgton Jenkins
1161	Gary Jennings
1162	Anthony Johnson
1163	Bisi Johnson
1164	Darryl Johnson
1165	Diontae Johnson
1166	Fred Johnson
1167	Gary Johnson
1168	Isaiah Johnson
1169	Jaquan Johnson
1170	Keesean Johnson
1171	Lonnie Johnson
1172	Daniel Jones
1173	Dre'Mont Jones
1174	Jordan Jones
1175	Tyler Jones
1176	Michael Jordan
1177	Kendall Joseph
1178	Vosean Joseph
1179	Kingsley Keke
1180	Brandon Knight
1181	Dawson Knox
1182	Tre Lamar
1183	Dexter Lawrence
1184	Justin Layne
1185	Jonathan Ledbetter
1186	Iman Lewis-Marshall
1187	Chris Lindstrom
1188	Greg Little
1189	Drew Lock
1190	Damarkus Lodge
1191	David Long
1192	Bryce Love
1193	Julian Love
1194	Alize Mack
1195	Daylon Mack
1196	Alexander Mattison
1197	Erik McCoy
1198	Kaleb McGary
1199	Mark McLaurin
1200	Terry McLaurin
1201	Trace McSorley
1202	D.K. Metcalf
1203	Jakobi Meyers
1204	Joshua Miles
1205	Christian Miller
1206	Jordan Miller
1207	Shareef Miller
1208	Gardner Minshew
1209	Dillon Mitchell
1210	David Montgomery
1211	Jalin Moore
1212	Foster Moreau
1213	Stanley Morgan
1214	Trayvon Mullen
1215	Byron Murphy
1216	Kyler Murray
1217	Nyqwan Murray
1218	Isaac Nauta
1219	Anthony Nelson
1220	Yosh Nijman
1221	Bobby Okereke
1222	Ed Oliver
1223	Josh Oliver
1224	Qadree Ollison
1225	Charles Omenihu
1226	Iosua Opeta
1227	Amani Oruwariye
1228	Javon Patterson
1229	Jamal Peters
1230	Ross Pierschbacher
1231	Trey Pipkins
1232	Jachai Polite
1233	Tony Pollard
1234	Ryan Pope
1235	Ben Powers
1236	Germaine Pratt
1237	Isaiah Prince
1238	Ryan Pulley
1239	Taylor Rapp
1240	Wyatt Ray
1241	Dax Raymond
1242	Sheldrick Redwine
1243	Hunter Renfrow
1244	Riley Ridley
1245	Dalton Risner
1246	Tyler Roemer
1247	Dontavius Russell
1248	Brett Rypien
1249	Dru Samia
1250	Drew Sample
1251	Deebo Samuel
1252	Miles Sanders
1253	Khalen Saunders
1254	Darnell Savage
1255	Jordan Scarlett
1256	Max Scharping
1257	Lj Scott
1258	Austin Seibert
1259	Kendall Sheffield
1260	Kyle Shurmur
1261	David Sills
1262	Devin Singletary
1263	Chris Slayton
1264	Darius Slayton
1265	Cameron Smith
1266	Irv Smith
1267	Jaylen Smith
1268	Kaden Smith
1269	Saivion Smith
1270	Sutton Smith
1271	Benny Snell
1272	Jace Sternberger
1273	Easton Stick
1274	Jarrett Stidham
1275	Ty Summers
1276	Montez Sweat
1277	Tommy Sweeney
1278	William Sweet
1279	Jordan Ta'amu
1280	Sione Takitaki
1281	Trevon Tate
1282	Jahlani Tavai
1283	Jawaan Taylor
1284	Marvell Tell
1285	Derrek Thomas
1286	Cody Thompson
1287	Deionte Thompson
1288	Juan Thornhill
1289	Clayton Thorson
1290	Jerry Tillery
1291	Cole Tracy
1292	Drue Tranquill
1293	Oli Udoh
1294	D'Andre Walker
1295	Kahale Warring
1296	Armon Watts
1297	Jamarius Way
1298	Mike Weber
1299	Ken Webster
1300	Trevon Wesco
1301	Alex Wesley
1302	Antoine Wesley
1303	Darius West
1304	Devin White
1305	Christian Wilkins
1306	Dexter Williams
1307	Greedy Williams
1308	James Williams
1309	Joejuan Williams
1310	Jonah Williams
1311	Quinnen Williams
1312	Trayveon Williams
1313	Gerald Willis
1314	Khari Willis
1315	Caleb Wilson
1316	Donovan Wilson
1317	Mack Wilson
1318	Andrew Wingard
1319	Chase Winovich
1320	Daniel Wise
1321	Mitch Wishnowsky
1322	Zedrick Woods
1323	Evan Worthington
1324	Renell Wren
1325	Oshane Ximines
1326	Rock Ya-Sin
1327	Trey Adams
1328	Hakeem Adeniji
1329	McTelvin Agim
1330	Salvon Ahmed
1331	Brandon Aiyuk
1332	Cam Akers
1333	Bradlee Anae
1334	Tremayne Anchrum
1335	Jet Anderson
1336	Damon Arnette
1337	Grayland Arnold
1338	Devin Asiasi
1339	Joe Bachie
1340	Markus Bailey
1341	Trajan Bandy
1342	Ben Bartch
1343	Tyler Bass
1344	Essang Bassey
1345	Zack Baun
1346	Omar Bayless
1347	Mekhi Becton
1348	LeVante Bellamy
1349	Eno Benjamin
1350	Francis Bernard
1351	Tyler Biadasz
1352	Daniel Bituli
1353	Ross Blacklock
1354	Julian Blackmon
1355	Rodrigo Blankenship
1356	Lynn Bowden
1357	Shaun Bradley
1358	Ben Bredeson
1359	Jacob Breeland
1360	Jordyn Brooks
1361	Cameron Brown
1362	Derrick Brown
1363	Harrison Bryant
1364	Hunter Bryant
1365	Kelly Bryant
1366	Myles Bryant
1367	Terrell Burgess
1368	Joe Burrow
1369	Cohl Cabral
1370	Lawrence Cager
1371	Raymond Calais
1372	Marquez Callaway
1373	Shyheim Carter
1374	Quintez Cephus
1375	K'Lavon Chaisson
1376	Saahdiq Charles
1377	Joseph Charlton
1378	Jeremy Chinn
1379	Cameron Clark
1380	Nevelle Clarke
1381	Chase Claypool
1382	Rodney Clemons
1383	Ezra Cleveland
1384	Tyrie Cleveland
1385	Josiah Coatney
1386	Nick Coe
1387	Kendall Coleman
1388	Trystan Colon-Castillo
1389	Carter Coughlin
1390	Isaiah Coulter
1391	Kamren Curl
1392	Lloyd Cushenberry
1393	DeeJay Dallas
1394	Darrion Daniels
1395	Cameron Dantzler
1396	Kevin Davidson
1397	Marlon Davidson
1398	Ashtyn Davis
1399	Carlos Davis
1400	Gabriel Davis
1401	Javaris Davis
1402	Khalil Davis
1403	Quartney Davis
1404	Raekwon Davis
1405	Akeem Davis-Gaither
1406	Josiah Deguara
1407	Grant Delpit
1408	Trevon Diggs
1409	AJ Dillon
1410	Michael Divinity
1411	J.K. Dobbins
1412	Rico Dowdle
1413	Jack Driscoll
1414	Kyle Dugger
1415	Yasir Durant
1416	Devin Duvernay
1417	Troy Dye
1418	Jacob Eason
1419	Bryan Edwards
1420	Clyde Edwards-Helaire
1421	Jalen Elliott
1422	Jordan Elliott
1423	A.J. Epenesa
1424	Darrynton Evans
1425	Blake Ferguson
1426	Chris Finke
1427	Leki Fotu
1428	Jake Fromm
1429	Aaron Fuller
1430	Jordan Fuller
1431	Kristian Fulton
1432	Tipa Galeai
1433	Neville Gallimore
1434	Antonio Gandy-Golden
1435	Cale Garrett
1436	Jonathan Garvin
1437	Antonio Gibson
1438	Alohi Gilman
1439	Trevis Gipson
1440	Jeff Gladney
1441	Anthony Gordon
1442	A.J. Green
1443	Jonathan Greenard
1444	Yetur Gross-Matos
1445	Javelin Guidry
1446	Stephen Guidry
1447	Bryce Hall
1448	DaVon Hamilton
1449	LaDarius Hamilton
1450	KJ Hamler
1451	Harrison Hand
1452	Jake Hanson
1453	Nick Harris
1454	Scoota Harris
1455	Malik Harrison
1456	JaMycal Hasty
1457	Jaylinn Hawkins
1458	Charlie Heck
1459	C.J. Henderson
1460	Matt Hennessy
1461	Justin Herbert
1462	Brian Herrien
1463	Justin Herron
1464	Tee Higgins
1465	Alex Highsmith
1466	John Hightower
1467	K.J. Hill
1468	Lavert Hill
1469	Trevon Hill
1470	Isaiah Hodgins
1471	Sterling Hofrichter
1472	Darnay Holmes
1473	Brycen Hopkins
1474	Khaleke Hudson
1475	Robert Hunt
1476	Jalen Hurts
1477	Noah Igbinoghene
1478	Brian Cole II
1479	Rashard Lawrence II
1480	Reggie Robinson II
1481	Henry Ruggs III
1482	Keith Ismael
1483	Cordel Iwuagwu
1484	Austin Jackson
1485	Dane Jackson
1486	Jonah Jackson
1487	Trishton Jackson
1488	Justin Jefferson
1489	Van Jefferson
1490	Anfernee Jennings
1491	Jauan Jennings
1492	Jerry Jeudy
1493	Collin Johnson
1494	Jaylon Johnson
1495	Juwan Johnson
1496	Tyler Johnson
1497	Clay Johnston
1498	Benito Jones
1499	Brandon Jones
1500	Joshua Jones
1501	Tony Jones
1502	Antoine Brooks Jr.
1503	Willie Gay Jr.
1504	Laviska Shenault Jr.
1505	Antoine Winfield Jr.
1506	Azur Kamara
1507	Khalid Kareem
1508	Dalton Keene
1509	Joshua Kelley
1510	BoPete Keyes
1511	Solomon Kindley
1512	Javon Kinlaw
1513	Cole Kmet
1514	CeeDee Lamb
1515	Javon Leake
1516	Benny LeMay
1517	Shane Lemieux
1518	Brian Lewerke
1519	Damien Lewis
1520	Terrell Lewis
1521	Kalija Lipscomb
1522	Jordan Love
1523	Jake Luton
1524	James Lynch
1525	Austin Mack
1526	Jordan Mack
1527	Justin Madubuike
1528	Braden Mann
1529	Kamal Martin
1530	Cole McDonald
1531	Anthony McFarland
1532	Sean McKeon
1533	Xavier McKinney
1534	Colton McKivitz
1535	Josh Metellus
1536	Chris Miller
1537	Denzel Mims
1538	John Molchon
1539	JJ Molson
1540	Steven Montez
1541	Darnell Mooney
1542	James Morgan
1543	Thaddeus Moss
1544	Zack Moss
1545	Larrell Murchison
1546	Kenneth Murray
1547	Tanner Muse
1548	Netane Muti
1549	Lucas Niang
1550	C.J. O'Grady
1551	Michael Ojemudia
1552	Jeff Okudah
1553	Julian Okwara
1554	Albert Okwuegbunam
1555	Sewo Olonilua
1556	Dante Olson
1557	Mike Onwenu
1558	K.J. Osborn
1559	Aaron Parker
1560	Colby Parkinson
1561	Dezmon Patmon
1562	Shea Patterson
1563	Matt Peart
1564	Alex Pechin
1565	John Penisini
1566	Donovan Peoples-Jones
1567	La'Mical Perine
1568	Malcolm Perry
1569	Jacob Phillips
1570	Scottie Phillips
1571	Tyre Phillips
1572	James Pierre
1573	Michael Pinckney
1574	Jared Pinkney
1575	Danny Pinter
1576	Michael Pittman
1577	Troy Pride
1578	James Proche
1579	Shaquille Quarterman
1580	Patrick Queen
1581	Jalen Reagor
1582	J.R. Reed
1583	Joe Reed
1584	John Reid
1585	Chauncey Rivers
1586	Malcolm Roach
1587	Amik Robertson
1588	Alton Robinson
1589	James Robinson
1590	Kendrick Rogers
1591	Cesar Ruiz
1592	Jon Runyan
1593	Chapelle Russell
1594	Stanford Samuels
1595	Josiah Scott
1596	Qaadir Sheppard
1597	Isaiah Simmons
1598	John Simpson
1599	Arryn Siposs
1600	James Smith-Williams
1601	L'Jarius Sneed
1602	Nate Stanley
1603	Terence Steele
1604	Logan Stenberg
1605	Simon Stepaniak
1606	Darrell Stewart
1607	Geno Stone
1608	Justin Strnad
1609	Jason Strowbridge
1610	Stephen Sullivan
1611	Freddie Swain
1612	D'Andre Swift
1613	Tua Tagovailoa
1614	Charlie Taumoepeau
1615	Alex Taylor
1616	Darrell Taylor
1617	Davion Taylor
1618	J.J. Taylor
1619	Jonathan Taylor
1620	Patrick Taylor
1621	A.J. Terrell
1622	Andrew Thomas
1623	Daniel Thomas
1624	Jeff Thomas
1625	Stantley Thomas-Oliver
1626	Calvin Throckmorton
1627	Casey Toohill
1628	Tommy Townsend
1629	Adam Trautman
1630	Michael Turk
1631	Derrek Tuszka
1632	Josh Uche
1633	Ke'Shawn Vaughn
1634	Ben Victor
1635	Kindle Vildor
1636	Mykal Walker
1637	K'Von Wallace
1638	Prince Tega Wanogho
1639	Mike Warren
1640	Broderick Washington
1641	Quez Watkins
1642	Curtis Weaver
1643	Evan Weaver
1644	Cody White
1645	Mitchell Wilcox
1646	Kenny Willekes
1647	Darryl Williams
1648	Raequan Williams
1649	Jedrick Wills
1650	Isaiah Wilson
1651	Logan Wilson
1652	Rob Windsor
1653	Tristan Wirfs
1654	Steven Wirtel
1655	Charlie Woerner
1656	D.J. Wonnum
1657	Dom Wood-Anderson
1658	David Woodward
1659	Chase Young
1660	Jabari Zuniga
1661	Jared Goff †
1662	Carson Wentz †
1663	Joey Bosa †
1664	Ezekiel Elliott †
1665	Jalen Ramsey †
1666	Ronnie Stanley †
1667	DeForest Buckner †
1668	Vernon Hargreaves
1669	Laremy Tunsil †
1670	Keanu Neal †
1671	Ryan Kelly †
1672	Kenny Clark †
1673	Selection forfeited [Forfeited 1]
1674	Jaylon Smith †
1675	Chris Jones †
1676	Xavien Howard †
1677	Derrick Henry †
1678	Michael Thomas †
1679	Deion Jones †
1680	Su'a Cravens
1681	Cody Whitehair †
1682	T. J. Green
1683	James Bradberry †
1684	Kevin Byard †
1685	Yannick Ngakoue †
1686	KeiVarae Russell
1687	Austin Hooper †
1688	C. J. Prosise
1689	Selection forfeited.[Forfeited 2]
1690	Justin Simmons †
1691	Joe Schobert †
1692	B. J. Goodson
1693	Pharoh Cooper †
1694	David Onyemata
1695	Deiondre' Hall
1696	Dak Prescott †
1697	Seth DeValve
1698	DeAndré Washington
1699	Matt Judon †
1700	Jordan Howard †
1701	Selection forfeited during the 2015 Supplemental draft.[Forfeited 3]
1702	Selection forfeited .[Forfeited 4]
1703	LeShaun Sims
1704	K. J. Dillon
1705	Tyreek Hill †
1706	D. J. Reader
1707	Marqui Christian
1708	Antwione Williams
1709	Trey Caldwell
1710	Jatavis Brown
1711	D. J. White
1712	Moritz Böhringer
1713	Tyrone Holmes
1714	Keenan Reynolds
1715	DeAndre Houston-Carson
1716	Jakeem Grant
1717	David Morgan II
1718	Jake Rudock
1719	Cory James
1720	Wes Schweitzer
1721	Blake Countess
1722	Derek Watt
1723	Mike Thomas
1724	Kamu Grugier-Hill
1725	Elandon Roberts
1726	Joey Hunt
1727	Rico Gathers
1728	Will Parks
1729	Ted Karras
1730	Aaron Wallace
1731	Donavon Clark
1732	Devin Lucien
1733	Jonathan Woodard
1734	Daniel Braverman
1735	Dwayne Washington
1736	Devin Fuller
1737	Trevor Bates
1738	Clayton Fejedelem
1739	Zac Brooks
1740	Prince Charles Iworah
1741	Scooby Wright
1742	Joe Walker
1743	Kalan Reed
1744	Myles Garrett †
1745	Mitchell Trubisky †
1746	Jamal Adams †
1747	Christian McCaffrey †
1748	Patrick Mahomes †
1749	Marshon Lattimore †
1750	Deshaun Watson †
1751	Marlon Humphrey †
1752	Adoree' Jackson
1753	O. J. Howard
1754	Garett Bolles
1755	Evan Engram †
1756	Tre'Davious White †
1757	T. J. Watt †
1758	Budda Baker †
1759	Dalvin Cook †
1760	Joe Mixon
1761	JuJu Smith-Schuster †
1762	Alvin Kamara †
1763	Chris Godwin †
1764	Kareem Hunt †
1765	Shaquill Griffin †
1766	Lano Hill
1767	Kenny Golladay †
1768	Chad Williams
1769	Brendan Langley
1770	C. J. Beathard
1771	James Conner †
1772	Eddie Jackson †
1773	Selection from New Orleans [R4 - 8] forfeited d.[Forfeited/Penalized 1]
1774	Tarik Cohen †
1775	Samson Ebukam
1776	Selection moved down twelve spots [Forfeited/Penalized 2]
1777	Julién Davenport
1778	Grover Stewart
1779	George Kittle †
1780	Jamal Agnew
1781	Treston Decoud
1782	Selection forfeited [Forfeited/Penalized 3]
1783	DeAngelo Yancey
1784	J. J. Dielman
1785	Davon Godchaux
1786	T. J. Logan
1787	Aaron Jones †
1788	Ukeme Eligwe
1789	Nathan Gerry
1790	Mike Tyson
1791	Alexander Armah
1792	Jordan Evans
1793	D. J. Jones
1794	De'Angelo Henderson
1795	Derrick Jones
1796	Brandon Wilson
1797	Rudy Ford
1798	Selection forfeited [Forfeited/Penalized 4]
1799	Kofi Amichia
1800	Leon McQuay
1801	Stevie Tu'ikolovatu
1802	David Moore
1803	Joey Ivie
1804	Adrian Colbert
1805	Jylan Ware
1806	Elijah Lee
1807	Joshua Holsey
1808	Brad Seaton
1809	Devante Mays
1810	Marquez Williams
1811	Khalfani Muhammad
1812	Jordan Carrell
1813	Keion Adams
1814	Pat O'Connor
1815	Mason Schreck
1816	Chad Kelly
1817	Saquon Barkley †
1818	Denzel Ward †
1819	Bradley Chubb †
1820	Quenton Nelson †
1821	Josh Allen †
1822	Minkah Fitzpatrick †
1823	Tremaine Edmunds †
1824	Derwin James †
1825	Jaire Alexander †
1826	Leighton Vander Esch †
1827	Frank Ragnow †
1828	D. J. Moore
1829	Lamar Jackson †
1830	Nick Chubb †
1831	Darius Leonard †
1832	Ronald Jones II
1833	Courtland Sutton †
1834	M. J. Stewart
1835	P. J. Hall
1836	D. J. Chark †
1837	Brian O'Neill
1838	B. J. Hill
1839	Fred Warner †
1840	Tracy Walker
1841	Orlando Brown †
1842	Mark Andrews †
1843	Tre'Quan Smith
1844	Tarvarius Moore
1845	Dorian O'Daniel
1846	DaeSean Hamilton
1847	Da'Shawn Hand
1848	Ito Smith
1849	J'Mon Moore
1850	RJ McIntosh
1851	D. J. Reed
1852	Ja'Whaun Bentley
1853	Justin Watson
1854	Michael Dickson †
1855	Daurice Fountain
1856	Jermaine Carter
1857	JK Scott
1858	Damion Ratley
1859	Folorunso Fatukasi
1860	Jacob Martin
1861	Ray-Ray McCloud
1862	Simeon Thomas
1863	DeShon Elliott
1864	Russell Gage
1865	Sebastian Joseph-Day
1866	Tremon Smith
1867	Shaun Dion Hamilton
1868	Foyesade Oluokun
1869	Boston Scott
1870	Trenton Cannon
1871	Matt Pryor
1872	Equanimeous St. Brown
1873	Cedrick Wilson Jr.
1874	Cornell Armstrong
1875	Bradley Bozeman
1876	Alex McGough
1877	Matthew Adams
1878	Jermaine Kelly
1879	Jullian Taylor
1880	Devante Downs
1881	David Williams
1882	Quentin Poling
1883	Jason Sanders
1884	Travin Howard
1885	Jordan Mailata
1886	Zaire Franklin
1887	Zach Sieler
1888	Hunter Bradley
1889	Keion Crossen
1890	Justin Lawler
1891	Logan Cooke
1892	Kendall Donnerson
1893	Korey Cunningham
1894	Austin Proehl
1895	Kyler Murray †
1896	Nick Bosa †
1897	T. J. Hockenson †
1898	Jeffery Simmons
1899	Josh Jacobs †
1900	L. J. Collier
1901	Sean Murphy-Bunting
1902	Elgton Jenkins †
1903	Irv Smith Jr.
1904	A. J. Brown †
1905	Lonnie Johnson Jr.
1906	Mecole Hardman †
1907	J. J. Arcega-Whiteside
1908	DK Metcalf †
1909	Selection forfeited during the 2018 supplemental draft.[Forfeited 1]
1910	Jaylon Ferguson
1911	Quincy Williams
1912	C. J. Gardner-Johnson
1913	Gary Jennings Jr.
1914	Benny Snell Jr.
1915	Iman Marshall
1916	Wes Martin
1917	Ugochukwu Amadi
1918	Marvell Tell III
1919	Andrew Van Ginkel
1920	Michael Jackson
1921	Jake Bailey †
1922	E. J. Speed
1923	Cole Holcomb
1924	KeeSean Johnson
1925	Justin Skule
1926	Ka'dar Hollman
1927	Ty Johnson
1928	Selection forfeited during the 2018 supplemental draft.[Forfeited 2]
1929	Juwann Winfree
1930	David Long Jr.
1931	Drew Forbes
1932	Marcus Epps
1933	Tim Harris
1934	Marcus Green
1935	Duke Shelley
1936	Ulysees Gilbert III
1937	Scotty Miller
1938	Darwin Thompson
1939	Nick Allegretti
1940	Cullen Gillaspia
1941	Donnie Lewis
1942	Kerrith Whyte
1943	Jimmy Moreland
1944	P. J. Johnson
1945	Quinton Bell
1946	Alizé Mack
1947	George Asafo-Adjei
1948	Chandler Cox
1949	John Ursua
1950	Stephen Denmark
1951	Cortez Broughton
1952	Nick Scott
1953	Kaden Elliss
1954	Michael Dogbe
1955	Austin Cutting
1956	Chase Young †
1957	C. J. Henderson
1958	Henry Ruggs
1959	A. J. Terrell
1960	Justin Jefferson †
1961	Michael Pittman Jr.
1962	Laviska Shenault
1963	K. J. Hamler
1964	A. J. Epenesa
1965	J. K. Dobbins
1966	A. J. Dillon
1967	Willie Gay
1968	D. J. Wonnum
1969	Reggie Robinson
1970	Anthony McFarland Jr.
1971	Rashard Lawrence
1972	Kevin Dotson
1973	Kenny Robinson
1974	Selection forfeited during the 2019 supplemental draft. [Forfeited 1]
1975	Justin Rohrwasser
1976	Broderick Washington Jr.
1977	Jason Huntley
1978	K. J. Osborn
1979	Mike Danna
1980	Michael Onwenu
1981	Cam Brown
1982	Bravvion Roy
1983	Jon Runyan Jr.
1984	Robert Windsor
1985	Antoine Brooks
1986	Blake Brandel
1987	Cassh Maluia
1988	Tyler Davis
1989	Isaiah Rodgers
1990	Jordan Glasgow
1991	K. J. Hill
1992	Chris Claybrooks
1993	Arlington Hambright
1994	Lachavious Simmons
1995	Dustin Woodard
1996	Ben DiNucci
1997	Jashon Cornell
1998	Vernon Scott
1999	Thakarius Keyes
2000	T. J. Brunson
2001	Tommy Stevens
2002	Chris Jackson
2003	Chris Williamson
2004	Sam Sloman
2005	Kyle Hinton
2006	Tae Crowder
\.


--
-- Name: player_player_id_seq; Type: SEQUENCE SET; Schema: public; Owner: football
--

SELECT pg_catalog.setval('public.player_player_id_seq', 2006, true);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: football
--

COPY public.teams (player_id, "NFL_Team") FROM stdin;
1661	Los Angeles Rams
1662	Philadelphia Eagles
1663	San Diego Chargers
1664	Dallas Cowboys
1665	Jacksonville Jaguars
1666	Baltimore Ravens
1667	San Francisco 49ers
64	Tennessee Titans
101	Chicago Bears
13	New York Giants
1668	Tampa Bay Buccaneers
252	New Orleans Saints
1669	Miami Dolphins
161	Oakland Raiders
61	Cleveland Browns
80	Detroit Lions
1670	Atlanta Falcons
1671	Indianapolis Colts
181	Buffalo Bills
182	New York Jets
107	Houston Texans
84	Washington Redskins
302	Minnesota Vikings
142	Cincinnati Bengals
43	Pittsburgh Steelers
193	Denver Broncos
1672	Green Bay Packers
108	San Francisco 49ers
1673	New England Patriots
227	Arizona Cardinals
46	Carolina Panthers
139	Seattle Seahawks
235	Cleveland Browns
85	Tennessee Titans
1674	Dallas Cowboys
127	San Diego Chargers
145	Jacksonville Jaguars
1675	Kansas City Chiefs
1676	Miami Dolphins
284	Tampa Bay Buccaneers
273	New York Giants
250	Buffalo Bills
70	Baltimore Ravens
152	Tennessee Titans
313	Oakland Raiders
1677	Tennessee Titans
261	Detroit Lions
1678	New Orleans Saints
285	Green Bay Packers
256	Seattle Seahawks
201	Houston Texans
118	New York Jets
1679	Atlanta Falcons
1680	Washington Redskins
6	Minnesota Vikings
29	Cincinnati Bengals
1681	Chicago Bears
1682	Indianapolis Colts
77	Pittsburgh Steelers
5	Tampa Bay Buccaneers
158	New England Patriots
19	New Orleans Saints
1683	Carolina Panthers
113	Denver Broncos
1684	Tennessee Titans
221	Cleveland Browns
304	San Diego Chargers
62	Dallas Cowboys
254	San Francisco 49ers
1685	Jacksonville Jaguars
166	Baltimore Ravens
298	New York Giants
41	Chicago Bears
87	Miami Dolphins
1686	Kansas City Chiefs
49	Oakland Raiders
60	Cleveland Browns
329	Carolina Panthers
300	New England Patriots
268	Philadelphia Eagles
315	Buffalo Bills
1687	Atlanta Falcons
58	Indianapolis Colts
150	New York Jets
106	Washington Redskins
212	Houston Texans
53	Miami Dolphins
311	Cincinnati Bengals
96	Green Bay Packers
122	Pittsburgh Steelers
1688	Seattle Seahawks
1689	Kansas City Chiefs
34	New England Patriots
324	Arizona Cardinals
169	Cleveland Browns
310	Seattle Seahawks
110	Detroit Lions
309	New England Patriots
234	Seattle Seahawks
1690	Denver Broncos
1691	Cleveland Browns
65	Oakland Raiders
292	Dallas Cowboys
243	San Diego Chargers
79	Jacksonville Jaguars
331	Baltimore Ravens
92	Kansas City Chiefs
220	Kansas City Chiefs
216	Baltimore Ravens
282	Tampa Bay Buccaneers
1692	New York Giants
131	Los Angeles Rams
170	Detroit Lions
214	New England Patriots
175	Chicago Bears
189	Cleveland Browns
50	Atlanta Falcons
257	Indianapolis Colts
1693	Los Angeles Rams
44	New York Jets
95	Houston Texans
1694	New Orleans Saints
18	Minnesota Vikings
21	Cincinnati Bengals
124	Pittsburgh Steelers
45	Chicago Bears
218	Indianapolis Colts
260	Kansas City Chiefs
1695	Chicago Bears
25	Arizona Cardinals
171	Cleveland Browns
183	Baltimore Ravens
202	Green Bay Packers
128	Baltimore Ravens
259	San Francisco 49ers
82	Baltimore Ravens
1696	Dallas Cowboys
27	Denver Broncos
190	Green Bay Packers
1697	Cleveland Browns
155	Buffalo Bills
271	Tennessee Titans
264	Carolina Panthers
22	San Francisco 49ers
1698	Oakland Raiders
208	Denver Broncos
208	Dallas Cowboys
294	San Francisco 49ers
1699	Baltimore Ravens
149	Seattle Seahawks
20	Tampa Bay Buccaneers
242	New York Giants
1700	Chicago Bears
75	Detroit Lions
144	Washington Redskins
280	Philadelphia Eagles
240	Cleveland Browns
1701	Los Angeles Rams
120	Indianapolis Colts
322	Buffalo Bills
1702	Atlanta Falcons
1703	Tennessee Titans
272	New York Jets
1704	Houston Texans
35	Minnesota Vikings
318	Cincinnati Bengals
133	Kansas City Chiefs
78	Green Bay Packers
308	Philadelphia Eagles
1705	Kansas City Chiefs
1706	Houston Texans
1707	Arizona Cardinals
88	Cleveland Browns
1708	Detroit Lions
301	Arizona Cardinals
63	Seattle Seahawks
132	Cleveland Browns
1709	Cleveland Browns
67	San Francisco 49ers
1710	San Diego Chargers
148	Denver Broncos
126	Los Angeles Rams
1711	Kansas City Chiefs
164	San Diego Chargers
1712	Minnesota Vikings
1713	Jacksonville Jaguars
1714	Baltimore Ravens
26	Tampa Bay Buccaneers
3	New York Giants
1715	Chicago Bears
1716	Miami Dolphins
291	Washington Redskins
1717	Minnesota Vikings
38	Dallas Cowboys
102	Los Angeles Rams
1718	Detroit Lions
185	Buffalo Bills
303	Tennessee Titans
1719	Oakland Raiders
1720	Atlanta Falcons
1721	Philadelphia Eagles
312	Tampa Bay Buccaneers
1722	San Diego Chargers
69	Cincinnati Bengals
219	Green Bay Packers
9	Jacksonville Jaguars
333	Detroit Lions
226	Kansas City Chiefs
191	Miami Dolphins
211	Arizona Cardinals
1723	Los Angeles Rams
89	San Francisco 49ers
1724	New England Patriots
52	Baltimore Ravens
176	Detroit Lions
293	San Francisco 49ers
104	Dallas Cowboys
42	San Francisco 49ers
1725	New England Patriots
1726	Seattle Seahawks
805	Dallas Cowboys
1727	Dallas Cowboys
269	Buffalo Bills
1728	Denver Broncos
99	Pittsburgh Steelers
1729	New England Patriots
1730	Tennessee Titans
86	Miami Dolphins
1731	San Diego Chargers
1732	New England Patriots
1733	Jacksonville Jaguars
316	Minnesota Vikings
83	Denver Broncos
14	Pittsburgh Steelers
1734	Chicago Bears
90	Miami Dolphins
76	Washington Redskins
213	Philadelphia Eagles
8	Oakland Raiders
91	New York Jets
1735	Detroit Lions
177	New Orleans Saints
1736	Atlanta Falcons
1737	Indianapolis Colts
206	Philadelphia Eagles
241	New York Jets
200	Washington Redskins
179	Seattle Seahawks
167	Minnesota Vikings
1738	Cincinnati Bengals
204	Pittsburgh Steelers
1739	Seattle Seahawks
23	Indianapolis Colts
1740	San Francisco 49ers
1741	Cleveland Browns
1742	Philadelphia Eagles
265	Carolina Panthers
1743	Tennessee Titans
1744	Cleveland Browns
1745	Chicago Bears
621	San Francisco 49ers
427	Jacksonville Jaguars
399	Tennessee Titans
1746	New York Jets
650	Los Angeles Chargers
1747	Carolina Panthers
584	Cincinnati Bengals
1748	Kansas City Chiefs
1749	New Orleans Saints
1750	Houston Texans
570	Arizona Cardinals
348	Philadelphia Eagles
462	Indianapolis Colts
1751	Baltimore Ravens
338	Washington Redskins
1752	Tennessee Titans
1753	Tampa Bay Buccaneers
1754	Denver Broncos
398	Detroit Lions
447	Miami Dolphins
1755	New York Giants
386	Oakland Raiders
558	Cleveland Browns
534	Atlanta Falcons
1756	Buffalo Bills
377	Dallas Cowboys
548	Cleveland Browns
1757	Pittsburgh Steelers
426	San Francisco 49ers
568	New Orleans Saints
495	Green Bay Packers
580	Jacksonville Jaguars
531	Seattle Seahawks
1758	Arizona Cardinals
479	Buffalo Bills
502	Los Angeles Chargers
528	New York Jets
590	Carolina Panthers
1759	Minnesota Vikings
651	New Orleans Saints
480	Philadelphia Eagles
420	Los Angeles Rams
595	Chicago Bears
655	Indianapolis Colts
358	Baltimore Ravens
1760	Cincinnati Bengals
340	Washington Redskins
418	Tampa Bay Buccaneers
637	Denver Broncos
498	Cleveland Browns
613	Detroit Lions
535	Miami Dolphins
626	New York Giants
537	Oakland Raiders
390	Houston Texans
563	Seattle Seahawks
500	Kansas City Chiefs
344	Dallas Cowboys
482	Green Bay Packers
482	Arizona Cardinals
1761	Pittsburgh Steelers
400	Buffalo Bills
543	Carolina Panthers
554	Cleveland Browns
658	San Francisco 49ers
1762	New Orleans Saints
605	Jacksonville Jaguars
501	Los Angeles Rams
412	Minnesota Vikings
421	Los Angeles Chargers
618	Tennessee Titans
654	Cincinnati Bengals
660	Baltimore Ravens
575	Atlanta Falcons
341	New Orleans Saints
443	Carolina Panthers
648	Baltimore Ravens
609	New York Jets
349	Indianapolis Colts
539	Washington Redskins
451	Denver Broncos
576	New England Patriots
1763	Tampa Bay Buccaneers
430	New England Patriots
1764	Kansas City Chiefs
642	New York Giants
635	Oakland Raiders
425	Houston Texans
1765	Seattle Seahawks
474	Los Angeles Rams
515	Dallas Cowboys
335	Green Bay Packers
611	Pittsburgh Steelers
1766	Seattle Seahawks
1767	Detroit Lions
614	Miami Dolphins
1768	Arizona Cardinals
406	Philadelphia Eagles
602	Tennessee Titans
1769	Denver Broncos
481	Seattle Seahawks
452	New Orleans Saints
1770	San Francisco 49ers
1771	Pittsburgh Steelers
392	Seattle Seahawks
351	Tampa Bay Buccaneers
352	Green Bay Packers
475	Minnesota Vikings
643	Jacksonville Jaguars
624	Seattle Seahawks
1772	Chicago Bears
472	Los Angeles Chargers
559	Washington Redskins
477	Arizona Cardinals
507	Cincinnati Bengals
574	Los Angeles Rams
1773	New England Patriots
460	Philadelphia Eagles
1774	Chicago Bears
433	Minnesota Vikings
652	San Francisco 49ers
599	Baltimore Ravens
546	Washington Redskins
572	Detroit Lions
1775	Los Angeles Rams
657	Cleveland Browns
577	Detroit Lions
523	Cincinnati Bengals
1776	New York Giants
596	Oakland Raiders
1777	Houston Texans
486	New England Patriots
565	Philadelphia Eagles
612	Dallas Cowboys
653	Green Bay Packers
404	Pittsburgh Steelers
445	Atlanta Falcons
347	Indianapolis Colts
437	Cincinnati Bengals
378	Kansas City Chiefs
429	New York Giants
444	New York Jets
639	Houston Texans
521	Indianapolis Colts
1778	Indianapolis Colts
371	Denver Broncos
1779	San Francisco 49ers
540	Chicago Bears
365	Jacksonville Jaguars
493	Atlanta Falcons
512	New York Jets
496	Los Angeles Chargers
411	Carolina Panthers
413	Cincinnati Bengals
606	Washington Redskins
363	Tennessee Titans
456	Atlanta Falcons
459	Arizona Cardinals
442	Indianapolis Colts
415	Baltimore Ravens
473	Cleveland Browns
488	Indianapolis Colts
536	Tampa Bay Buccaneers
538	Buffalo Bills
342	Miami Dolphins
1780	Detroit Lions
436	Philadelphia Eagles
542	New York Giants
510	Oakland Raiders
1781	Houston Texans
1782	Seattle Seahawks
334	Minnesota Vikings
560	Buffalo Bills
533	Denver Broncos
339	Pittsburgh Steelers
339	Los Angeles Rams
591	Atlanta Falcons
1783	Green Bay Packers
1784	Cincinnati Bengals
617	San Francisco 49ers
1785	Miami Dolphins
1786	Arizona Cardinals
469	Minnesota Vikings
405	New York Jets
1787	Green Bay Packers
1788	Kansas City Chiefs
1789	Philadelphia Eagles
360	Cleveland Browns
380	Baltimore Ravens
1790	Seattle Seahawks
532	New York Jets
601	Los Angeles Rams
619	Los Angeles Chargers
659	Dallas Cowboys
1791	Carolina Panthers
1792	Cincinnati Bengals
616	Miami Dolphins
634	Buffalo Bills
544	New Orleans Saints
379	New York Jets
1793	San Francisco 49ers
586	Washington Redskins
353	New York Giants
457	Minnesota Vikings
615	San Francisco 49ers
1794	Denver Broncos
1795	New York Jets
509	Detroit Lions
582	Los Angeles Rams
1796	Cincinnati Bengals
1797	Arizona Cardinals
394	Washington Redskins
594	Seattle Seahawks
1798	Kansas City Chiefs
530	New England Patriots
1799	Green Bay Packers
458	Pittsburgh Steelers
566	Philadelphia Eagles
491	Detroit Lions
646	Dallas Cowboys
514	Tennessee Titans
1800	Kansas City Chiefs
384	Minnesota Vikings
552	Minnesota Vikings
519	Oakland Raiders
545	Jacksonville Jaguars
1801	Tampa Bay Buccaneers
440	Cleveland Browns
581	Los Angeles Chargers
1802	Seattle Seahawks
373	Tennessee Titans
1803	Dallas Cowboys
1804	San Francisco 49ers
448	Washington Redskins
1805	Oakland Raiders
1806	Minnesota Vikings
370	Carolina Panthers
564	Los Angeles Rams
1807	Washington Redskins
1808	Tennessee Titans
424	Miami Dolphins
1809	Green Bay Packers
362	Dallas Cowboys
1810	Jacksonville Jaguars
1811	Tennessee Titans
461	Oakland Raiders
428	Houston Texans
453	Oakland Raiders
625	Minnesota Vikings
1812	Dallas Cowboys
408	Green Bay Packers
1813	Pittsburgh Steelers
374	Seattle Seahawks
1814	Detroit Lions
1815	Cincinnati Bengals
401	Cleveland Browns
1816	Denver Broncos
851	Cleveland Browns
1817	New York Giants
729	New York Jets
1818	Cleveland Browns
1819	Denver Broncos
1820	Indianapolis Colts
1821	Buffalo Bills
1821	Jacksonville Jaguars
928	Chicago Bears
856	San Francisco 49ers
909	Arizona Cardinals
1822	Miami Dolphins
956	Tampa Bay Buccaneers
885	Washington Redskins
730	New Orleans Saints
862	Oakland Raiders
1823	Buffalo Bills
1824	Los Angeles Chargers
1825	Green Bay Packers
1826	Dallas Cowboys
1827	Detroit Lions
893	Cincinnati Bengals
749	Tennessee Titans
990	New England Patriots
1828	Carolina Panthers
799	Baltimore Ravens
905	Atlanta Falcons
886	Seattle Seahawks
742	Pittsburgh Steelers
697	Jacksonville Jaguars
798	Minnesota Vikings
860	New England Patriots
1829	Baltimore Ravens
721	Cleveland Browns
789	New York Giants
1830	Cleveland Browns
1831	Indianapolis Colts
927	Indianapolis Colts
1832	Tampa Bay Buccaneers
728	Chicago Bears
1833	Denver Broncos
835	Tennessee Titans
769	Miami Dolphins
818	Detroit Lions
661	San Francisco 49ers
808	Green Bay Packers
932	Kansas City Chiefs
832	Arizona Cardinals
877	Los Angeles Chargers
770	Philadelphia Eagles
980	Dallas Cowboys
861	Chicago Bears
662	Indianapolis Colts
1834	Tampa Bay Buccaneers
683	Cincinnati Bengals
806	Carolina Panthers
733	New England Patriots
1835	Oakland Raiders
882	Atlanta Falcons
775	Washington Redskins
966	Pittsburgh Steelers
1836	Jacksonville Jaguars
1837	Minnesota Vikings
732	Tampa Bay Buccaneers
842	Indianapolis Colts
883	Oakland Raiders
708	New York Giants
943	Cleveland Browns
902	Houston Texans
1838	New York Giants
1839	San Francisco 49ers
764	Denver Broncos
924	New York Jets
679	Miami Dolphins
712	Washington Redskins
874	Kansas City Chiefs
911	Pittsburgh Steelers
797	Cincinnati Bengals
815	Cincinnati Bengals
773	Seattle Seahawks
899	Houston Texans
766	Dallas Cowboys
1840	Detroit Lions
1841	Baltimore Ravens
821	Los Angeles Chargers
768	Carolina Panthers
1842	Baltimore Ravens
830	Oakland Raiders
698	Green Bay Packers
876	Los Angeles Rams
920	Atlanta Falcons
1843	New Orleans Saints
880	Pittsburgh Steelers
783	Jacksonville Jaguars
705	Tampa Bay Buccaneers
1844	San Francisco 49ers
890	Buffalo Bills
718	Arizona Cardinals
665	Houston Texans
991	Denver Broncos
1845	Kansas City Chiefs
944	Carolina Panthers
796	Minnesota Vikings
722	Houston Texans
794	Indianapolis Colts
702	Cleveland Browns
816	Denver Broncos
790	New York Jets
837	New York Giants
671	Washington Redskins
870	Oakland Raiders
962	Cincinnati Bengals
1846	Denver Broncos
1847	Detroit Lions
803	Chicago Bears
672	Dallas Cowboys
976	Tampa Bay Buccaneers
676	Baltimore Ravens
974	Los Angeles Chargers
739	Seattle Seahawks
819	Buffalo Bills
992	Baltimore Ravens
931	Miami Dolphins
967	Kansas City Chiefs
846	Philadelphia Eagles
1848	Atlanta Falcons
841	New Orleans Saints
935	San Francisco 49ers
904	Jacksonville Jaguars
939	Philadelphia Eagles
680	Miami Dolphins
918	Baltimore Ravens
1849	Green Bay Packers
741	Arizona Cardinals
762	Los Angeles Rams
784	Carolina Panthers
917	Dallas Cowboys
847	Green Bay Packers
1850	New York Giants
800	Oakland Raiders
774	Seattle Seahawks
1851	San Francisco 49ers
1852	New England Patriots
1853	Tampa Bay Buccaneers
872	Chicago Bears
759	Seattle Seahawks
833	Los Angeles Rams
669	Pittsburgh Steelers
1854	Seattle Seahawks
677	Cleveland Browns
780	Cincinnati Bengals
726	Tennessee Titans
725	Detroit Lions
869	Buffalo Bills
896	Los Angeles Chargers
765	Denver Broncos
720	Minnesota Vikings
692	Cincinnati Bengals
1855	Indianapolis Colts
881	Los Angeles Rams
1856	Carolina Panthers
836	Baltimore Ravens
922	Washington Redskins
812	New Orleans Saints
913	Pittsburgh Steelers
942	Buffalo Bills
707	Minnesota Vikings
820	Seattle Seahawks
979	Indianapolis Colts
889	Cincinnati Bengals
975	Dallas Cowboys
1857	Green Bay Packers
952	Oakland Raiders
955	Green Bay Packers
1858	Cleveland Browns
828	Los Angeles Rams
744	Houston Texans
912	New England Patriots
873	New York Jets
1859	New York Jets
755	Chicago Bears
703	Arizona Cardinals
823	Denver Broncos
781	San Francisco 49ers
701	Indianapolis Colts
1860	Seattle Seahawks
1861	Buffalo Bills
1862	Cleveland Browns
866	New Orleans Saints
1863	Baltimore Ravens
704	Los Angeles Chargers
736	Los Angeles Rams
723	Dallas Cowboys
1864	Atlanta Falcons
1865	Los Angeles Rams
1866	Kansas City Chiefs
1867	Washington Redskins
858	Kansas City Chiefs
751	Tennessee Titans
1868	Atlanta Falcons
1869	New Orleans Saints
715	Tampa Bay Buccaneers
839	Jacksonville Jaguars
1870	New York Jets
993	Los Angeles Rams
1871	Philadelphia Eagles
1872	Green Bay Packers
1873	Dallas Cowboys
1874	Miami Dolphins
688	New England Patriots
945	Houston Texans
921	Baltimore Ravens
771	Minnesota Vikings
826	Houston Texans
1875	Baltimore Ravens
957	Oakland Raiders
689	Denver Broncos
673	Minnesota Vikings
748	New England Patriots
1876	Seattle Seahawks
1877	Indianapolis Colts
1878	Houston Texans
1879	San Francisco 49ers
985	Chicago Bears
1880	Minnesota Vikings
1881	Denver Broncos
1882	Miami Dolphins
674	Oakland Raiders
1883	Miami Dolphins
811	Jacksonville Jaguars
1884	Los Angeles Rams
844	Green Bay Packers
1885	Philadelphia Eagles
926	Carolina Panthers
1886	Indianapolis Colts
916	Dallas Cowboys
685	Detroit Lions
1887	Baltimore Ravens
1888	Green Bay Packers
814	San Francisco 49ers
936	Washington Redskins
875	Carolina Panthers
1889	New England Patriots
1890	Los Angeles Rams
716	New Orleans Saints
763	Pittsburgh Steelers
1891	Jacksonville Jaguars
1892	Green Bay Packers
988	Cincinnati Bengals
804	New England Patriots
809	Los Angeles Chargers
941	Cincinnati Bengals
940	Cincinnati Bengals
1893	Arizona Cardinals
1894	Buffalo Bills
897	Washington Redskins
1895	Arizona Cardinals
1896	San Francisco 49ers
1311	New York Jets
1090	Oakland Raiders
1304	Tampa Bay Buccaneers
1172	New York Giants
1897	Detroit Lions
1222	Buffalo Bills
1043	Pittsburgh Steelers
1310	Cincinnati Bengals
1102	Green Bay Packers
1305	Miami Dolphins
1187	Atlanta Falcons
1131	Washington Redskins
1041	Carolina Panthers
1183	New York Giants
1028	Minnesota Vikings
1898	Tennessee Titans
1087	Denver Broncos
1254	Green Bay Packers
1073	Philadelphia Eagles
1145	Houston Texans
1899	Oakland Raiders
1036	Baltimore Ravens
1276	Washington Redskins
994	Oakland Raiders
1290	Los Angeles Chargers
1900	Seattle Seahawks
1011	New York Giants
1198	Atlanta Falcons
1129	New England Patriots
1215	Arizona Cardinals
1326	Indianapolis Colts
1283	Jacksonville Jaguars
1251	San Francisco 49ers
1188	Carolina Panthers
1094	Buffalo Bills
1901	Tampa Bay Buccaneers
1214	Oakland Raiders
1245	Denver Broncos
1189	Denver Broncos
1282	Detroit Lions
1902	Green Bay Packers
1309	New England Patriots
1307	Cleveland Browns
1023	Seattle Seahawks
1197	New Orleans Saints
1013	Indianapolis Colts
1903	Minnesota Vikings
1904	Tennessee Titans
1250	Cincinnati Bengals
1252	Philadelphia Eagles
1905	Houston Texans
1256	Houston Texans
1906	Kansas City Chiefs
1907	Philadelphia Eagles
1138	Dallas Cowboys
1048	Indianapolis Colts
996	Los Angeles Chargers
1239	Los Angeles Rams
1151	Arizona Cardinals
1288	Kansas City Chiefs
1908	Seattle Seahawks
1000	Arizona Cardinals
1165	Pittsburgh Steelers
1148	San Francisco 49ers
1232	New York Jets
1223	Jacksonville Jaguars
1134	Los Angeles Rams
1909	New York Giants
1173	Denver Broncos
1236	Cincinnati Bengals
1210	Chicago Bears
1262	Buffalo Bills
1272	Green Bay Packers
1200	Washington Redskins
1319	New England Patriots
1071	Miami Dolphins
1191	Los Angeles Rams
1280	Cleveland Browns
1128	Detroit Lions
1068	Tennessee Titans
1184	Pittsburgh Steelers
1253	Kansas City Chiefs
1910	Baltimore Ravens
1295	Houston Texans
1127	New England Patriots
1016	Seattle Seahawks
1221	Indianapolis Colts
1231	Los Angeles Chargers
1081	New York Jets
1027	Baltimore Ravens
1070	Tampa Bay Buccaneers
1325	New York Giants
1181	Buffalo Bills
1086	Los Angeles Rams
1911	Jacksonville Jaguars
1083	Tampa Bay Buccaneers
1117	Carolina Panthers
1046	New England Patriots
1196	Minnesota Vikings
1045	Arizona Cardinals
1092	Cincinnati Bengals
1912	New Orleans Saints
1061	Oakland Raiders
1219	Tampa Bay Buccaneers
1193	New York Giants
1314	Indianapolis Colts
1321	San Francisco 49ers
1259	Atlanta Falcons
1192	Washington Redskins
1137	Baltimore Ravens
1249	Minnesota Vikings
1205	Carolina Panthers
1144	Tennessee Titans
1038	Detroit Lions
1096	New England Patriots
1242	Cleveland Browns
1913	Seattle Seahawks
1300	New York Jets
1914	Pittsburgh Steelers
1235	Baltimore Ravens
1132	Seattle Seahawks
1324	Cincinnati Bengals
1244	Chicago Bears
1915	Baltimore Ravens
1233	Dallas Cowboys
1168	Oakland Raiders
1292	Los Angeles Chargers
1916	Washington Redskins
1917	Seattle Seahawks
1274	New England Patriots
1099	Los Angeles Rams
1054	Atlanta Falcons
1176	Cincinnati Bengals
1212	Oakland Raiders
1207	Philadelphia Eagles
1287	Arizona Cardinals
1006	Jacksonville Jaguars
1105	Pittsburgh Steelers
1042	Seattle Seahawks
1056	New York Giants
1918	Indianapolis Colts
1104	Tampa Bay Buccaneers
1227	Detroit Lions
1178	Buffalo Bills
1116	San Francisco 49ers
1243	Oakland Raiders
1179	Green Bay Packers
1919	Miami Dolphins
1224	Atlanta Falcons
1230	Washington Redskins
1255	Carolina Panthers
1317	Cleveland Browns
1141	Denver Broncos
1050	New York Jets
1920	Dallas Cowboys
1058	New England Patriots
1195	Baltimore Ravens
1225	Houston Texans
1265	Minnesota Vikings
1921	New England Patriots
1922	Indianapolis Colts
1153	Dallas Cowboys
1273	Los Angeles Chargers
1289	Philadelphia Eagles
1294	Tennessee Titans
1082	Los Angeles Rams
1258	Cleveland Browns
1264	New York Giants
1206	Atlanta Falcons
1923	Washington Redskins
1924	Arizona Cardinals
1270	Pittsburgh Steelers
1268	San Francisco 49ers
1122	New Orleans Saints
1208	Jacksonville Jaguars
1098	Arizona Cardinals
1012	New York Giants
1169	Buffalo Bills
1312	Cincinnati Bengals
1925	San Francisco 49ers
1097	Detroit Lions
1926	Green Bay Packers
1927	Detroit Lions
1928	Washington Redskins
1929	Denver Broncos
1930	Tennessee Titans
1931	Cleveland Browns
1296	Minnesota Vikings
1932	Minnesota Vikings
1039	Pittsburgh Steelers
1293	Minnesota Vikings
1306	Green Bay Packers
1060	Houston Texans
1007	New York Jets
1201	Baltimore Ravens
1933	San Francisco 49ers
1113	Indianapolis Colts
1085	Los Angeles Chargers
1088	Kansas City Chiefs
1237	Miami Dolphins
1934	Atlanta Falcons
1143	Seattle Seahawks
1935	Chicago Bears
1126	Washington Redskins
1936	Pittsburgh Steelers
1937	Tampa Bay Buccaneers
1052	Seattle Seahawks
1065	Cincinnati Bengals
1004	Cincinnati Bengals
1063	Carolina Panthers
1316	Dallas Cowboys
1938	Kansas City Chiefs
1020	Tampa Bay Buccaneers
1939	Kansas City Chiefs
1026	Minnesota Vikings
1298	Dallas Cowboys
1112	Pittsburgh Steelers
1940	Houston Texans
1941	Cleveland Browns
1942	Chicago Bears
1034	Cincinnati Bengals
1218	Detroit Lions
1164	Buffalo Bills
1275	Green Bay Packers
1943	Washington Redskins
1277	Buffalo Bills
1944	Detroit Lions
1945	Oakland Raiders
1946	New Orleans Saints
1947	New York Giants
1948	Miami Dolphins
1103	Miami Dolphins
1247	Jacksonville Jaguars
1949	Seattle Seahawks
1110	Carolina Panthers
1950	Chicago Bears
1209	Minnesota Vikings
1017	Indianapolis Colts
1159	Dallas Cowboys
1951	Los Angeles Chargers
1952	Los Angeles Rams
1953	New Orleans Saints
1263	New York Giants
1228	Indianapolis Colts
1163	Minnesota Vikings
1204	Arizona Cardinals
1954	Arizona Cardinals
1955	Minnesota Vikings
999	Los Angeles Rams
1299	New England Patriots
1030	Washington Redskins
1315	Arizona Cardinals
1368	Cincinnati Bengals
1956	Washington Redskins
1552	Detroit Lions
1622	New York Giants
1613	Miami Dolphins
1461	Los Angeles Chargers
1362	Carolina Panthers
1597	Arizona Cardinals
1957	Jacksonville Jaguars
1649	Cleveland Browns
1347	New York Jets
1958	Las Vegas Raiders
1653	Tampa Bay Buccaneers
1512	San Francisco 49ers
1492	Denver Broncos
1959	Atlanta Falcons
1514	Dallas Cowboys
1484	Miami Dolphins
1336	Las Vegas Raiders
1375	Jacksonville Jaguars
1581	Philadelphia Eagles
1960	Minnesota Vikings
1546	Los Angeles Chargers
1591	New Orleans Saints
1331	San Francisco 49ers
1522	Green Bay Packers
1360	Seattle Seahawks
1580	Baltimore Ravens
1650	Tennessee Titans
1477	Miami Dolphins
1440	Minnesota Vikings
1420	Kansas City Chiefs
1464	Cincinnati Bengals
1961	Indianapolis Colts
1612	Detroit Lions
1533	New York Giants
1414	New England Patriots
1444	Carolina Panthers
1475	Miami Dolphins
1353	Houston Texans
1619	Indianapolis Colts
1962	Jacksonville Jaguars
1513	Chicago Bears
1407	Cleveland Browns
1505	Tampa Bay Buccaneers
1963	Denver Broncos
1397	Atlanta Falcons
1616	Seattle Seahawks
1381	Pittsburgh Steelers
1494	Chicago Bears
1408	Dallas Cowboys
1332	Los Angeles Rams
1476	Philadelphia Eagles
1964	Buffalo Bills
1965	Baltimore Ravens
1404	Miami Dolphins
1489	Los Angeles Rams
1383	Minnesota Vikings
1537	New York Jets
1632	New England Patriots
1431	Tennessee Titans
1966	Green Bay Packers
1967	Kansas City Chiefs
1378	Carolina Panthers
1651	Cincinnati Bengals
1437	Washington Redskins
1553	Detroit Lions
1398	New York Jets
1519	Seattle Seahawks
1499	Miami Dolphins
1527	Baltimore Ravens
1448	Jacksonville Jaguars
1345	New Orleans Saints
1486	Detroit Lions
1633	Tampa Bay Buccaneers
1551	Denver Broncos
1460	Atlanta Falcons
1660	New York Jets
1356	Las Vegas Raiders
1419	Las Vegas Raiders
1433	Dallas Cowboys
1392	Denver Broncos
1520	Los Angeles Rams
1354	Indianapolis Colts
1544	Buffalo Bills
1490	New England Patriots
1422	Cleveland Browns
1395	Minnesota Vikings
1443	Houston Texans
1338	New England Patriots
1416	Baltimore Ravens
1424	Tennessee Titans
1406	Green Bay Packers
1329	Denver Broncos
1549	Kansas City Chiefs
1569	Cleveland Browns
1455	Baltimore Ravens
1563	New York Giants
1547	Las Vegas Raiders
1508	New England Patriots
1465	Pittsburgh Steelers
1617	Philadelphia Eagles
1367	Los Angeles Rams
1629	New Orleans Saints
1571	Baltimore Ravens
1405	Cincinnati Bengals
1376	Washington Redskins
1598	Las Vegas Raiders
1472	New York Giants
1511	Miami Dolphins
1509	Los Angeles Chargers
1577	Carolina Panthers
1427	Arizona Cardinals
1363	Cleveland Browns
1342	Jacksonville Jaguars
1968	Minnesota Vikings
1554	Denver Broncos
1636	Atlanta Falcons
1567	New York Jets
1604	Detroit Lions
1418	Indianapolis Colts
1969	Dallas Cowboys
1970	Pittsburgh Steelers
1542	New York Jets
1458	Houston Texans
1637	Philadelphia Eagles
1400	Buffalo Bills
1379	New York Jets
1524	Minnesota Vikings
1971	Arizona Cardinals
1417	Minnesota Vikings
1560	Seattle Seahawks
1457	Atlanta Falcons
1972	Pittsburgh Steelers
1473	Los Angeles Rams
1595	Jacksonville Jaguars
1601	Kansas City Chiefs
1587	Las Vegas Raiders
1579	Jacksonville Jaguars
1584	Houston Texans
1434	Washington Redskins
1358	Baltimore Ravens
1393	Seattle Seahawks
1413	Philadelphia Eagles
1351	Dallas Cowboys
1507	Cincinnati Bengals
1588	Seattle Seahawks
1575	Indianapolis Colts
1517	New York Giants
1583	Los Angeles Chargers
1973	Carolina Panthers
1534	San Francisco 49ers
1974	Arizona Cardinals
1609	Miami Dolphins
1439	Chicago Bears
1482	Washington Redskins
1623	Jacksonville Jaguars
1447	New York Jets
1975	New England Patriots
1453	Cleveland Browns
1496	Tampa Bay Buccaneers
1474	Washington Redskins
1635	Chicago Bears
1642	Miami Dolphins
1493	Jacksonville Jaguars
1374	Detroit Lions
1428	Buffalo Bills
1466	Philadelphia Eagles
1451	Minnesota Vikings
1976	Baltimore Ravens
1390	Houston Texans
1977	Detroit Lions
1541	Chicago Bears
1545	Tennessee Titans
1529	Green Bay Packers
1978	Minnesota Vikings
1979	Kansas City Chiefs
1608	Denver Broncos
1333	Dallas Cowboys
1328	Cincinnati Bengals
1548	Denver Broncos
1980	New England Patriots
1981	New York Giants
1982	Carolina Panthers
1425	Miami Dolphins
1438	Los Angeles Chargers
1566	Cleveland Browns
1343	Buffalo Bills
1523	Jacksonville Jaguars
1655	San Francisco 49ers
1528	New York Jets
1983	Green Bay Packers
1984	Indianapolis Colts
1402	Tampa Bay Buccaneers
1463	New England Patriots
1357	Philadelphia Eagles
1565	Detroit Lions
1985	Pittsburgh Steelers
1430	Los Angeles Rams
1641	Philadelphia Eagles
1578	Baltimore Ravens
1643	Arizona Cardinals
1986	Minnesota Vikings
1987	New England Patriots
1535	Minnesota Vikings
1988	Jacksonville Jaguars
1470	Buffalo Bills
1452	Green Bay Packers
1605	Green Bay Packers
1638	Philadelphia Eagles
1989	Indianapolis Colts
1561	Indianapolis Colts
1990	Indianapolis Colts
1611	Seattle Seahawks
1340	Cincinnati Bengals
1391	Washington Redskins
1491	San Francisco 49ers
1389	New York Giants
1607	Baltimore Ravens
1991	Los Angeles Chargers
1625	Carolina Panthers
1349	Arizona Cardinals
1992	Jacksonville Jaguars
1530	Tennessee Titans
1646	Minnesota Vikings
1993	Chicago Bears
1994	Chicago Bears
1471	Atlanta Falcons
1600	Washington Redskins
1995	New England Patriots
1996	Dallas Cowboys
1399	Pittsburgh Steelers
1627	Philadelphia Eagles
1497	Los Angeles Rams
1997	Detroit Lions
1998	Green Bay Packers
1999	Kansas City Chiefs
2000	New York Giants
1485	Buffalo Bills
2001	New Orleans Saints
1593	Tampa Bay Buccaneers
1436	Green Bay Packers
2002	Tennessee Titans
1602	Minnesota Vikings
1371	Tampa Bay Buccaneers
1568	Miami Dolphins
2003	New York Giants
2004	Los Angeles Rams
1478	Minnesota Vikings
1334	Los Angeles Rams
1610	Seattle Seahawks
1384	Denver Broncos
2005	Minnesota Vikings
1631	Denver Broncos
2006	New York Giants
\.


--
-- Name: player pk_player; Type: CONSTRAINT; Schema: public; Owner: football
--

ALTER TABLE ONLY public.player
    ADD CONSTRAINT pk_player PRIMARY KEY (player_id);


--
-- Name: college fk_college_player_id; Type: FK CONSTRAINT; Schema: public; Owner: football
--

ALTER TABLE ONLY public.college
    ADD CONSTRAINT fk_college_player_id FOREIGN KEY (player_id) REFERENCES public.player(player_id);


--
-- Name: combine fk_combine_player_id; Type: FK CONSTRAINT; Schema: public; Owner: football
--

ALTER TABLE ONLY public.combine
    ADD CONSTRAINT fk_combine_player_id FOREIGN KEY (player_id) REFERENCES public.player(player_id);


--
-- Name: draft fk_draft_player_id; Type: FK CONSTRAINT; Schema: public; Owner: football
--

ALTER TABLE ONLY public.draft
    ADD CONSTRAINT fk_draft_player_id FOREIGN KEY (player_id) REFERENCES public.player(player_id);


--
-- Name: info fk_info_player_id; Type: FK CONSTRAINT; Schema: public; Owner: football
--

ALTER TABLE ONLY public.info
    ADD CONSTRAINT fk_info_player_id FOREIGN KEY (player_id) REFERENCES public.player(player_id);


--
-- Name: teams fk_teams_player_id; Type: FK CONSTRAINT; Schema: public; Owner: football
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT fk_teams_player_id FOREIGN KEY (player_id) REFERENCES public.player(player_id);


--
-- PostgreSQL database dump complete
--

