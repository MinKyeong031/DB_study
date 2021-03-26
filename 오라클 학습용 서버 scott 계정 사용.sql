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
















