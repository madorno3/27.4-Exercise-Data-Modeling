DROP DATABASE IF EXISTS music;

CREATE DATABASE music;

\c music

CREATE TABLE artists
(
  id SERIAL PRIMARY KEY,
  artists TEXT NOT NULL
);

CREATE TABLE producers
(
  id SERIAL PRIMARY KEY,
  producers TEXT[] NOT NULL
);

CREATE TABLE song_info
(
  id SERIAL PRIMARY KEY,
  title TEXT NOT NULL,
  album TEXT NOT NULL,
  duration_in_seconds INTEGER NOT NULL,
  release_date DATE NOT NULL
);

INSERT INTO artists 
  (artists)
VALUES 
  ('{"Hanson"}'),
  ('{"Queen"}'),
  ('{"Mariah Cary", "Boyz II Men"}'),
  ('{"Lady Gaga", "Bradley Cooper"}'),
  ('{"Nickelback"}'),
  ('{"Jay Z", "Alicia Keys"}'),
  ('{"Katy Perry", "Juicy J"}'),
  ('{"Maroon 5", "Christina Aguilera"}'),
  ('{"Avril Lavigne"}'),
  ('{"Destiny''s Child"}');

INSERT INTO producers
  (producers)
VALUES 
  ('{"Dust Brothers", "Stephen Lironi"}'),
  ('{"Roy Thomas Baker"}'),
  ('{"Walter Afanasieff"}'),
  ('{"Benjamin Rice"}'),
  ('{"Rick Parashar"}'),
  ('{"Al Shux"}'),
  ('{"Max Martin", "Cirkut"}'),
  ('{"Shellback", "Benny Blanco"}'),
  ('{"The Matrix"}'),
  ('{"Darkchild"}');

INSERT INTO song_info
  (title, album, duration_in_seconds, release_date)
VALUES
  ('MMMBop', 'Middle of Nowhere', 238, '04-15-1997'),
  ('Bohemian Rhapsody', 'A Night at the Opera', 355, '04-15-1997'),
  ('One Sweet Day', 'Daydream', 282, '11-14-1995'),
  ('Shallow', 'A Star Is Born', 216, '09-27-2018'),
  ('How You Remind Me', 'Silver Side Up', 223, '08-21-2001'),
  ('New York State of Mind', 'The Blueprint 3', 276, '10-20-2009'),
  ('Dark Horse', 'Prism', 215, '12-17-2013'),
  ('Moves Like Jagger', 'Hands All Over', 201, '06-21-2011'),
  ('Complicated', 'Let Go', 244, '05-14-2002'),
  ('Say My Name', 'The Writing''s on the Wall', 240, '11-07-1999');






