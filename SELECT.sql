-- название и год выхода альбомов, вышедших в 2018 году:
SELECT album_name, release_year FROM Albums
WHERE release_year = 2018;

-- название и продолжительность самого длительного трека:
SELECT track_name, duration FROM Tracks
ORDER BY duration DESC
LIMIT 1;

-- название треков, продолжительность которых не менее 3,5 минут:
SELECT track_name FROM Tracks
WHERE duration >= '00:03:30';

-- названия сборников, вышедших в период с 2018 по 2020 год включительно:
SELECT collection_name FROM Collections
WHERE release_year BETWEEN 2018 AND 2020;

-- исполнители, чье имя состоит из 1 слова:
SELECT singer_name FROM Singers
WHERE singer_name NOT LIKE('% %');

-- название треков, которые содержат слова 'мой' или 'my':
SELECT track_name FROM Tracks
WHERE string_to_array(lower(track_name), ' ') && ARRAY['my', 'мой'];
