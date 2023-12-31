USE hippo_seth;


# The name of all albums by Pink Floyd.
SELECT name
FROM albums
WHERE artist = 'Pink Floyd';

# The year Sgt. Pepper's Lonely Hearts Club Band was released
SELECT release_date
FROM albums
WHERE name = 'Sgt. Pepper''s Lonely Hearts Club Band';

# The genre for Dangerous
SELECT genre
FROM albums
WHERE name = 'Dangerous';

# Which albums were released in the 1990s
SELECT *
FROM albums
WHERE release_date between 1990 and 1999;

# Which albums had less than 20 million certified sales
SELECT *
FROM albums
WHERE sales < 20;

# All the albums with a genre of "Rock".
SELECT *
FROM albums
WHERE genre = 'Rock';