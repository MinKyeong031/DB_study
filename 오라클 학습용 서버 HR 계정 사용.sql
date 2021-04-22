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

--SELECT emplyee_id �����ȣ, salary FROM employees WHERE �����ȣ > 200;
SELECT employee_id �����ȣ, salary FROM employees WHERE employee_id > 200;

SELECT first_name, SUBSTR(first_name, 1, 3), SUBSTR(first_name,3), SUBSTR(first_name, -3, 2) FROM employees WHERE department_id = 10; 

SELECT SUBSTR('ABCDEFG', 3),
SUBSTR('ABCDEFG', 6),
SUBSTR('ABCDEFG', -4),
SUBSTR('ABCDEFG', -1)
FROM dual;

SELECT SUBSTRB('ABCDEFG', 6),
SUBSTRB('�ѱ��Դϴ�', 4),
SUBSTRB('�ѱ��Դϴ�', 5),
SUBSTRB('�ѱ��Դϴ�', 6)
FROM dual;

SELECT parameter, value
FROM nls_database_parameters
WHERE parameter = 'NLS_CHARACTERSET';

SELECT SUBSTRB('I am here with you', 5, 3) ���1,
SUBSTR ('�� ���� �־�', 5, 3) ���2,
SUBSTRB ('�� ���� �־�', 5, 3) ���3
FROM dual;

SELECT * FROM dual;

SELECT SYSDATE FROM dual;

SELECT SYSTIMESTAMP FROM dual;

SELECT 3*4 FROM dual;

SELECT first_name, LPAD(first_name, 15, '*'), salary, LPAD(salary, 10, '*') FROM employees WHERE department_id = 20;

SELECT first_name, RPAD(first_name, 15, '*'), salary, RPAD(salary, 10, '*') FROM employees WHERE department_id = 20;

SELECT first_name, hire_date, hire_date+3, hire_date+5/24 FROM employees WHERE department_id = 30;

-- EXTRACT �Լ�
SELECT 
   EXTRACT(DAY FROM SYSDATE) ����, -- ���ڸ� ���⳽��
   EXTRACT(MONTH FROM SYSDATE) ��, -- ���� ���⳽��
   EXTRACT(YEAR FROM SYSDATE) �⵵  -- �⵵�� ���⳽��
FROM dual;   

SELECT 
    SYSTIMESTAMP,
    TO_CHAR(SYSTIMESTAMP,'HH24') CH,
    EXTRACT(TIMEZONE_HOUR FROM SYSTIMESTAMP) etzh,
    EXTRACT(HOUR FROM SYSTIMESTAMP) eh,
    EXTRACT(HOUR FROM CAST(SYSTIMESTAMP AS TIMESTAMP)) ehc
FROM dual;  

ALTER SESSION SET NLS_DATE_FORMAT = 'YYYY-MM-DD HH24:MI:SS';

SELECT SYSDATE FROM dual;










