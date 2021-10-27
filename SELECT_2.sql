SELECT genre_name, 
COUNT(musician_performer) 
FROM genre 
JOIN genre_performer 
ON genre_id = genre 
GROUP BY genre_name;

    genre_name    | count
------------------+-------
 Pop              |     1
 Electronic music |     2
 Rock             |     5
 Hip hop music    |     1



SELECT COUNT(track_id) 
FROM tracks 
JOIN album ON album = album_id 
WHERE year_of_release >= 2000 AND year_of_release < 2020;

 count
-------
    13



SELECT COUNT(track_id) 
FROM tracks 
JOIN album 
ON album = album_id 
WHERE year_of_release >= 1960 AND year_of_release < 1970;

 count
-------
    36


SELECT album_name, 
AVG(track_duration) 
FROM album 
JOIN tracks 
ON album = album_id 
GROUP BY album_name;

          album_name          |         avg
------------------------------+----------------------
 Help!                        | 139.0000000000000000
 A Hard Days Night            | 151.6666666666666667
 F A                          | 276.0000000000000000
 Cheap Smell                  | 227.6666666666666667
 Shades of Black              | 223.3333333333333333
 The Wind                     | 208.0000000000000000
 G_ds Pee AT STATES END!      | 484.3333333333333333
 The Message - EP             | 401.3333333333333333
 Bringing It All Back Home    | 265.7500000000000000
 The Freewheelin              | 363.0769230769230769
 The Times They Are A-Changin | 273.9000000000000000
 Chronos                      | 308.0000000000000000
 Revolver                     | 142.3333333333333333
 miXXXtape II                 |  87.0000000000000000
 Gorgorod                     | 170.6666666666666667



SELECT artist_name FROM musician_performer
WHERE artist_name 
NOT IN(SELECT artist_name 
FROM musician_performer 
JOIN album_performer ON musician_performer = artist_id 
JOIN album ON album = album_id 
WHERE year_of_release = 2020);

         artist_name
-----------------------------
 Bob Dylan
 The Beatles
 Miron Yanovich Fedorov
 Godspeed You! Black Emperor
 Sharon Kovacs
 Warren Zevon
 Kirill Richter



SELECT collections_name 
FROM collections 
JOIN collection_tracks 
ON collection = collections_id 
JOIN tracks ON track_id = track 
JOIN album_performer 
ON album_performer.album = tracks.album 
JOIN album 
ON album_id = album_performer.album 
JOIN musician_performer 
ON artist_id = musician_performer 
WHERE 'Hyenah' IN (artist_name);


      collections_name
----------------------------
 My collections
 Focus on Freerange: Hyenah
 Focus on Freerange: Hyenah
 Focus on Freerange: Hyenah



SELECT album_name 
FROM album JOIN album_performer 
ON album = album_id 
JOIN musician_performer 
ON artist_id = musician_performer 
JOIN genre_performer 
ON genre_performer.musician_performer = musician_performer.artist_id 
JOIN genre ON genre_id = genre 
GROUP BY album_name 
HAVING COUNT(distinct genre_id) !=1;

album_name
------------
(0)



SELECT track_name FROM tracks LEFT JOIN collection_tracks ON track_id = track WHERE track is NULL;                   
              track_name
--------------------------------------
 Blowin In The Wind
 Masters Of War
 Don"t Think Twice, It"s All Right
 Bob Dylan"s Dream
 Oxford Town
 Honey, Just Allow Me One More Chance
 I Shall Be Free
 Subterranean Homesick Blues
 Maggie"s Farm
 Love Minus Zero / No Limit
 Taxman
 Here, There And Everywhere
 What Had You Become?
 interlaced
 Ultima Thule
 A Military Alphabet
 Jobs Lament
 GOVERNMENT CAME
 The Dead Flag Blues
 The Cowboy...
 50 Shades Of Black
 My Love
 The Devil You Know
 Adickted
 Mama & Papa
 C H R O N O S
 Zeitgeist



SELECT artist_name FROM musician_performer
JOIN album_performer ON musician_performer = artist_id
JOIN tracks ON tracks.album = album_performer.album
WHERE track_duration = (SELECT MIN(track_duration) FROM tracks)
ORDER BY artist_name;

      artist_name
------------------------
 Miron Yanovich Fedorov



SELECT album_name FROM album JOIN tracks ON album = album_id 
WHERE album in (SELECT album FROM tracks
GROUP BY album
HAVING COUNT(album) = (SELECT COUNT(album) from tracks
GROUP BY album ORDER BY COUNT LIMIT 1));

  album_name
--------------
 miXXXtape II
 The Wind
