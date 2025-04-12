-- Задание 2

-- Название и продолжительность самого длительного трека.
SELECT title, duration FROM tracks
ORDER BY duration DESC
LIMIT 1;

-- Название треков, продолжительность которых не менее 3,5 минут.
SELECT title, duration FROM tracks
WHERE duration >= '03:30';

-- Названия сборников, вышедших в период с 2018 по 2020 год включительно.
SELECT title, release_year FROM compilations
WHERE release_year BETWEEN '2018-01-01' AND '2021-01-01';

-- Исполнители, чьё имя состоит из одного слова.
SELECT name FROM artists
WHERE name NOT LIKE '% %';

-- Название треков, которые содержат слово «мой» или «my».
SELECT title FROM tracks
WHERE title LIKE '%мой%';

-- Задание 3

-- Количество исполнителей в каждом жанре.
SELECT name, COUNT(*) artist_q FROM genres g 
JOIN artists_genres ag ON g.genre_id =  ag.genre_id
GROUP BY g.name
ORDER BY artist_q;

-- Количество треков, вошедших в альбомы 2019–2020 годов.
SELECT COUNT(*) track_q FROM tracks t
JOIN albums a ON t.album_id = a.album_id
WHERE a.release_year BETWEEN '2019-01-01' AND '2021-01-01';

-- Средняя продолжительность треков по каждому альбому.
SELECT a.title, AVG(MAKE_INTERVAL(mins => SPLIT_PART(t.duration, ':', 1)::integer, secs => SPLIT_PART(t.duration, ':', 2)::integer)) 
FROM albums a 
JOIN tracks t ON a.album_id = t.album_id
GROUP BY a.album_id, a.title
ORDER BY a.title;

-- Все исполнители, которые не выпустили альбомы в 2020 году.
SELECT a.artist_id, a.name
FROM artists a
WHERE NOT EXISTS (
    SELECT 1
    FROM artists_albums aa
    JOIN albums al ON aa.album_id = al.album_id
    WHERE aa.artist_id = a.artist_id AND al.release_year BETWEEN '2020-01-01' AND '2020-12-31'
)
ORDER BY a.name;

-- Названия сборников, в которых присутствует конкретный исполнитель (выберите его сами).
SELECT DISTINCT c.title AS compilation_title
FROM compilations c
JOIN compilation_tracks ct ON c.comp_id = ct.comp_id
JOIN tracks t ON ct.track_id = t.track_id
JOIN albums a ON t.album_id = a.album_id
JOIN artists_albums aa ON a.album_id = aa.album_id
JOIN artists ar ON aa.artist_id = ar.artist_id
WHERE ar.name = 'Фредди Меркьюри'
ORDER BY c.title;
