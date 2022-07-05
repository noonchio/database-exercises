

USE codeup_test_db;

Select * FROM codeup_test_db.albums;

ALTER TABLE albums ADD UNIQUE  artist_album (artist, name );

ALTER TABLE albums   DROP INDEX artist_album;

SHOW INDEX FROM albums;



