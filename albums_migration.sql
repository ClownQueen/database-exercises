/* Write some SQL to drop a table named albums if it exists.
Create an albums table with the following columns:
 X id — auto-incrementing unsigned integer primary key
artist — string for storing the recording artist name
name — string for storing a record name
release_date — integer representing year record was released
sales — floating point value for number of records sold (in millions)
genre — string for storing the record's genre(s)
Copy the contents of your albums_migration.sql file into your SQL command text box on adminer and execute:
Use DESCRIBE and SHOW to verify that your albums table has been successfully created. */

CREATE TABLE IF NOT EXISTS albums (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    Jack_Stauber varchar (50) Not Null,
    Shop_A_Pop_Opera varchar (100) Not Null,
    release_date INT (2020),
    sales float (0),
    Pop varchar (50) Not Null,
    PRIMARY key (id)
    );