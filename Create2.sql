--The library needs a list of authors and the titles of their books for all Thrillers that were published after 2000 and have more than 400 pages. Order the list alphabeticaly by author and then title.
--Your code below this line
SELECT *
FROM book AS b
WHERE b.genre = 'thriller' AND b.publication_year > 2000 AND b.pages > 400
ORDER BY b.author ASC, b.title ASC;

--The library needs all of the information for their titles published in 2008 by publisher Thomson Reuters. The list should be sorted with the highest price on top.
--Your code below this line
SELECT b.title, b.publication_year, b.author, b.price
FROM book AS b 
WHERE b.publication_year = 2008 
AND b.publisher = 'Thomson Reuters'
ORDER BY b.price DESC;

--The library needs a list of titles with the author, publisher, and number of pages. Only include titles with more than 700 or fewer than 500 pages. Also, the price must be less than 35. The list should show the titles with the most pages first.
--Your code below this line
SELECT b.title, b.author, b.publisher, b.pages
FROM book AS b 
WHERE (b.pages > 700 OR b.pages < 500)
AND b.price < 35
ORDER BY b.pages DESC; 

--The video game store needs a list of publishers. Each publisher should only be listed once and the list should be alphabetized.
--Your code below this line
SELECT DISTINCT v.publisher
FROM video_game AS v 
ORDER BY v.publisher ASC;

--The video game store needs a list of titles available on Playstation. Include the developer, metacritic score, and the user score. The list should be sorted with the greatest metacritic score on top. If two games have the sam emetacritic score, the one with the higher user score should be on top.
--Your code below this line
SELECT v.title, v.developer, v.metacritic_score, v.user_score
FROM video_game AS v
WHERE v.platform = 'Playstation'
ORDER BY v.metacritic_score DESC, v.user_score DESC;

--A video game store needs a list of their titles for all platforms except for mobile.  The list should include titles that have a metacritic score between 85 and 100
--Your code below this line
SELECT v.title, v.platform, v.metacritic_score
FROM video_game AS v 
WHERE v.metacritic_score BETWEEN 85 AND 100 
AND v.platform NOT IN ('MOBILE')

--A car dealer needs to know the make, model, year, and fuel type of all cars that have a model starting with "C". The list should be sorted alphabetically by make and model with the newest models listed first.
--Your code below this line
SELECT c.make, c.model, c.year, c.fuel_type
FROM car AS c 
WHERE c.model LIKE 'C%' 
ORDER BY c.make ASC, c.model ASC, c.year DESC;
