CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    name VARCHAR(50),
    department VARCHAR(50),
    salary INT,
    manager_id INT
);

INSERT INTO employees (emp_id, name, department, salary, manager_id) VALUES
(1, 'Alice', 'HR', 50000, NULL),
(2, 'Bob', 'IT', 60000, 1),
(3, 'Charlie', 'IT', 55000, 1),
(4, 'David', 'Sales', 45000, 1),
(5, 'Eva', 'Sales', 47000, 4);

select * from employees

with high_earner as (select emp_id,name,salary from employees where salary>50000)
select * from high_earner 

select department,avg(salary) as avg_sal from employees group by department

with dep_salary as ( select department,avg(salary) as avg_sal from employees group by department)
select * from dep_salary 