--Название и продолжительность самого длительного трека.
SELECT track_name, track_duration FROM track
ORDER BY track_duration DESC
LIMIT 1

--Название треков, продолжительность которых не менее 3,5 минут
SELECT track_name FROM track
WHERE track_duration >= (3.5 * 60)

--Названия сборников, вышедших в период с 2018 по 2020 год включительно
SELECT collection_name FROM collection 
WHERE collection_year_of_issue BETWEEN 2018 AND 2020

--Исполнители, чьё имя состоит из одного слова.
SELECT performer_name FROM performer 
WHERE performer_name NOT LIKE '% %'

--Название треков, которые содержат слово «мой» или «my»
SELECT track_name FROM track
WHERE track_name ILIKE '%my%' OR track_name ILIKE '%мой%'

--Количество исполнителей в каждом жанре
SELECT g.genre_name, COUNT(performer_id) FROM genre g
LEFT JOIN performer_genre pa ON g.genre_id = pa.genre_id
GROUP BY g.genre_name 

--Количество треков, вошедших в альбомы 2019–2020 годов.
SELECT a.album_name, a.album_year_of_issue, COUNT(track_id) FROM album a 
LEFT JOIN track t ON t.album_id = a.album_id 
WHERE a.album_year_of_issue BETWEEN 2019 AND 2020
GROUP BY a.album_name, a.album_year_of_issue

--Средняя продолжительность треков по каждому альбому.
SELECT a.album_name, ROUND(AVG(t.track_duration)) FROM album a 
LEFT JOIN track t ON t.album_id = a.album_id
GROUP BY a.album_name

--Все исполнители, которые не выпустили альбомы в 2020 году.
SELECT performer_name FROM (SELECT * FROM album WHERE album_year_of_issue <> 2020) a
LEFT JOIN performer_album pa ON a.album_id = pa.album_id 
LEFT JOIN performer p ON p.performer_id = pa.performer_id 

--Названия сборников, в которых присутствует конкретный исполнитель (выберите его сами).
SELECT DISTINCT(c.collection_name) FROM collection c
LEFT JOIN collection_track ct ON ct.collection_id = c.collection_id
LEFT JOIN track t ON t.track_id = ct.track_id
LEFT JOIN performer_album pa ON pa.album_id  = t.album_id
LEFT JOIN performer p ON p.performer_id  = pa.performer_id
WHERE p.performer_name = 'Ghost'

