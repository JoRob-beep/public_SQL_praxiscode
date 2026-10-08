CREATE DATABASE musiksammlung;
CREATE TABLE genre (
    genre_id INT NOT NULL PRIMARY KEY,
    genre VARCHAR(200) NOT NULL
);

CREATE TABLE artist (
    artist_id INT NOT NULL PRIMARY KEY,
    interp VARCHAR(100) NOT NULL
);

CREATE TABLE titel (
    titel_id INT NOT NULL PRIMARY KEY,
    titel VARCHAR(200) NOT NULL,
    rating INT,
    titel_num INT NOT NULL
);

CREATE table cd (
    cd_id INT NOT NULL PRIMARY KEY,
    cd_name VARCHAR(100) NOT NULL,
    genre_id INT NOT NULL,
    FOREIGN KEY (genre_id) REFERENCES genre(genre_id)
);

--  Zwischentabelle: Titel-CD Many to Many
CREATE TABLE between1_titel_cd (
    titel_id INT NOT NULL,
    cd_id INT NOT NULL,
    FOREIGN KEY (titel_id) REFERENCES titel(titel_id),
    FOREIGN KEY (cd_id) REFERENCES cd(cd_id)
);

-- Zw.Tabelle: CD-Musiker Many to Many
CREATE table between2_cd_artist (
    artist_id INT NOT NULL,
    cd_id INT NOT NULL,
    FOREIGN KEY (artist_id) REFERENCES artist(artist_id),
    FOREIGN KEY (cd_id) REFERENCES cd(cd_id)
);
