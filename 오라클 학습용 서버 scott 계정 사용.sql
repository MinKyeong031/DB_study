SELECT empno, ename, sal, comm, comm+300, NVL(comm,0) FROM emp;

SELECT ename AS name, sal, sal*12 "Annual Salary" FROM emp;

SELECT ename AS name, sal, sal*12 as "Annual Salary" FROM emp;

SELECT ename ���1, 'Abc' ���2, sal ���3, 500 ���4 FROM emp;

SELECT ename||':'||empno||':'||job FROM emp;

SELECT ename||' is a '||job AS "Employees Details" FROM emp;

SELECT job FROM emp;

SELECT ALL job FROM emp;

SELECT DISTINCT job FROM emp;

SELECT DISTINCT deptno, job FROM emp;

SELECT ROWID, ROWNUM, ename, sal FROM emp;



