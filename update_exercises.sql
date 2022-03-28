SELECT album_name
FROM albums;

SELECT release_date
FROM albums;

SELECT * FROM albums WHERE artist = 'Michael Jackson'

UPDATE albums
SET sales = sales * 10

UPDATE albums
SET artist = 'Peter Jackson'
WHERE artist = 'Michael Jackson'