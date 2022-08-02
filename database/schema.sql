CREATE DATABASE ruby_catalog;

CREATE TABLE items (
    id SERIAL PRIMARY KEY,
    published_date DATE,
    label_id INT,
    genre_id INTEGER,
    author_id INTEGER,
    CONSTRAINT fk_label FOREIGN KEY(label_id) REFERENCES label(id),
    CONSTRAINT genre_fk FOREIGN KEY(genre_id) REFERENCES genres(id)
);
CREATE TABLE label(
    id SERIAL PRIMARY KEY,
    title VARCHAR(255),
    color VARCHAR(255),
    items INT [],
);
CREATE TABLE book(
    id SERIAL PRIMARY KEY,
    publisher VARCHAR(255),
    cover_state VARCHAR(255),
    published_date DATE,
    archived BOOLEAN,
    label_id INT,
    genre_id INT,
    CONSTRAINT fk_label FOREIGN KEY(label_id) REFERENCES label(id),
);

CREATE TABLE genres (
    id INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    name VARCHAR(50),
    items TEXT []
);

CREATE TABLE music_albums (
    id INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    name VARCHAR(50),
    published_date DATE,
    archived BOOLEAN,
    on_spotify BOOLEAN,
    genre_id INT,
    CONSTRAINT genre_fk FOREIGN KEY (genre_id) REFERENCES genres(id)
);

CREATE INDEX index_genre_id ON music_albums(genre_id);