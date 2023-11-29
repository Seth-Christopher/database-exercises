USE hippo_seth;

SELECT name
FROM albums
WHERE artist = 'Pink Floyd';

SELECT release_date
FROM albums
WHERE name = 'Sgt. Pepper''s Lonely Hearts Club Band';

SELECT genre
FROM albums
WHERE name = 'Dangerous';

SELECT *
FROM albums
WHERE release_date between 1990 and 1999;

SELECT *
FROM albums
WHERE sales < 20;

SELECT *
FROM albums
WHERE genre = 'Rock';