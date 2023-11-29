USE hippo_seth;

SELECT *
FROM albums
WHERE release_date > 1991;

SELECT *
FROM albums
WHERE genre LIKE '%Disco%' AND genre NOT LIKE '%post-disco%';

SELECT *
FROM albums
WHERE artist = 'Whitney Houston';

DELETE
FROM albums
WHERE release_date < 1900;

DELETE
FROM albums
WHERE genre LIKE '%Disco%' AND genre NOT LIKE '%post-disco%';

DELETE
FROM albums
WHERE artist = 'Madonna';