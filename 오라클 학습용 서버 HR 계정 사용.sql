
--SELECT job_id, AVG(salary), SUM(salary) FROM employees HAVING AVG(salary)>=3000 GROUP BY job_id;

SELECT department_id, SUM(salary) FROM employees WHERE department_id IN(20, 30) GROUP BY department_id HAVING SUM(salary)>10000;

SELECT department_id, AVG(salary) FROM employees GROUP BY department_id HAVING SUM(salary) > 3000 AND job_id = 'FI_MGR';

SELECT LISTAGG(first_name, '; ') WITHIN GROUP (ORDER BY first_name DESC) FirstName,
LISTAGG(hiredate, '; ') WITHIN GROUP (ORDER BY hiredate_date DESC) HireDate
FROM employees;

SELECT department_id, job_id, manager_id, SUM(salary), grouping(department_id), grouping(job_id), grouping(manager_id) FROM employees GROUP BY ROLLUP(department_id, job_id, manager_id);

SELECT employees.first_name 사원명, employees.department_id 부서1, departments.department_id 부서2, departments.department_name 부서명 from employees, departments ORDER BY employees.first_name;

SELECT * FROM EMPLOYEES;
SELECT * FROM DEPARTMENTS;

SELECT employees.first_name 사원명, employees.department_id 부서1, departments.department_id 부서2, departments.department_name 부서명 from employees, departments where employees.department_id = departments.department_id ORDER BY employees.first_name;

SELECT emp.employee_id, emp.first_name, emp.job_id, emp.salary, job.job_title, job.min_salary, job.max_salary
 FROM employees emp, jobs job WHERE emp.job_id = job.job_id AND
 emp.salary >= job.min_salary AND emp.salary <= job.max_salary
 ORDER BY job_id;
 
 SELECT * FROM employees;
 SELECT * FROM jobs;
 
SELECT emp.employee_id, emp.first_name, emp.job_id, emp.department_id, dept.department_id, dept.department_name
 FROM employees emp, departments dept WHERE emp.department_id(+)=dept.department_id;
 
SELECT emp.employee_id, emp.first_name, emp.job_id, emp.department_id, dept.department_id, dept.department_name
 FROM employees emp, departments dept WHERE emp.department_id=dept.department_id(+);
 
 
SELECT * FROM employees;
SELECT * FROM departments;

SELECT department_id, department_name, loc.location_id, city
FROM departments dept, locations loc
WHERE dept.location_id(+)=loc.location_id(+);
--양쪽에 플러스기호 사용 불가능

SELECT department_id, department_name, loc.location_id, city
FROM departments dept, locations loc
WHERE dept.location_id(+)=loc.location_id
UNION

SELECT department_id, department_name, loc.location_id, city
FROM departments dept, locations loc
WHERE dept.location_id=loc.location_id(+);

SELECT emp.employee_id 사원번호, emp.first_name 사원명, emp.manager_id 관리자번호, man.first_name 관리자명
FROM employees emp, employees man WHERE emp.first_name='Ellen' AND emp.manager_id=man.employee_id;

SELECT * FROM employees;  

SELECT * FROM employees NATURAL JOIN departments;

SELECT * FROM employees JOIN departments USING (department_id);

SELECT * FROM employees e JOIN departments e USING (department_id);

SELECT emp.employee_id, emp.first_name, emp.job_id, emp.department_id, dept.department_id, dept.department_name
 FROM employees emp LEFT OUTER JOIN departments dept ON (emp.department_id = dept.department_id);

SELECT emp.employee_id, emp.first_name, emp.job_id, emp.department_id, dept.department_id, dept.department_name
 FROM employees emp RIGHT OUTER JOIN departments dept ON (emp.department_id = dept.department_id);