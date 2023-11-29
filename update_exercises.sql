USE hippo_seth;

SELECT *
FROM albums;

SELECT *
FROM albums
WHERE release_date <= 1980;

SELECT *
FROM albums
WHERE artist = 'Michael Jackson';

# below are UPDATE STATEMENTS

UPDATE albums
SET sales = sales * 10;

UPDATE albums
SET release_date = release_date - 100
WHERE release_date < 1980;

UPDATE albums
SET artist = 'Michael Blackson'
WHERE artist = 'Michael Jackson';