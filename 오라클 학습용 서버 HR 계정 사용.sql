
--SELECT job_id, AVG(salary), SUM(salary) FROM employees HAVING AVG(salary)>=3000 GROUP BY job_id;

SELECT department_id, SUM(salary) FROM employees WHERE department_id IN(20, 30) GROUP BY department_id HAVING SUM(salary)>10000;

SELECT department_id, AVG(salary) FROM employees GROUP BY department_id HAVING SUM(salary) > 3000 AND job_id = 'FI_MGR';

SELECT LISTAGG(first_name, '; ') WITHIN GROUP (ORDER BY first_name DESC) FirstName,
LISTAGG(hiredate, '; ') WITHIN GROUP (ORDER BY hiredate_date DESC) HireDate
FROM employees;








