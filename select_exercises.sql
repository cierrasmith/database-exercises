USE codeup_test_db;

SELECT 'All albums by Pink Floyd', name FROM albums WHERE artist = 'Pink Floyd';

SELECT 'The Year Sgt. Pepper''s Lonely Hearts Club band was released', release_date FROM albums WHERE name = 'Sgt. Pepper''s Lonely Hearts Club Band';

SELECT 'The genre from Nevermind', genre FROM albums WHERE name = 'Nevermind';

SELECT 'Albums released in the 1990s', name, artist FROM albums WHERE release_date BETWEEN 1990 AND 1999;

SELECT 'Albums with less than 20 million certified sales', name, artist FROM albums WHERE sales < 20.0;

SELECT 'Albums with a genre of Rock', name, artist FROM albums WHERE genre = 'Rock';