CREATE TABLE IF NOT EXISTS genres (
	genre_id SERIAL PRIMARY KEY,
	name VARCHAR(100) NOT NULL,
	description TEXT
);

CREATE TABLE IF NOT EXISTS artists (
	artist_id SERIAL PRIMARY KEY,
	name VARCHAR(100) NOT NULL,
	bio TEXT,
	formed_year DATE,
	country VARCHAR(50)
);

CREATE TABLE IF NOT EXISTS artists_genres (
	artist_id INTEGER NOT NULL REFERENCES artists(artist_id),
	genre_id INTEGER NOT NULL REFERENCES genres(genre_id),
	CONSTRAINT pk_artists_genres PRIMARY KEY (artist_id, genre_id)
);

CREATE TABLE IF NOT EXISTS albums (
	album_id SERIAL PRIMARY KEY,
	title VARCHAR(100) NOT NULL,
	release_year DATE NOT NULL,
	cover_image VARCHAR(255)
);

CREATE TABLE IF NOT EXISTS artists_albums (
	artist_id INTEGER NOT NULL REFERENCES artists(artist_id),
	album_id INTEGER NOT NULL REFERENCES albums(album_id),
	CONSTRAINT pk_artists_album PRIMARY KEY (artist_id, album_id)
);

CREATE TABLE IF NOT EXISTS tracks (
	track_id SERIAL PRIMARY KEY,
	title VARCHAR(100) NOT NULL,
	album_id INTEGER NOT NULL REFERENCES albums(album_id),
	duration INTEGER NOT NULL,
	track_number INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS compilations (
	comp_id SERIAL NOT NULL PRIMARY KEY,
	title VARCHAR(100) NOT NULL,
	release_year DATE NOT NULL
);

CREATE TABLE IF NOT EXISTS compilation_tracks (
	track_id INTEGER NOT NULL REFERENCES tracks(track_id),
	comp_id INTEGER NOT NULL REFERENCES compilations(comp_id),
	track_order INTEGER NOT NULL
);

ALTER TABLE tracks
ALTER COLUMN duration TYPE VARCHAR(60);
 

