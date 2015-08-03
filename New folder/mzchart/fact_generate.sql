

/* -------------------------------- **
**  Jenis Kelamin 2012
** -------------------------------- */
delete from fact_psex where thn=2012;
insert into fact_psex (thn, sex, jml)
select 2012, 1, count(*)
 from peg_identpeg 
 where kjkel=1 and kstatus in (1,2);
 
insert into fact_psex (thn, sex, jml)
select 2012, 2, count(*)
 from peg_identpeg 
 where kjkel=2 and kstatus in (1,2);
 

/* -------------------------------- **
**  Distribusi menurut kel umur
** -------------------------------- */
delete from fact_agesex where thn=2012;
insert into fact_agesex (thn, age, sex, jml)
/* 17-25 */
select 2012, 1, 1, count(*) from peg_identpeg 
 where TIMESTAMPDIFF(YEAR, tlahir, '2012-12-30') <= 25
	and kjkel=1 and kstatus in (1,2)
union
select 2012, 1, 2, count(*) from peg_identpeg 
 where TIMESTAMPDIFF(YEAR, tlahir, '2012-12-30') <= 25
	and kjkel=2 and kstatus in (1,2)
union /* 26-30 */
select 2012, 2, 1, count(*) from peg_identpeg 
 where TIMESTAMPDIFF(YEAR, tlahir, '2012-12-30') between 26 and 30
	and kjkel=1 and kstatus in (1,2)
union
select 2012, 2, 2, count(*) from peg_identpeg 
 where TIMESTAMPDIFF(YEAR, tlahir, '2012-12-30') between 26 and 30
	and kjkel=2 and kstatus in (1,2)
union /* 31-35 */
select 2012, 3, 1, count(*) from peg_identpeg 
 where TIMESTAMPDIFF(YEAR, tlahir, '2012-12-30') between 31 and 35
	and kjkel=1 and kstatus in (1,2)
union
select 2012, 3, 2, count(*) from peg_identpeg 
 where TIMESTAMPDIFF(YEAR, tlahir, '2012-12-30') between 31 and 35
	and kjkel=2 and kstatus in (1,2)
union /* 36-40 */
select 2012, 4, 1, count(*) from peg_identpeg 
 where TIMESTAMPDIFF(YEAR, tlahir, '2012-12-30') between 36 and 40
	and kjkel=1 and kstatus in (1,2)
union
select 2012, 4, 2, count(*) from peg_identpeg 
 where TIMESTAMPDIFF(YEAR, tlahir, '2012-12-30') between 36 and 40
	and kjkel=2 and kstatus in (1,2)
union /* 41-45 */
select 2012, 5, 1, count(*) from peg_identpeg 
 where TIMESTAMPDIFF(YEAR, tlahir, '2012-12-30') between 41 and 45
	and kjkel=1 and kstatus in (1,2)
union
select 2012, 5, 2, count(*) from peg_identpeg 
 where TIMESTAMPDIFF(YEAR, tlahir, '2012-12-30') between 41 and 45
	and kjkel=2 and kstatus in (1,2)
union /* 46-50 */
select 2012, 6, 1, count(*) from peg_identpeg 
 where TIMESTAMPDIFF(YEAR, tlahir, '2012-12-30') between 46 and 50
	and kjkel=1 and kstatus in (1,2)
union
select 2012, 6, 2, count(*) from peg_identpeg 
 where TIMESTAMPDIFF(YEAR, tlahir, '2012-12-30') between 46 and 50
	and kjkel=2 and kstatus in (1,2)
union /* 51-55 */
select 2012, 7, 1, count(*) from peg_identpeg 
 where TIMESTAMPDIFF(YEAR, tlahir, '2012-12-30') between 51 and 55
	and kjkel=1 and kstatus in (1,2)
union
select 2012, 7, 2, count(*) from peg_identpeg 
 where TIMESTAMPDIFF(YEAR, tlahir, '2012-12-30') between 51 and 55
	and kjkel=2 and kstatus in (1,2) 
union /* 56 */
select 2012, 8, 1, count(*) from peg_identpeg 
 where TIMESTAMPDIFF(YEAR, tlahir, '2012-12-30') = 56
	and kjkel=1 and kstatus in (1,2)
union
select 2012, 8, 2, count(*) from peg_identpeg 
 where TIMESTAMPDIFF(YEAR, tlahir, '2012-12-30') = 56
	and kjkel=2 and kstatus in (1,2)
union /* 57-59 */
select 2012, 9, 1, count(*) from peg_identpeg 
 where TIMESTAMPDIFF(YEAR, tlahir, '2012-12-30') between 57 and 59
	and kjkel=1 and kstatus in (1,2)
union
select 2012, 9, 2, count(*) from peg_identpeg 
 where TIMESTAMPDIFF(YEAR, tlahir, '2012-12-30') between 57 and 59
	and kjkel=2 and kstatus in (1,2)
union /* 60 */
select 2012, 10, 1, count(*) from peg_identpeg 
 where TIMESTAMPDIFF(YEAR, tlahir, '2012-12-30') = 60
	and kjkel=1 and kstatus in (1,2)
union
select 2012, 10, 2, count(*) from peg_identpeg 
 where TIMESTAMPDIFF(YEAR, tlahir, '2012-12-30') = 60
	and kjkel=2 and kstatus in (1,2)
union /* 61-64 */
select 2012, 11, 1, count(*) from peg_identpeg 
 where TIMESTAMPDIFF(YEAR, tlahir, '2012-12-30') between 61 and 64
	and kjkel=1 and kstatus in (1,2)
union
select 2012, 11, 2, count(*) from peg_identpeg 
 where TIMESTAMPDIFF(YEAR, tlahir, '2012-12-30') between 61 and 64
	and kjkel=2 and kstatus in (1,2)
union /* 65 */
select 2012, 12, 1, count(*) from peg_identpeg 
 where TIMESTAMPDIFF(YEAR, tlahir, '2012-12-30') >= 65
	and kjkel=1 and kstatus in (1,2)
union
select 2012, 12, 2, count(*) from peg_identpeg 
 where TIMESTAMPDIFF(YEAR, tlahir, '2012-12-30') >= 65
	and kjkel=2 and kstatus in (1,2);
 
 
 select nip, tlahir,
		TIMESTAMPDIFF(MONTH, tlahir, '2012-12-30') mon,
		TIMESTAMPDIFF(YEAR, tlahir, '2012-12-30') yr,
		TIMESTAMPDIFF(MONTH, tlahir, '2012-12-30')/12 yr_calc
	from peg_identpeg
	where TIMESTAMPDIFF(YEAR, tlahir, '2012-12-30') between 25 and 26
 

 Select kjkel, kstatus, count(*) from peg_identpeg 
 WHERE (instr ('12',kstatus)>0) 
	AND (instr ('12',kjpeg)>0)
group by kjkel, kstatus