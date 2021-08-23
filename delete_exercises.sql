USE codeup_test_db;

# SELECT 'Albums released after 1991', name, artist FROM albums WHERE release_date > 1991;
DELETE FROM albums WHERE release_date > 1991;

# SELECT 'Albums with the genre '"'disco'", name, artist FROM albums WHERE genre = 'Disco';
DELETE FROM albums WHERE genre = 'Disco';

# SELECT 'Albums by Whitney Houston', name FROM albums WHERE artist = 'Whitney Houston';
DELETE FROM albums WHERE artist = 'Whitney Houston';

SELECT * FROM albums;