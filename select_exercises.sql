USE codeup_test_db;

SELECT * FROM albums WHERE name = 'PINK FLOYD';

SELECT release_date FROM albums WHERE name = 'Sgt. Peppers Lonely Hearts Club Band';

SELECT genre FROM albums WHERE name = 'NEVERMIND';

SELECT name FROM albums WHERE release_date >= 1990;

SELECT name FROM albums WHERE sales < 20;

SELECT name FROM albums WHERE genre = 'ROCK';

