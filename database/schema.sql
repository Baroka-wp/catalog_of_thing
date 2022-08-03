CREATE DATABASE ruby_catalog;
CREATE TABLE items (
    id SERIAL PRIMARY KEY,
    published_date DATE,
    label_id INT,
    genre_id INTEGER,
    author_id INTEGER,
    CONSTRAINT fk_label FOREIGN KEY(label_id) REFERENCES label(id),
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

CREATE TABLE game(
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    published_date DATE,
    multiplayer VARCHAR(255),
    last_played_at DATE
);

CREATE TABLE author(
    id SERIAL PRIMARY KEY,
    first_name VARCHAR(255),
    last_name VARCHAR(255)
);