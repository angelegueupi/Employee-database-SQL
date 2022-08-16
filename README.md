# SQL_CHALLENGE
![image](https://user-images.githubusercontent.com/106934375/184683362-08437777-7cf0-416b-9099-967c6b47001b.png)

## Background
It’s a beautiful spring day, and it’s been two weeks since you were hired as a new data engineer at Pewlett Hackard. Your first major task is a research project on employees of the corporation from the 1980s and 1990s. All that remains of the database of employees from that period are six CSV files.
In this assigment we will perform data modeling, data engineering, and data analysis.

## Data Modelling
We used Lucidchart to inspect the CSVs and sketch out an ERD of the tables at the aim to describe and specify the relationship between entities.

https://lucid.app/lucidchart/58e87868-e9c2-4979-9bd5-e9fc17d74a7c/edit?page=0_0&invitationId=inv_813ae7b5-908b-4d6c-a0ef-39bb371b1f29#

## Data Engineering
* Use the provided information to create a table schema for each of the six CSV files. Remember to specify data types, primary keys, foreign keys, and other constraints.

* For the primary keys, verify that the column is unique. Otherwise, create a [composite key](https://en.wikipedia.org/wiki/Compound_key), which takes two primary keys to uniquely identify a row.

* Be sure to create tables in the correct order to handle foreign keys.

* Import each CSV file into the corresponding SQL table. 

## Data Analysis
Once we have completed the database, we  will perform these steps:

1. List the following details of each employee: employee number, last name, first name, sex, and salary.

2. List first name, last name, and hire date for employees who were hired in 1986.

3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.

4. List the department of each employee with the following information: employee number, last name, first name, and department name.

5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."

6. List all employees in the Sales department, including their employee number, last name, first name, and department name.

7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

8. List the frequency count of employee last names (i.e., how many employees share each last name) in descending order.

## Bonus (Optional)

As you examine the data, you begin to suspect that the dataset is fake. Maybe your boss gave you spurious data in order to test the data engineering skills of a new employee? To confirm your hunch, you decide to create a visualization of the data to present to your boss. Follow these steps: 

1. Import the SQL database into Pandas. (Yes, you could read the CSVs directly in Pandas, but you are, after all, trying to prove your technical mettle.) This step may require some research. Feel free to use the following code to get started. Be sure to make any necessary modifications for your username, password, host, port, and database name:

   ```sql
   from sqlalchemy import create_engine
   engine = create_engine('postgresql://localhost:5432/<your_db_name>')
   connection = engine.connect()
   ```

    * Consult the [SQLAlchemy documentation](https://docs.sqlalchemy.org/en/latest/core/engines.html#postgresql) for more information.

    * If you’re using a password, do not upload your password to your GitHub repository. Review this [video](https://www.youtube.com/watch?v=2uaTPmNvH0I) and the [GitHub website](https://help.github.com/en/github/using-git/ignoring-files) for more information.

2. Create a histogram to visualize the most common salary ranges for employees.

3. Create a bar chart of average salary by title.
