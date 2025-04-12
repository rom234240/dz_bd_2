INSERT INTO genres(name, description)
VALUES
	('Классика', 'спокойная музыка'),
	('Рок', 'неспокойная музыка'),
	('Поп', 'веселая музыка');

INSERT INTO artists(name, bio, formed_year, country)
VALUES
	('Пётр Чайковский', 'Русский композитор, педагог, дирижёр и музыкальный критик.', '1840-05-07', 'Воткинск Вятской губернии'),
	('Вольфганг Амадей Моцарт', 'Австрийский композитор, инструменталист и дирижёр.', '1756-01-27', 'Вена'),
	('Фредди Меркьюри', 'Британский рок-певец, композитор и автор песен парсийского происхождения.', '1946-09-05', 'Занзибар'),
	('Уитни Хьюстон', 'Американская актриса кино и телевидения.', '1963-08-09', 'Нью Йорк');

INSERT INTO artists_genres(artist_id, genre_id)
VALUES
	(1, 1),
	(2, 2),
	(3, 3);

INSERT INTO albums(title, release_year, cover_image)
VALUES
	('Дебютный альбом', '1900-03-25', 'Пианино'),
	('Второй альбом', '2000-01-01', 'Микрофон'),
	('Cупер альбом', '1801-09-11', 'Пламя'),
	('Провальный альбом', '2011-11-11', 'Помидор');

INSERT INTO artists_albums(artist_id, album_id)
VALUES
	(1, 1),
	(2, 2),
	(3, 3),
	(4, 4);

INSERT INTO tracks(title, album_id, duration, track_number)
VALUES
	('Первая песня', 1, '05:03', 1),
	('Седьмая песня', 3, '06:43', 7),
	('Хит', 4, '07:01', 2),
	('Симфония', 4, '05:07', 6),
	('Песня', 2, '03:12', 11),
	('Сингл', 1, '04:07', 1);

INSERT INTO compilations(title, release_year)
VALUES 
	('Новогодний сборник', '2000-01-01'),
	('Лучшие хиты', '1861-11-23'),
	('Разное', '1999-07-17'),
	('Симфония', '2011-02-28');

INSERT INTO compilation_tracks(track_id, comp_id, track_order)
VALUES
	(1, 1, 1),
	(2, 2, 2),
	(3, 3, 3),
	(4, 4, 4);

INSERT INTO artists(name, bio, formed_year, country)
VALUES ('Тимати', 'Российский рэпер, певец, музыкальный продюсер, актёр и предприниматель.', '1983-08-15', 'Москва');

INSERT INTO compilations(title, release_year)
VALUES 
	('Новогодний сборник 2018', '2018-01-01'),
	('Лучшие хиты 2019', '2019-12-31');

INSERT INTO tracks(title, album_id, duration, track_number)
VALUES
	('Мой сон', 2, '03:03', 3),
	('Мой', 4, '06:12', 4);

INSERT INTO tracks(title, album_id, duration, track_number)
VALUES
	('Ангел мой', 3, '03:29', 9);

INSERT INTO artists_genres(artist_id, genre_id)
VALUES
	(2, 1);

INSERT INTO artists_genres(artist_id, genre_id)
VALUES
	(3, 4),
	(3, 5);

INSERT INTO albums(title, release_year, cover_image)
VALUES
	('Избранное', '2019-02-16', 'Скрипка'),
	('Ремиксы', '2020-01-01', 'Мишка');

INSERT INTO artists_albums(artist_id, album_id)
VALUES
	(5, 5),
	(5, 6);

INSERT INTO tracks(title, album_id, duration, track_number)
VALUES
	('Трэк', 5, '03:31', 3),
	('Песня', 5, '03:17', 4),
	('Песня №2', 6, '06:26', 4);

INSERT INTO compilations(title, release_year)
VALUES 
	('Лучшее Тимати', '2018-01-01');

