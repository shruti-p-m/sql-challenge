# sql-challenge
## EmployeeSQL
This folder contains the data folder, which contains seven csv files that all the data come from. The EmployeeSQL folder also contains the table_schema.sql and data_analysis.sql script, as well as the employeeSQL_ERD.png file. 

The table_schema.sql script is a SQL script that builds a database that holds employees' data which were stored in the seven csv files in the data folder. 

The employeeSQL_ERD.png file contains a picture of an Entity Relationship Diagram that represents the structure and relationship of the data in the tables that were created by the table_schema.sql script.

The data_analysis.sql script is an SQL script that queries information from the employee data. The script runs the following queries:
- List the employee number, last name, first name, sex, and salary of each employee.
- List the first name, last name, and hire date for the employees who were hired in 1986.
- List the manager of each department along with their department number, department name, employee number, last name, and first name.
- List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
- List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
- List each employee in the Sales department, including their employee number, last name, and first name.
- List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
- List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).

## Citations
- the data_anaylsis.sql script contains code from the following website: https://www.sqltutorial.org/sql-date-functions/how-to-extract-year-from-date-in-sql/, which extracts the year from the date in sql to use in a query
- the Entity Relationship Diagram generated in employeeSQL_ERD.png was generated using the website: https://app.quickdatabasediagrams.com/#/
