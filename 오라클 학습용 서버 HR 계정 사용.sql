SELECT employee_id, first_name, last_name, salary, job_id
FROM employees;

SELECT * FROM employees;

SELECT first_name, last_name, salary, salary+100
FROM employees;

INSERT INTO employees VALUES(207, 'JOHN', 'AUSTIN', 'AUSTINMAIL', 
'515.123.9999', '02/06/07', 'SH_CLERK', NULL, NULL, 124, 50);

SELECT * FROM employees;

SELECT employee_id, first_name, salary, salary+300 FROM employees;

SELECT employee_id, first_name, salary, NVL(salary, 0)+300 FROM employees;

--SELECT emplyee_id 사원번호, salary FROM employees WHERE 사원번호 > 200;
SELECT employee_id 사원번호, salary FROM employees WHERE employee_id > 200;