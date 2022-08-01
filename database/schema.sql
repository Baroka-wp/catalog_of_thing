CREATE DATABASE ruby_catalog;
CREATE TABLE items (
    id SERIAL PRIMARY KEY,
    published_date DATE,
    label_id INT,
    genre_id INTEGER,
    author_id INTEGER
);