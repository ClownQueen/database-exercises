DESCRIBE albums;

ALTER TABLE albums
ADD UNIQUE (album_name, artist);