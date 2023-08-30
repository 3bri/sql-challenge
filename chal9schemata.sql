-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/

DROP TABLE titles
DROP TABLE salaries
DROP TABLE dept_emp
DROP TABLE employees
DROP TABLE dept_manager
DROP TABLE departments;

CREATE TABLE "departments" (
    "dept_no" VARCHAR   NOT NULL,
    "dept_name" VARCHAR   NOT NULL,
    CONSTRAINT "pk_departments" PRIMARY KEY (
        "dept_no"
     )
);

CREATE TABLE "dept_emp" (
    "emp_no" INTEGER   NOT NULL,
    "dept_no" VARCHAR   NOT NULL,
    CONSTRAINT "pk_dept_emp" PRIMARY KEY (
        "emp_no","dept_no"
     )
);

CREATE TABLE "dept_manager" (
    "dept_no" VARCHAR   NOT NULL,
    "emp_no" INTEGER   NOT NULL,
    CONSTRAINT "pk_dept_manager" PRIMARY KEY (
        "emp_no"
     )
);

CREATE TABLE "employees" (
    "emp_no" INTEGER   NOT NULL,
    "title_id" VARCHAR   NOT NULL,
    "birth_date" DATE   NOT NULL,
    "first_name" VARCHAR   NOT NULL,
    "last_name" VARCHAR   NOT NULL,
    "sex" VARCHAR   NOT NULL,
    "hire_date" DATE   NOT NULL,
    CONSTRAINT "pk_employees" PRIMARY KEY (
        "emp_no"
     )
);

CREATE TABLE "salaries" (
    "emp_no" INTEGER   NOT NULL,
    "salary" INTEGER   NOT NULL,
    CONSTRAINT "pk_salaries" PRIMARY KEY (
        "emp_no"
     )
);

CREATE TABLE "titles" (
    "title_id" VARCHAR   NOT NULL,
    "title" VARCHAR   NOT NULL,
    CONSTRAINT "pk_titles" PRIMARY KEY (
        "title_id"
     )
);

ALTER TABLE "dept_emp" ADD CONSTRAINT "fk_dept_emp_dept_no" FOREIGN KEY("dept_no")
REFERENCES "departments" ("dept_no");

ALTER TABLE "dept_manager" ADD CONSTRAINT "fk_dept_manager_dept_no" FOREIGN KEY("dept_no")
REFERENCES "departments" ("dept_no");

--ALTER TABLE "employees" ADD CONSTRAINT "fk_employees_emp_no" FOREIGN KEY("emp_no")
--REFERENCES "dept_emp" ("emp_no");

ALTER TABLE "employees" ADD CONSTRAINT "fk_employees_emp_title_id" FOREIGN KEY("title_id")
REFERENCES "titles" ("title_id");

ALTER TABLE "salaries" ADD CONSTRAINT "fk_salaries_emp_no" FOREIGN KEY("emp_no")
REFERENCES "employees" ("emp_no");


-- in pgadmin import the csv files in the following order:   dept   dept_man  dept_emp  titles  employees  salaries
--confirm data
SELECT * FROM departments LIMIT 5;

SELECT * FROM dept_manager LIMIT 5;

SELECT * FROM employees LIMIT 5;

SELECT * FROM dept_emp LIMIT 5;

SELECT * FROM salaries LIMIT 5;

SELECT * FROM titles LIMIT 5;

-- List the employee number, last name, first name, sex, and salary of each employee.

-- 	List the first name, last name, and hire date for the employees who were hired in 1986.

-- 	List the manager of each department along with their department number, department name, employee number, last name, and first name.

-- 	List the department number for each employee along with that employee’s employee number, last name, first name, and department name.

-- 	List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.

-- 	List each employee in the Sales department, including their employee number, last name, and first name.

-- 	List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.

-- 	List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).

