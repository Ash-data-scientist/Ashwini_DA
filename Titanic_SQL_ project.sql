CREATE database Titanic;
use Titanic;
select * from titanic.titanic;
Rename table titanic.titanic to titanic_db;
#Select all columns for all passengers in the Titanic dataset. 
select * from titanic_db;
# Display the number of passengers in each class (1st, 2nd, 3rd).
select  pclass ,count(pclass) from titanic_db  where pclass in ( 1,2,3) group by pclass order by pclass asc;
# Find the number of male and female passengers. 
select  sex ,count(sex) from titanic_db  group by sex;
# Display the names of passengers who survived.
select  name ,survived from titanic_db where survived ='survived';
# Find the average age of passengers. 
select  avg(age) from titanic_db;
# List the names and ages of passengers who were younger than 18. 
select name ,age from titanic_db where age>18;
# Display the number of passengers in each embarkation port (C, Q, S). 
select embarked, count(embarked) from titanic_db group by embarked;
# Find the highest fare paid by any passenger. 
select fare ,name from titanic_db  order by fare desc limit 1;
# List the average age of passengers for each class. 
select pclass ,avg(age) from titanic_db  group by pclass order by pclass asc;
# Display the passenger names and ages for those who survived and were in 1st class. 
select name,age, survived, pclass from titanic_db where survived='survived' and pclass=1;
# Find the number of passengers who paid more than 50 for their ticket.
select count(passengerid)   from titanic_db where ticket>50 ;
# List the names of passengers who did not survive and were in 3rd class. 
select name ,survived,pclass from titanic_db where survived ='died' and  pclass =3;
# Find the number of passengers with missing values in the "Age" column.
select count(name)  from titanic_db group by age is null or age = ''; 
# Display the passenger names and ages for those who embarked at port 'S' and survived. 
select name ,age , embarked from titanic_db  where embarked = 's' and survived ='survived';
# Calculate the total number of passengers on board. 
select count(embarked) from titanic_db;
#List the average fare for each class. 
select avg(fare) ,pclass from titanic_db group by pclass ;
# Display the passenger names and ages for those with a known age and a fare greater than 100. 
select name , age , fare from titanic_db where fare > 100 ;
# Find the percentage of passengers who survived. 
select count(survived)*100/(select count(survived) from titanic_db) as percentage from titanic_db where survived ='survived';
# List the names of passengers who were in 2nd class and had a fare less than 20. 
select name ,  fare from titanic_db where fare < 20 ;
# Display the passenger names and ages for those who did not survive and were in 1st class. 
select name ,survived,age from titanic_db where survived ='died' and  pclass =1;
# Find the number of passengers for each combination of class and gender. 
select count( pclass),sex , pclass from titanic_db  group by pclass , sex ;
# List the names of passengers who survived and were in 3rd class with an age less than 20. 
select name from titanic_db where pclass = 3 and age <20;
# Display the passenger names for those with the name starting with 'Mr.' 
select name from titanic_db where name like '%Mr.%';
# Find the average age of male and female passengers. 
select  sex , avg(age) from titanic_db group by sex;
# List the names of passengers who paid the highest fare.
  select name from titanic_db order by fare desc limit 1;
# Find the number of passengers for each embarkation port and class. 
select count(name), embarked , pclass   from titanic_db group by embarked ,pclass order by embarked,pclass;
# Display the passenger names and ages for those who survived and paid more than 200 for their ticket.
select name , age from titanic_db where survived='survived' and ticket >200;
# Find the average age of passengers who survived and those who did not. 
select survived, avg(age) from titanic_db group by survived;
# List the names of passengers who were in 1st class and had an age greater than 50. 
select count(name) from titanic_db where pclass = 1 and age> 50; 
# Display the passenger names for those with the name ending with 'sson'
select  name  from titanic_db  where name  like '%sson';