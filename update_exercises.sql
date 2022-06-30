USE codeup_test_db;

SELECT * FROM albums;

SELECT * FROM albums WHERE release_date > 1980;

SELECT * FROM albums WHERE artist = 'Michael Jackson';

# After each SELECT add an UPDATE statement to:
#     Make all the albums 10 times more popular (sales * 10)
#     Move all the albums before 1980 back to the 1800s.
#     Change 'Michael Jackson' to 'Peter Jackson'
#     Add SELECT statements after each UPDATE so you can see the results of your handiwork.

UPDATE albums
SET sales = sales * 10;


SELECT * FROM albums WHERE release_date < 1980;

UPDATE albums
set release_date = 1800
WHERE release_date < 1980;

UPDATE albums
SET artist = 'Peter Jackson'
WHERE  artist = 'Michael Jackson'

