USE codeup_test_db;

SELECT 'All albums in the table', name, artist FROM albums;
UPDATE albums SET sales = sales * 10;
SELECT * FROM albums;

SELECT 'All albums released before 1980', name, artist FROM albums WHERE release_date < 1980;
UPDATE albums SET release_date = 1800 WHERE release_date < 1980;
SELECT * FROM albums;

SELECT 'All albums by Michael Jackson', name FROM albums WHERE artist = 'Michael Jackson';
UPDATE albums SET artist = 'Peter Jackson' WHERE artist = 'Michael Jackson';
SELECT * FROM albums;