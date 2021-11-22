SELECT track_name, track_duration 
  FROM tracks 
    WHERE track_duration = (SELECT MAX(track_duration) FROM tracks);

   track_name    | track_duration
-----------------+----------------
 GOVERNMENT CAME |            696


SELECT album_name,year_of_release 
  FROM album 
    WHERE year_of_release = 2021; 
    
       album_name        | year_of_release
-------------------------+-----------------
 G_ds Pee AT STATES END! |            2021



SELECT track_name, track_duration FROM tracks 
  WHERE track_duration > 210;
  
              track_name              | track_duration
--------------------------------------+----------------
 Ballad of Hollis Brown               |            307
 With God on Our Side                 |            427
 North Country Blues                  |            276
 Only a Pawn in Their Game            |            212
 Boots of Spanish Leather             |            280
 The Lonesome Death of Hattie Carroll |            348
 Restless Farewell                    |            332
 Blowin In The Wind                   |            248
 Girl From The North Country          |            323
 Masters Of War                       |            438
 Down The Highway                     |            332
 Bob Dylans Blues                     |            218
 A Hard Rain"s A-Gonna Fall           |            652
 Don"t Think Twice, It"s All Right    |            340
 Bob Dylan"s Dream                    |            502
 Talking World War III Blues          |            627
 Corrina, Corrina                     |            244
 I Shall Be Free                      |            446
 Subterranean Homesick Blues          |            217
 She Belongs To Me                    |            248
 Maggie"s Farm                        |            351
 Love Minus Zero / No Limit           |            247
 interlaced                           |            230
 A Military Alphabet                  |            275
 Jobs Lament                          |            482
 GOVERNMENT CAME                      |            696
 The Dead Flag Blues                  |            369
 The Cowboy...                        |            256
 My Love                              |            236
 The Devil You Know                   |            233
 Priceless                            |            228
 Mama & Papa                          |            258
 The Message                          |            428
 Soul Rise                            |            420
 Not Enough                           |            356
 C H R O N O S                        |            345
 Zeitgeist                            |            271






SELECT collections_name, year_of_release 
  FROM collections 
    WHERE year_of_release >= 2000 AND year_of_release < 2020;
    
      collections_name      | year_of_release
----------------------------+-----------------
 Focus on Freerange: Hyenah |            2016
 Side Tracks                |            2013




SELECT artist_name 
  FROM musician_performer 
    WHERE artist_name 
      NOT LIKE '%% %%'; 
      
 artist_name
-------------
 Hyenah



SELECT track_name 
  FROM tracks 
    WHERE track_name 
      LIKE '%of%'; 
      
              track_name
--------------------------------------
 Ballad of Hollis Brown
 Boots of Spanish Leather
 The Lonesome Death of Hattie Carroll

