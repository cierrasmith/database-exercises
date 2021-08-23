USE codeup_test_db;

drop table if exists albums;

CREATE TABLE albums (
                        id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                        artist VARCHAR(100) NOT NULL,
                        name  VARCHAR(200) NOT NULL,
                        release_date YEAR,
                        sales FLOAT,
                        genre VARCHAR(100),
                        PRIMARY KEY (id)
);

describe albums;