psql -U postgres

create user alexey with password ‘123’;

create database  with owner alexey;

exit

psql -U alexey -d my_music

my_music=> create table genre (genre_ID serial primary key, genre_name varchar(40) not null);
CREATE TABLE
my_music=> create table musician_performer (artist_id serial primary key, artist_name varchar(40), alas varchar(40), genre integer references genre(genre_id));
CREATE TABLE
my_music=> create table album (album_id serial primary key, album_name varchar(40) not null, year_of_release integer, artist_id integer references musician_performer(artist_id)); 
CREATE TABLE
my_music=> create table track (track_id serial primary key, album_id integer references album(album_id), track_name varchar(40), track_duration integer);
CREATE TABLE
