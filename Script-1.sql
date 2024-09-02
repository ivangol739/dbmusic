DROP TABLE IF EXISTS Genre CASCADE;
DROP TABLE IF EXISTS Performer CASCADE;
DROP TABLE IF EXISTS Album CASCADE;
DROP TABLE IF EXISTS Track CASCADE;


CREATE TABLE IF NOT EXISTS Genre (
	genre_id INTEGER PRIMARY KEY,
	genre_name VARCHAR(80) NOT NULL
)

CREATE TABLE IF NOT EXISTS Performer (
	performer_id INTEGER PRIMARY KEY,
	performer_name VARCHAR(120) NOT NULL
)

CREATE TABLE IF NOT EXISTS Album (
	album_id INTEGER PRIMARY KEY,
	album_name VARCHAR(50) NOT NULL,
	album_year_of_issue INTEGER
)

CREATE TABLE IF NOT EXISTS Track (
	track_id INTEGER PRIMARY KEY,
	track_name VARCHAR(60) NOT NULL,
	track_duration INTEGER,
	album_id INTEGER REFERENCES Album(album_id)
)

CREATE TABLE IF NOT EXISTS Collection(
	collection_id INTEGER PRIMARY KEY,
	collection_name VARCHAR(80),
	collection_year_of_issue INTEGER
)

CREATE TABLE IF NOT EXISTS Performer_Genre (
	performer_genre_id INTEGER PRIMARY KEY,
	genre_id INTEGER REFERENCES Genre(genre_id),
	performer_id INTEGER REFERENCES Performer(performer_id)
)

CREATE TABLE IF NOT EXISTS Performer_Album (
	performer_album_id INTEGER PRIMARY KEY,
	performer_id INTEGER REFERENCES Performer(performer_id),
	album_id INTEGER REFERENCES Album(album_id)
)

CREATE TABLE IF NOT EXISTS Collection_Track (
	collection_track_id INTEGER PRIMARY KEY,
	track_id INTEGER REFERENCES Track(track_id),
	collection_id INTEGER REFERENCES Collection(collection_id)
)

CREATE TABLE IF NOT EXISTS Employee (
	employee_id INTEGER PRIMARY KEY,
	employee_name VARCHAR(80),
	employee_department VARCHAR(80),
	boss integer references Employee(employee_id)
);