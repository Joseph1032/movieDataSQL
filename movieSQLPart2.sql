SELECT m.title, avg(r.rating)
FROM movies m
JOIN ratings r on m.movieid = r.movieid
GROUP BY m.title;

SELECT m.title, sum(r.rating)
from movies m
JOIN ratings r on m.movieid = r.movieid
GROUP BY m.title;

SELECT m.title, g.genres
from movies m
JOIN genre g on m.genres = g.genres;

SELECT r.userid, avg(r.rating)
from ratings r
GROUP BY r.userid;

SELECT r.userid, max(rating)
from ratings r
GROUP BY r.userid;

select r.userid, avg(r.rating)
from ratings r
GROUP BY r.userid, r.rating
ORDER BY r.userid, r.rating desc;

SELECT title, avg(r.rating)
from movies m
INNER JOIN ratings r on m.movieid = r.movieid
WHERE rating > 4
GROUP BY m.title;



INSERT INTO actors (name, character_name, date_of_birth, movieid)
values ('Matthew', 'Chandler', '11-25-1990', 923),
       ('Matthew', 'Chandler', '11-26-1983', 923),
       ('Matthew', 'Chandler', '11-27-1983', 923),
       ('Matthew', 'Chandler', '11-28-1983', 923),
       ('Matthew', 'Chandler', '11-29-1983', 923),
       ('Matthew', 'Chandler', '11-30-1983', 923),
       ('Matthew', 'Chandler', '12-01-1983', 923),
       ('Matthew', 'Chandler', '12-02-1983', 923),
       ('Matthew', 'Chandler', '12-03-1983', 923),
       ('Matthew', 'Chandler', '12-04-1983', 923);

INSERT INTO actors (name, character_name, date_of_birth, movieid)
values ('Matt', 'Joey', '1-25-1983', 1),
      ('Matt', 'Joey', '1-26-1983', 1),
      ('Matt', 'Joey', '1-27-1983', 1),
      ('Matt', 'Joey', '1-28-1983', 1),
      ('Matt', 'Joey', '1-29-1983', 1),
      ('Matt', 'Joey', '1-30-1983', 1),
      ('Matt', 'Joey', '2-01-1983', 1),
      ('Matt', 'Joey', '2-02-1983', 1),
      ('Matt', 'Joey', '2-03-1983', 1),
      ('Matt', 'Joey', '2-04-1983', 1);

INSERT INTO actors (name, character_name, date_of_birth, movieid)
values ('David', 'Ross', '3-25-1983', 212),
      ('David', 'Ross', '3-26-1983', 212),
      ('David', 'Ross', '3-27-1983', 212),
      ('David', 'Ross', '3-28-1983', 212),
      ('David', 'Ross', '3-29-1983', 212),
      ('David', 'Ross', '3-30-1983', 212),
      ('David', 'Ross', '4-01-1983', 212),
      ('David', 'Ross', '4-02-1983', 212),
      ('David', 'Ross', '4-03-1983', 212),
      ('David', 'Ross', '4-04-1983', 212);

UPDATE movies
SET mpaa = 'PG'
WHERE movieid = '12';

UPDATE movies
SET mpaa = 'PG'
WHERE movieid = '34';

UPDATE movies
SET mpaa = 'PG'
WHERE movieid = '48';

UPDATE movies
SET mpaa = 'R'
WHERE movieid = '111';

UPDATE movies
SET mpaa = 'G'
WHERE movieid = '239';

