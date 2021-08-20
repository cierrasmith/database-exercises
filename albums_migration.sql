USE codeup_test_db;

drop table if exists albums;

CREATE TABLE albums (
                        id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                        artist VARCHAR(50) DEFAULT 'NONE',
                        name  VARCHAR(100) NOT NULL,
                        release_date YEAR,
                        sales FLOAT DOUBLE,
                        genre VARCHAR(50),
                        PRIMARY KEY (id)
);