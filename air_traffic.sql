DROP DATABASE IF EXISTS air_traffic;

CREATE DATABASE air_traffic;

\c air_traffic

CREATE TABLE passenger_info
( passenger_id SERIAL PRIMARY KEY,
  first_name TEXT NOT NULL,
  last_name TEXT NOT NULL,
  seat TEXT NOT NULL
);

CREATE TABLE departures
( 
  departure_id SERIAL PRIMARY KEY,
  airline TEXT NOT NULL,
  departure TIMESTAMP NOT NULL,
  from_city TEXT NOT NULL,
  from_country TEXT NOT NULL
);

CREATE TABLE arrivals
( 
  arrival_id SERIAL PRIMARY KEY,
  airline TEXT NOT NULL,
  arrival TIMESTAMP NOT NULL,
  to_city TEXT NOT NULL,
  to_country TEXT NOT NULL
);

INSERT INTO passenger_info
  (first_name, last_name, seat)
VALUES 
  ('Jennifer', 'Finch', '33B'),
  ('Thadeus', 'Gathercoal', '8A'),
  ('Sonja', 'Pauley', '12F'),
  ('Jennifer', 'Finch', '20A'),
  ('Waneta', 'Skeleton', '23D'),
  ('Thadeus', 'Gathercoal', '18C'),
  ('Berkie', 'Wycliff', '9E'),
  ('Cory', 'Squibbes', '10D');

INSERT INTO departures
  (airline, departure, from_city, from_country)
VALUES 
  ('United', '2018-04-08 09:00:00', 'Washington DC', 'United States'),
  ('British Airways', '2018-12-19 12:45:00', 'Tokyo', 'Japan'),
  ('Delta', '2018-12-19 12:45:00', 'Los Angeles', 'United States'),
  ('Delta', '2018-01-02 07:00:00', 'Seattle', 'United States'),
  ('TUI Fly Belgium', '2018-08-01 18:30:00', 'Paris', 'France'),
  ('Air China', '2018-10-31 01:15:00', 'Dubai', 'UAE'),
  ('United', '2019-02-06 06:00:00', 'New York', 'United States'),
  ('American Airlines', '2018-12-22 14:42:00', 'Cedar Rapids', 'United States'),
  ('American Airlines', '2019-02-06 16:28:00', 'Charlotte', 'United States'),
  ('Avianca Brasil', '2019-01-20 19:30:00', 'Sao Paolo', 'Brazil');

INSERT INTO arrivals
  (airline, arrival, to_city, to_country)
VALUES
  ('United','2018-04-08 12:00:00', 'Seattle', 'United States'),
  ('British Airways','2018-12-19 16:15:00', 'London', 'United Kingdom'),
  ('Delta', '2018-01-02 08:03:00', 'Las Vegas', 'United States'),
  ('Delta', '2018-04-15 21:00:00', 'Mexico City', 'Mexico'),
  ('TUI Fly Belgium', '2018-08-01 21:50:00', 'Casablanca', 'Morocco'),
  ('Air China', '2018-10-31 12:55:00', 'Beijing', 'China'),
  ('United', '2019-02-06 07:47:00', 'Charlotte', 'United States'),
  ('American Airlines', '2018-12-22 15:56:00', 'Chicago', 'United States'),
  ('American Airlines', '2019-02-06 19:18:00', 'New Orleans', 'United States'),
  ('Avianca Brasil', '2019-01-20 22:45:00', 'Santiago', 'Chile');

