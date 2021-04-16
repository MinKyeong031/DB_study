SELECT empno, ename, sal, comm, comm+300, NVL(comm,0) FROM emp;

SELECT ename AS name, sal, sal*12 "Annual Salary" FROM emp;

SELECT ename AS name, sal, sal*12 as "Annual Salary" FROM emp;

SELECT ename 결과1, 'Abc' 결과2, sal 결과3, 500 결과4 FROM emp;

SELECT ename||':'||empno||':'||job FROM emp;

SELECT ename||' is a '||job AS "Employees Details" FROM emp;

SELECT job FROM emp;

SELECT ALL job FROM emp;

SELECT DISTINCT job FROM emp;

SELECT DISTINCT deptno, job FROM emp;

SELECT ROWID, ROWNUM, ename, sal FROM emp;

SELECT empno, ename, job, sal FROM emp WHERE job = 'MANAGER';

SELECT empno, ename, job sal FROM emp WHERE sal >= 3000;

SELECT ename, sal, deptno FROM emp WHERE deptno != 30;

SELECT ename, job, sal, deptno FROM emp WHERE sal BETWEEN 1300 AND 1700;

SELECT ename, job, sal, deptno FROM emp WHERE sal NOT BETWEEN 1300 AND 1700;

SELECT empno, job, sal, hiredate FROM emp WHERE empno = 7902 OR empno = 7788 OR empno = 7566;

SELECT empno, job, sal, hiredate FROM emp WHERE empno IN(7902, 7788, 7566);

SELECT ename, sal, job FROM emp WHERE ename LIKE '_A%';

SELECT ename, sal, job FROM emp WHERE ename LIKE '%A%';

SELECT empno, ename, job, comm, deptno FROM emp WHERE COMM IS NULL;

SELECT empno, ename, job, comm, deptno FROM emp WHERE COMM < NULL;

SELECT empno, ename, job, sal, hiredate, deptno FROM emp WHERE sal >= 2800 AND job = 'MANAGER';

SELECT empno, ename, job, sal, hiredate, deptno FROM emp WHERE sal >= 2800 OR job = 'MANAGER';

SELECT empno, ename, job, sal, deptno FROM emp WHERE job NOT IN('MANAGER', 'CLERK', 'ANALYST');

SELECT empno, ename, job, sal FROM emp WHERE sal > 1500 AND job = 'PRESIDENT' OR job = 'SALESMAN';

SELECT empno, ename, sal, hiredate, deptno FROM emp ORDER BY hiredate;

SELECT empno, ename, sal, hiredate, deptno FROM emp ORDER BY hiredate DESC;

SELECT empno, ename, job, deptno, sal FROM emp ORDER BY deptno, sal DESC;

SELECT empno, ename, job, deptno, sal FROM emp ORDER BY 4, 5 DESC;

SELECT ename, sal, sal*12 ANN_SAL FROM emp ORDER BY ANN_SAL;

SELECT DISTINCT deptno, job FROM emp ORDER BY job;

SELECT DISTINCT job, sal+comm FROM emp ORDER BY sal;

SELECT DISTINCT deptno, job FROM emp ORDER BY 2;

SELECT empno, ename, job, LOWER(job), INITCAP(job) FROM emp WHERE deptno = 10;

SELECT INSTR('ABCDEFG', 'A'),
INSTR('ABCDEFG','E'),
INSTR('ABCDEFG','CDE'),
INSTR('ABCDEFG','DBC')
FROM dual;;

SELECT INSTR('ABBCCCDDD', 'C', 5, 2) IN1, 
INSTR('ABBCCCDDD','C',6, 2) IN2,
INSTR('ABBCCCDDD','D',8, 2) IN3,
INSTR('ABBCCCDDD','D',3, 2) IN4,
INSTR('ABBCCCDDD','A',4, 1) IN5,
INSTR('ABBCCCDDD','C',1, 3) IN6
FROM dual;

SELECT INSTRB('ABCDEFG', 'B'),
INSTRB('가나라다라마', '나'),
INSTRB('가나다라마', '다')
FROM dual;

SELECT parameter, value
FROM nls_database_parameters
WHERE parameter = 'NLS_CHARACTERSET';

SELECT ename, job, LTRIM(job, 'A'), sal, LTRIM(sal, 2) FROM emp WHERE deptno = 20;

SELECT ename, job, RTRIM(job, 'T'), sal, RTRIM(sal, 0) FROM emp WHERE deptno = 10;

SELECT ename, REPLACE(ename, 'AR', '*?') 변경결과 FROM emp;

SELECT ename, TRANSLATE(ename, 'AR', '*?') 변경결과 FROM emp;

SELECT TRIM(LEADING 'A' FROM 'AABDCADD') 걸과1,
 TRIM('A' FROM 'AABDCADD') 걸과2,
 TRIM(TRAILING 'D' FROM 'AABDCADD') 걸과3
 FROM dual;
 
SELECT ROUND(4567.678) 결과1,
 ROUND(4567.678, 0) 결과2,
 ROUND(4567.678, 2) 결과3,
 ROUND(4567.678, -2) 결과4
 FROM dual;

 
