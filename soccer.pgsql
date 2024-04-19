DROP DATABASE soccerleague ;
CREATE DATABASE soccerleague ;
\c soccerleague

CREATE TABLE team (
    id SERIAL PRIMARY KEY,
    team TEXT,
    city TEXT
);

CREATE TABLE players (
    id SERIAL PRIMARY KEY,
    name TEXT,
    team_id INTEGER,
    goals INTEGER
);

CREATE TABLE matches (
    home_id INTEGER,
    away_id INTEGER,
    date DATE,
    time TIME, 
    location TEXT,
    name REFRENCES refs
)

CREATE TABLE refs (
    id SERIAL PRIMARY KEY,
    name TEXT
);

CREATE TABLE results (
    id SERIAL PRIMARY KEY,
    match_id TEXT,
    result TEXT
)

