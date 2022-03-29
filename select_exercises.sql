SELECT album_name
FROM albums
Where artist = 'Pink Floyd'

SELECT release_date
FROM albums
Where album_name = 'Sgt. Pepper''s lonely hearts club band'

SELECT album_name
FROM albums
Where genre = 'Grunge, alternative rock'

SELECT * FROM albums Where release_date = between 1990 and 1999

SELECT * FROM albums Where sales < 20

SELECT * FROM albums Where genre = 'rock'