SELECT TRUNC(4567.678) 결과1,
 TRUNC(4567.678, 0) 결과2,
 TRUNC(4567.678, 2) 결과3,
 TRUNC(4567.678, -2) 결과4
 FROM dual;

SELECT POWER(2, 10) 결과1, CEIL(3.7) 결과2, FLOOR(3.7) 결과3 FROM dual;

SELECT POWER(2, 10) 결과1, CEIL(-3.7) 결과2, FLOOR(-3.7) 결과3 FROM dual;

SELECT sal, MOD(sal, 30) FROM emp WHERE deptno = 10;

SELECT sal, SIGN(sal-2975) FROM emp WHERE deptno = 10;

SELECT sal, SIGN(sal-2975), SIGN(sal-5000), SIGN(sal-2000) FROM emp WHERE deptno = 10;

SELECT value FROM nls_session_parameters WHERE parameter = 'NLS_TIMESTAMP_FORMAT';

SELECT value FROM nls_session_parameters WHERE parameter = 'NLS_TIMESTAMP_TZ_FORMAT';

SELECT value FROM nls_session_parameters WHERE parameter = 'NLS_LANGUAGE';

SELECT SYSDATE FROM dual;

SELECT LOCALTIMESTAMP FROM dual;

ALTER SESSION SET NLS_DATE_FORMAT = 'YYYY-MM-DD HH24:MI:SS';

SELECT SYSDATE FROM dual;

SELECT ename, hiredate, sysdate, sysdate-hiredate "Total Days",
trunc ((sysdate-hiredate)/7, 0) weeks,
round (mod((sysdate-hiredate), 7), 0) DAY
FROM emp ORDER BY sysdate-hiredate desc;

SELECT EXTRACT(DAY FROM SYSDATE) 일자,
 EXTRACT(MONTH FROM SYSDATE) 월,
 EXTRACT(YEAR FROM SYSDATE) 년도
 FROM dual;

SELECT SYSTIMESTAMP A,
 EXTRACT(HOUR FROM SYSTIMESTAMP) B,
 TO_CHAR(SYSTIMESTAMP, 'HH24') C
 FROM dual;

SELECT ename, hiredate, EXTRACT(YEAR FROM hiredate) 입사년도,
EXTRACT(DAY FROM hiredate) 입사일자
FROM emp WHERE deptno = 20;

SELECT ename, hiredate, sysdate, months_between(sysdate, hiredate) m_between,
trunc(months_between(sysdate, hiredate), 0) t_between
FROM emp WHERE deptno = 10 ORDER BY months_between(sysdate, hiredate) DESC;

SELECT ename, hiredate, add_months(hiredate, 5) "5개월 후" FROM emp WHERE deptno IN(10,30) ORDER BY hiredate desc;

SELECT ename, hiredate, NEXT_DAY(hiredate, 6) "n-6", NEXT_DAY(hiredate, 7) "n-7" FROM emp WHERE deptno = 10 ORDER BY hiredate desc;

SELECT empno, ename, hiredate, last_day(hiredate) l_last, last_day(hiredate)-hiredate l_day FROM emp ORDER BY last_day(hiredate)-hiredate desc;

SELECT TO_CHAR(sysdate, 'YY/MM/DD HH24:MI:SS') normal, 
TO_CHAR(trunc(sysdate), 'YY/MM/DD HH24:MI:SS') trunc,
TO_CHAR(round(sysdate), 'YY/MM/DD HH24:MI:SS') round
FROM dual;

SELECT hiredate, ROUND(hiredate, 'MONTH'), 
 ROUND(hiredate, 'YEAR') FROM emp; --WHERE deptno = 10;

SELECT empno, ename, job, sal, TO_CHAR(sal, '999,999') FROM emp WHERE deptno = 20 ORDER BY sal desc;

SELECT TO_CHAR(sysdate, 'WW') test FROM dual;

SELECT ename, hiredate, TO_CHAR(hiredate, 'YYYY"년" MM"월" DD"일"') t_kor FROM emp WHERE deptno = 10 ORDER BY hiredate desc;

SELECT empno, ename, TO_CHAR(hiredate, 'YY/MM/DD(DAY) HH:MI:SS AM') 입사일 FROM emp WHERE job = 'CLERK';

SELECT TO_CHAR(ADD_MONTHS(TO_DATE('201905', 'YYYYMM'), 15), 'YYYYMM') TEST1 FROM dual;

SELECT TO_CHAR(TO_DATE('98', 'RR'), 'YYYY') test1,
TO_CHAR(TO_DATE('05', 'RR'), 'YYYY') test2,
TO_CHAR(TO_DATE('98', 'YY'), 'YYYY') test3,
TO_CHAR(TO_DATE('05', 'YY'), 'YYYY') test4
FROM dual;

SELECT ename, hiredate, TO_CHAR(NEXT_DAY(ADD_MONTHS(hiredate, 6), 1), 'yyyy/month/dd') "Next 6 Month" FROM emp; 

SELECT '00012340' 결과1, TO_NUMBER('00012340') 결과2 FROM dual;

