# SQL Challenge Homework

## Files included in this repository
SQLEmployeeChallengeERD.png --> ERD image generated at http://www.quickdatabasediagrams.com<br />
SQLEmployeeChallengeERDTableSchemaText.txt --> text you can paste to generate the ERD at http://www.quickdatabasediagrams.com<br />
CreateEmployeeDatabaseTables.sql --> sqlcode to create tables<br />
DropEmployeeDatabaseTables.sql --> sql code to drop all tables in correct order<br />
EmployeeDatabaseSelectQueries.sql --> sql code to query Employee databae tables<br />

## First step was technical database design
Reviewed 6 csv files to understand data and how the csv files relate to each other<br />
Used http://www.quickdatabasediagrams.com to sketch table schema and relationships<br />

## Next step was to write the code to create tables in PGAdmin
Used much of what I had in the quick diagram and converted for postgres syntax<br />
Added primary (2 composity primary keys) and foreign keys<br />
Then ran the create tables script in order to handle the foreign/primary keys<br />

## Next step was to import the data into the tables
Individually imported data into each of the tables in the right order to account for Primary/Foreign key relationships<br />

## Final step was to query the tables
Ran 8 queries pulling data on employees, managers, etc<br />
Ran query on count of employees with same last names<br />
