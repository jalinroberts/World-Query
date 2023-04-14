USE world;
# Retrieve all of the information from table city
SELECT * FROM City;
# Retrieve all of the information from table country
SELECT * FROM Country;
# How many records city has 
SELECT count(*) FROM City;
# How many rows/records in country
SELECT count(*) FROM Country;
# Get set of records matching some criteria population more than 7 million
SELECT * FROM City WHERE Population > 7000000;
# Get Name and head of state name where population more than 5 million and life expectancy 70
SELECT Name,HeadOfState FROM Country
WHERE Population > 5000000 and LifeExpectancy>70;
# List Name and Population fields from country table that are Caribbean region and population more than 9000000
SELECT Name, Population FROM Country
WHERE Region="Caribbean" and Population>9000000;
# Make it descending
SELECT Name, Population FROM Country
WHERE Region="Caribbean" and Population>8000000
ORDER BY Population desc;
#Give the name and the per capita GNP for those countries a population of at least 200 million and having GNPper capota atleast .005
SELECT Name, GNP/Population as GNPperCapita FROM Country
WHERE population>=200000000
having GNPperCapita>.005;
# Show the name and population for France, Germany, Italy
SELECT name, country FROM Country
WHERE name IN ('France','Germany','Italy');
#A country is big if it has an area of more than 3 million sq km or it has a population of more than 250 million. Show the countries that are big by area or big by population. Show name, population and area.
SELECT name, population, SurfaceArea FROM Country
WHERE SurfaceArea>3000000 or population>250000000
order by population desc;
# The name of three countries which are least populated among the countries which have at least 40,0000 people
SELECT name, population FROM Country
WHERE population>40000
Order by population limit 3;
# Search for population in the last table where Name contains ‘U.S.’
SELECT Name,Population FROM Country
WHERE Name like "%U.S%";
# Search for records in the Country table where the head of state’s name 'bush'
SELECT Name, HeadOfState, population FROM Country
WHERE HeadOfState like '%bush%';
# Search for records in the Country table where the head of state’s name end with 'II'
SELECT Name, HeadOfState, population FROM Country
WHERE HeadOfState like '%II';
# Search for records in the Country table where the head of state’s name ends with ‘i’, 
SELECT Name, HeadOfState, population FROM Country
WHERE HeadOfState like '%i';
# And the country name starts with a ‘U’. 
SELECT Name FROM Country
WHERE Country like 'U%';
# Select the country with the minimum population
SELECT Country, MIN(population) AS min_pop FROM Country;
# Select the city name with the maximum population
SELECT City, MAX(population) AS max_pop FROM Country;
# Find out the language spoken for the cities started with UZ
SELECT * FROM CountryLanguage WHERE Language = True
WHERE Name like 'UZ%';