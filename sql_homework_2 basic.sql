create table if not exists  musician_performer (artist_id serial primary key, artist_name varchar(40), alas varchar(40)); 
CREATE TABLE

create table album (album_id serial primary key, album_name varchar(40) not null, year_of_release integer);
CREATE TABLE

create table collections (collections_id serial primary key, collections_name varchar(80) not null, year_of_release integer);
CREATE TABLE

create table genre (genre_ID serial primary key, genre_name varchar(40) not null); 
CREATE TABLE

create table genre_performer (musician_performer integer references musician_performer(artist_id), genre integer references genre(genre_ID)); 
CREATE TABLE

create table album_performer (album integer references album(album_id),musician_performer integer references musician_performer(artist_id));
CREATE TABLE

create table tracks (track_id serial primary key, track_name varchar(80) not null, track_duration integer not null, album integer references album(album_id));
CREATE TABLE

create table collection_tracks (track integer references tracks (track_id), collection integer references collections(collections_id)); 
CREATE TABLE
