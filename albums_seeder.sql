USE codeup_test_db;

TRUNCATE albums;

INSERT INTO albums(artist, name, release_date, sales, genre)
values ('Michael Jackson', 'Thriller', 1982, 47.9, 'Pop'),
       ('AC/DC', 'Back in Black', 1980, 29.6, 'Hard Rock'),
       ('Meat Loaf', 'Bat Out of Hell', 1977, 21.7, 'Hard Rock'),
       ('Whitney Houston', 'The Bodyguard', 1992, 32.4, 'R&B'),
       ('Pink Floyd', 'The Dark Side of the Moon', 1973, 24.4, 'Progressive Rock'),
       ('Eagles', 'Their Greatest Hits (1971-1975)', 1976, 41.2, 'Progressive Rock'),
       ('Bee Gees', 'Saturday Night Fever', 1977, 21.6, 'Disco'),
       ('Fleetwood Mac', 'Rumours', 1977, 27.9, 'Soft Rock'),
       ('Shania Twain', 'Come On Over', 1997, 29.6, 'Country'),
       ('Led Zeppelin', 'Led Zeppelin IV', 1971, 29.0, 'Hard Rock'),
       ('Michael Jackson', 'Bad', 1987, 19.7, 'Pop'),
       ('Alanis Morissette', 'Jagged Little Pill', 1995, 24.3, 'Alternative Rock'),
       ('Michael Jackson', 'Dangerous', 1991, 17.0, 'Pop'),
       ('Celine Dion', 'Falling Into You', 1996, 21.1, 'Pop'),
       ('Eagles', 'Hotel California', 1976, 31.5, 'Soft Rock'),
       ('The Beatles', 'Sgt. Peppers Lonely Hearts Club Band', 1967, 18.2, 'Rock'),
       ('Pink Floyd', 'The Wall', 1979, 18.7, 'Progressive Rock'),
       ('Nirvana', 'Nevermind', 1991, 16.7, 'Alternative Rock'),
       ('Santana', 'Supernatural', 1999, 20.5, 'Latin Rock'),
       ('Guns N Roses', 'Appetite for Destruction', 1987, 21.9, 'Hard Rock');

SELECT * FROM albums;