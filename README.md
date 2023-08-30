# sql-challenge

challenge 9 SQL

Brian Guenther

There were three main tasks for this assignment of:  data modeling, data engineering, and data analysis.  I was provided six seperate tables as CSV files and designed an ERD diagram of their relationships (one to one or one to many) and did initial assignments of primary and foreign keys (see image).  For the data engineering, I sought to create a SQL database on the postgresql server by uploading the six tables.  Some nuances that were missed during the initial modeling were corrected at this stage and the order of uploading is provided within the schemata file.  The presence of the data in the database was confirmed and then a series of eight questions were answered for the data analysis.

While the majority of this assignment was accomplished based on class examples and activities, additional resources are noted after a brief statement of the issue

For data type of dates in tables
https://learnsql.com/blog/data-types-in-sql/ 

For importing the csv information into tables and changing the primary key on the dept_emp table (due to one employee being in two departments).
Guidance from tutor (Steven Thomas)

For the second Data Analysis question (List the first name, last name, and hire date for the employees who were hired in 1986.)  I first tried the following WHERE clause WHERE hire_date = ‘__/__/1986’;
Which failed.  
I then found https://stackoverflow.com/questions/58885929/how-to-answer-this-question-list-employees-who-were-hired-in-1986 which provided information on how wildcards were for strings but I had defined this column as a DATE data type as well as guidance on using a numerical answer that worked.
