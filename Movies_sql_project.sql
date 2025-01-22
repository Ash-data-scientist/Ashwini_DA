SELECT * FROM movies_db.movies_sql;
# Retrieve the names of all the Bollywood movies which are of drama genre in the dataset.
SELECT Movie_Name from movies_db.movies_sql where Genre='drama';
# Retrieve the names of all the Bollywood movies of Amir Khan in the dataset.
SELECT Movie_Name from movies_db.movies_sql where Lead_Star='Aamir Khan';
# Retrieve the names of all the Bollywood movies which are directed by RamGopal Verma in the dataset.
SELECT Movie_Name from movies_db.movies_sql where Director='Ram Gopal Verma';
# Retrieve the names of all the Bollywood movies which have been released over more than 1000 number of screens in the dataset.
SELECT Movie_Name from movies_db.movies_sql where Number_of_Screens >1000;
# Retrieve the names of all the Bollywood movies which have generated Revenue(INR) more than 700000000 in the dataset.
SELECT Movie_Name from movies_db.movies_sql where Revenue >700000000;
# Retrieve the names of all the Bollywood movies which have budget less than 1cr in the dataset.
SELECT Movie_Name from movies_db.movies_sql where Budget <10000000;
# Retrieve the names of all the Bollywood movies which are flop in the dataset.(flop=revenue – budget)
SELECT  Movie_Name as flop_Movies
 from movies_db.movies_sql where
  (revenue - budget)<0;
#Retrieve the names and profit of all the Bollywood movies in the dataset.(profit=revenue – budget)
alter  table movies_db.movies_sql add column profit int ;
update  movies_db.movies_sql set profit = revenue - budget ;
SELECT Movie_name ,Revenue,Budget,profit from movies_db.movies_sql;
SELECT  Movie_name  , profit from movies_db.movies_sql ;
#Retrieve the names and loss of all the Bollywood movies in the dataset.(loss=revenue – budget)
alter  table movies_db.movies_sql add column Loss_m decimal(15,2) ;
update  movies_db.movies_sql set loss_m = budget- revenue where budget > revenue ;
SELECT Movie_name ,Revenue,Budget,profit,loss_m from movies_db.movies_sql where Loss is not null;
SELECT  Movie_name  , loss from movies_db.movies_sql ;
# Retrieve the names of all the Bollywood movies which have been released on holidays in the dataset.
SELECT Movie_Name from movies_db.movies_sql where  Release_Period = 'holiday';
# Retrieve the names of all the Bollywood movies which have lead star as Akshay Kumar and directed by Priyadarshan in thedataset.
SELECT Movie_Name ,Lead_Star,Director from movies_db.movies_sql where Lead_Star='Akshay Kumar' and Director='Priyadarshan' ;
# Retrieve the names of all the Bollywood movies starting with ‘a’ in the dataset.
SELECT Movie_Name from movies_db.movies_sql where Movie_name like  'a%';
# Retrieve the names of all the Bollywood movies ending with ‘a’ in the dataset.
SELECT Movie_Name from movies_db.movies_sql where Movie_name like  '%a';
# Retrieve the names of all the Bollywood movies having ‘a’ at second place of the name in the dataset.
SELECT Movie_Name from movies_db.movies_sql where Movie_name like  '_a%';
# Retrieve the names of all the Bollywood movies having music of amit trivedi the dataset.
SELECT Movie_Name from movies_db.movies_sql where Music_Director='Amit Trivedi';
# Retrieve the names of all the comedy movies of Akshay Kumar in the dataset.
SELECT Movie_Name from movies_db.movies_sql where Genre='comedy' and Lead_Star='Akshay kumar';
# Retrieve the names of movies and star name starring khan in the dataset.
SELECT Movie_Name , Lead_star from movies_db.movies_sql where Lead_Star like '%khan';
# Retrieve all the information of movies race and race2 in the dataset.
SELECT * from movies_db.movies_sql where Movie_Name in ('race','race 2');
# Retrieve the names of all the thriller Bollywood movies in the dataset.
SELECT Movie_Name from movies_db.movies_sql where Genre ='Thriller';
# Retrieve the names and budget of all the Bollywood movies according to the highest budget to lowest budget in the dataset.
SELECT Movie_Name ,Budget from movies_db.movies_sql order by Budget desc;
# Retrieve the names and budget of top 5 Bollywood movies with highest budget in the dataset.
SELECT Movie_Name ,Budget from movies_db.movies_sql order by Budget desc limit 5;
# Retrieve the names of top 10 Bollywood movies with highest revenue generation in the dataset.
SELECT Movie_Name ,Revenue from movies_db.movies_sql order by Revenue desc limit 10;
# Retrieve the names of top 5 movies of salman khan in the dataset.
SELECT Movie_Name ,Release_Period , Revenue from movies_db.movies_sql where Lead_star = 'Salman Khan' order by Revenue desc limit 5;
# Retrieve the names of top 5 floped movies in the dataset.
SELECT Movie_Name ,loss from movies_db.movies_sql order by loss asc limit 5;
# Retrieve the names of top 5 hit movies in the dataset.
SELECT Movie_Name ,revenue from movies_db.movies_sql  order by revenue desc limit 5;
# Which is the second movie released on maximum screens.
SELECT Movie_Name ,Number_of_screens from movies_db.movies_sql where Movie_Name order by Number_of_Screens desc limit 1 offset 1; ;
# Which is the 10th movies with highest budget.
SELECT Movie_Name ,budget from movies_db.movies_sql  order by  budget desc limit 1 offset 9;
# Which is the 2nd movie of Amitabh Bachchan with highest budget.
SELECT Movie_Name ,Lead_Star,Budget from movies_db.movies_sql where Lead_Star='Amitabh Bachchan' order by Budget desc limit 1 offset 1;
# Which are the flopped movies of AkshayKumar.
SELECT Movie_Name, loss from movies_db.movies_sql  where Lead_star ='Akshay Kumar'order by loss asc ;
# With which director Sharukh Khan have given the biggest hit movie .
SELECT  Movie_Name,Director,Revenue from movies_db.movies_sql where Lead_Star ='Shahrukh Khan' order by revenue desc limit 1 ;












 