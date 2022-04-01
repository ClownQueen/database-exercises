use micah;

# 3 tables
# One table to hold records representing our users
# One table to hold records representing the leagues
# One table to hold the relationships between leagues and their members (non-owners)
# The user table should have the following fields - id, username, password
# The league table should have the following fields - id, name, start_date, end_date, reference to the user who created the league
# I won't name the fields of the associative table as that will spoil the surprise

CREATE TABLE IF NOT EXISTS user (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR (50),
    password VARCHAR (100)
);

CREATE TABLE IF NOT EXISTS leagues (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    team_name VARCHAR (100),
    start_date date,
    end_date date,
    team_owner INT UNSIGNED NOT NULL,
    FOREIGN KEY (team_owner) REFERENCES user(id)
);

CREATE TABLE IF NOT EXISTS user_leagues (
    player_id INT(10) UNSIGNED NOT NULL,
    leagues_id INT(10) UNSIGNED NOT NULL,
    FOREIGN KEY (player_id) REFERENCES user(id),
    FOREIGN KEY (leagues_id) REFERENCES leagues(id)
);

CREATE TABLE IF NOT EXISTS user_ads (
    user_id INT(10) UNSIGNED NOT NULL,
    title VARCHAR(50),
    description VARCHAR(200),
    categories VARCHAR(200),
    FOREIGN KEY (user_id) REFERENCES user(id)
);