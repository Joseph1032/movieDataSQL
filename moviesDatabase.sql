SELECT * from movies;

SELECT title, movieid
FROM movies
LIMIT 10;

SELECT title, movieid
FROM movies
WHERE movieid = '485';

SELECT movieid
FROM movies
WHERE title = 'Made in America (1993)';

SELECT title
FROM movies
ORDER BY  title
LIMIT 10;

SELECT title
FROM movies
WHERE title like '%2002%';

SELECT title
FROM movies
WHERE lower(title) like '%godfather%'
LIMIT 1;

SELECT title, genres
FROM movies
WHERE genres = 'Comedy';

SELECT title, genres
FROM movies
WHERE (genres = 'Comedy' and title like '%2000%');

SELECT  m.*
FROM movies m
INNER JOIN tags t on m.movieid = t.movieid
WHERE tag = 'death';

SELECT title
FROM movies
WHERE (title like '%2001%' or title like '%2002%') and lower(title) like '%super%';

SELECT m.title, r.rating
FROM movies m
INNER JOIN ratings r  on m.movieid = r.movieid
WHERE lower(title) like '%godfather%';

SELECT m.title, r.rating
FROM movies m
INNER JOIN ratings r on m.movieid = r.movieid
WHERE lower(title) like '%godfather, the%'
ORDER BY r.timestamp desc;

SELECT m.title, m.genres, l.imdbid
FROM movies m
INNER JOIN links l on m.movieid = l.movieid
WHERE title like '%2005%' and genres  = 'Comedy';

SELECT m.title, r.rating
FROM movies m
LEFT JOIN ratings r on m.movieid = r.movieid
WHERE r.rating is null;

SELECT m.*
FROM movies m
INNER JOIN movie_genre mg on m.movieid = mg.movieid
INNER JOIN genre g on mg.genre_id = g.id
where g.genres = 'Fantasy';
