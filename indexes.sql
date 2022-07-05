

USE codeup_test_db;

Select * FROM codeup_test_db.albums;

describe albums;

ALTER TABLE albums ADD UNIQUE  artist_album (artist, name );

ALTER TABLE albums   DROP INDEX artist_album;

SHOW INDEX FROM albums;

INSERT INTO albums (artist, name, release_date, sales, genre)
values ('test artist', 'test album', 200, 11, 'test')



