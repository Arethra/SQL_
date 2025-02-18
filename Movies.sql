CREATE TABLE Movies(
id int,
Title varchar(50),
Director varchar(50),
Year int,
Length_minutes int
)

INSERT INTO Movies VALUES
(1, 'Toy Story', 'John Lasseter', 1995, 81),
(2, 'A Bug''s Life', 'John Lasseter', 1998, 95),
(3, 'Toy Story 2', 'John Lasseter', 1999, 93),
(4, 'Monsters, Inc.', 'Pete Docter', 2001, 92),
(5, 'Finding Nemo', 'Andrew Stanton', 2003, 107),
(6, 'The Incredibles', 'Brad Bird', 2004, 116), 
(7, 'Cars', 'John Lasseter', 2006, 117),
(8, 'Ratatouille', 'Brad Bird', 2007, 115),
(9, 'WALL-E', 'Andrew Stanton', 2008, 104),
(10, 'Up', 'Pete Docter', 2009, 101),
(11, 'Toy Story 3', 'Lee Unkrich', 2010, 103),
(12, 'Cars 2', 'John Lasseter', 2011, 120),
(13, 'Brave', 'Brenda Chapman', 2012, 102),
(14, 'Monsters University', 'Dan Scanlon', 2013, 110)

--Exercise 
--1. Find the title of each film 

Select Title from Movies

--2. Find the director of each film 

Select Director from Movies

--3. Find the title and director of each film 

Select Title, Director from Movies

--4. Find the title and year of each film 

Select Title, Year from Movies

--5. Find all the information about each film 

Select * from Movies

--6. Find the movie with a row id of 6 

Select * from Movies
where id = 6

--7. Find the movies released in the years between 2000 and 2010 

Select * from Movies
where Year >= 2000 and Year <= 2010

--8. Find the movies not released in the years between 2000 and 2010 

Select * from Movies
where Year NOT BETWEEN 2000 AND 2010

--9. Find the first 5 Pixar movies and their release year 

Select top 5 Title, Year from Movies

--10. Find all the Toy Story movies 

Select * from Movies
where Title like '%Toy%Story%'

--11. Find all the movies directed by John Lasseter 

Select Title from Movies
where Director = 'John Lasseter'

--12. Find all the movies (and director) not directed by John Lasseter 

Select Title, Director from Movies
where Director != 'John Lasseter'

--13. Find all the WALL-* movies 

Select * from Movies
where Title = '%wall%'

--14. List all directors of Pixar movies (alphabetically), without duplicates 

Select distinct Director from Movies
order by Director

--15. List the last four Pixar movies released (ordered from most recent to least)

Select top 5 * from Movies
order by Year desc

--16. List the first five Pixar movies sorted alphabetically 

Select top 5 * from Movies
order by Year, Title

--17. List the next five Pixar movies sorted alphabetically

select * from Movies
order by Year, Title
offset  5 rows
fetch next 5 rows only
