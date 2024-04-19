DROP DATABASE craigslist;
CREATE DATABASE craigslist;
\c craigslist;

CREATE TABLE region (
    id SERIAL PRIMARY KEY,
    city TEXT,
    state TEXT,
    zip INTEGER,
    country TEXT
);

CREATE TABLE users (
    
)
CREATE TABLE posts (
    id SERIAL PRIMARY KEY,
    title TEXT,
    user_id INTEGER REFERENCES users,
    region TEXT
    comment_text TEXT NOT NULL
);

CREATE TABLE categories (
    id SERIAL PRIMARY KEY,
    name TEXT
)