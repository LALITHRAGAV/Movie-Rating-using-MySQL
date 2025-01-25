CREATE DATABASE MovieDB;
USE MovieDB;

1.Fetch the top 10 movies based on IMDb rating
SELECT Movie_name, Rating_from_10
FROM imdb
ORDER BY Rating_from_10 DESC
LIMIT 10;

2. List movies released after the year 2000 with a rating higher than 8.5
SELECT Movie_name, Year, Rating_from_10
FROM imdb
WHERE Year > 2000 AND Rating_from_10> 8.5
ORDER BY Rating_from_10 DESC;

 3.. Count movies by genre
SELECT Genre, COUNT(*) AS movie_count
FROM imdb
GROUP BY Genre
ORDER BY movie_count DESC;

4.Find all top movies released in a specific decade
SELECT Movie_name, Year, Rating_from_10
FROM imdb
WHERE Year BETWEEN 2000 AND 2009 -- Adjust this for the desired decade
ORDER BY Rating_from_10 DESC;

5.Find the average rating for movies withname in each genre
SELECT Genre, AVG(Rating_from_10) AS Avg_Rating, Movie_name
FROM imdb
GROUP BY Genre, Movie_name;

6.Count Movies byYear
SELECT Year, COUNT(*) AS movie_count
FROM imdb
GROUP BY Year
ORDER BY Year DESC;S

Find Genres with the Highest Average Gross
SELECT Genre, AVG(Gross_in_$_M) AS avg_gross
FROM imdb
WHERE Gross_in_$_M IS NOT NULL
GROUP BY Genre
ORDER BY avg_gross DESC;