SELECT TO_TIMESTAMP('2004-8-20 1:30:00', 'YYYY-MM-DD HH:MI:SS') FROM dual;

SELECT TO_TIMESTAMP('10-09-77 14:10:10.123000', 'DD-MM-RR HH24:MI:SS.FF') FROM dual;

SELECT sysdate, sysdate+TO_DSINTERVAL('003 11:25:33') AS "결과" FROM dual;

SELECT empno, ename, hiredate, hiredate + TO_YMINTERVAL('01-06') AS date2 FROM emp;

SELECT ename, sal, comm, sal+NVL(comm, 0) 금액 FROM emp WHERE deptno=30;

SELECT ename, deptno, mgr, NVL2(mgr, '담당', '상위자') 결과 FROM emp WHERE deptno<>30;

SELECT ename, job, NULLIF(job,'SALESMAN') AS result FROM emp WHERE deptno=30;

SELECT ename, comm ,sal, COALESCE(comm, sal, 50) result FROM emp;

SELECT ename, sal, comm, GREATEST(sal, comm) 결과 FROM emp; WHERE comm is not null;

SELECT ename, sal, comm, LEAST(sal, comm) 결과 FROM emp WHERE comm is not null;

SELECT empno, ename, sal, job, DECODE(job, 'ANALYST', sal*1.1, 'CLERK', sal*1.2
, 'MANAGER', sal*1.3, 'PRESIDENT', sal*1.4, 'SALESMAN', sal*1.5, sal) 변경결과 FROM emp;

SELECT empno, ename, sal, job, CASE job WHEN 'ANALYST' THEN sal*1.1 WHEN 'CLERK' THEN sal*1.2
WHEN 'MANAGER' THEN sal*1.3 WHEN 'PRESIDENT' THEN sal*1.4 WHEN 'SALESMAN' THEN sal*1.5
ELSE sal END salary FROM emp;

SELECT ename, sal, DECODE(SIGN(sal-1000), -1, 'A', DECODE(SIGN(sal-2500), -1, 'B', 'C')) grade FROM emp;

SELECT ename, sal, CASE WHEN sal < 1000 THEN 'A' WHEN sal < 2500 THEN 'B' ELSE 'C' END grade FROM emp;

CREATE TABLE member
(
ID          CHAR(50),
PWD         CHAR(50),
NAME        CHAR(50),
GENDER      CHAR(2),
AGE         NUMBER(3),
BIRTHDAY    CHAR(10),
PHONE       CHAR(13),
REGDATE     DATE
);

ALTER TABLE MEMBER MODIFY ID NVARCHAR2(5);

ALTER TABLE MEMBER DROP COLUMN AGE;

DROP TABLE member;

CREATE TABLE member
(
ID          CHAR(50),
PWD         CHAR(50),
NAME        CHAR(50),
GENDER      CHAR(2),
AGE         NUMBER(3),
BIRTHDAY    CHAR(10),
PHONE       CHAR(13),
REGDATE     DATE
);

SELECT * FROM emp;

SELECT MIN(ename), MAX(ename), MIN(hiredate), MAX(hiredate) FROM emp;

SELECT AVG(sal), MAX(sal), MIN(sal), SUM(sal) FROM emp WHERE JOB='SALESMAN';

SELECT count(*) c1, count(comm) c2, AVG(comm) c3, AVG(NVL(comm, 0)) c4 FROM emp;

SELECT count(deptno) c_dept, count(distinct deptno) c_dis, count(distinct job) c_job FROM emp;

SELECT AVG(comm), SUM(comm)/12 FROM emp;

SELECT AVG(NVL(comm,0)), SUM(comm)/12 FROM emp;

SELECT deptno, count(*), TRUNC(AVG(sal),1), MIN(sal), MAX(sal), SUM(sal) FROM emp GROUP BY deptno;

SELECT deptno, ename, count(*), TRUNC(AVG(sal),1), MIN(sal), MAX(sal), SUM(sal) FROM emp GROUP BY deptno;

SELECT deptno, count(*), TRUNC(AVG(sal),1), MIN(sal), MAX(sal), SUM(sal) FROM emp GROUP BY deptno ORDER BY SUM(sal) desc;

SELECT job, count(*), TRUNC(AVG(sal),1), SUM(sal) FROM emp GROUP BY job;

SELECT job, deptno, count(*), AVG(sal), SUM(sal) FROM emp GROUP BY job, deptno;

SELECT job, deptno, count(*), AVG(sal), SUM(sal) FROM emp GROUP BY deptno, job;

SELECT job, deptno, count(*), AVG(sal), SUM(sal) FROM emp GROUP BY deptno, job ORDER BY deptno;

SELECT ROWNUM, empno, ename, hiredate FROM emp ORDER BY ename;

SELECT ROW_NUMBER() OVER (ORDER BY ename), ename, empno, hiredate FROM emp;

SELECT RANK() OVER (ORDER BY ename DESC), ename, empno, hiredate FROM emp;

SELECT deptno, TRUNC(AVG(sal),1) FROM emp GROUP BY deptno HAVING AVG(sal)>2000;






