
--SELECT job_id, AVG(salary), SUM(salary) FROM employees HAVING AVG(salary)>=3000 GROUP BY job_id;

SELECT department_id, SUM(salary) FROM employees WHERE department_id IN(20, 30) GROUP BY department_id HAVING SUM(salary)>10000;

SELECT department_id, AVG(salary) FROM employees GROUP BY department_id HAVING SUM(salary) > 3000 AND job_id = 'FI_MGR';

SELECT LISTAGG(first_name, '; ') WITHIN GROUP (ORDER BY first_name DESC) FirstName,
LISTAGG(hiredate, '; ') WITHIN GROUP (ORDER BY hiredate_date DESC) HireDate
FROM employees;

SELECT department_id, job_id, manager_id, SUM(salary), grouping(department_id), grouping(job_id), grouping(manager_id) FROM employees GROUP BY ROLLUP(department_id, job_id, manager_id);

SELECT employees.first_name 사원명, employees.department_id 부서1, departments.department_id 부서2, departments.department_name 부서명 from employees, departments ORDER BY employees.first_name;

SELECT * FROM EMPLOYEES;
SELECT * FROM DEPARTMENTS;)

SELECT employees.first_name 사원명, employees.department_id 부서1, departments.department_id 부서2, departments.department_name 부서명 from employees, departments where employees.department_id = departments.department_id ORDER BY employees.first_name;

