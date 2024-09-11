INSERT INTO performer 
VALUES	
	(1, 'Imagine Dragons'),
	(2, 'Greta Van Fleet'),
	(3, 'Royal Blood'),
	(4, 'Bring Me The Horizon'),
	(5, 'Paramore'),
	(6, 'Nothing But Thieves'),
	(7, 'Ghost'),
	(8, 'Foo Fighters'),
	(9, 'Måneskin'),
	(10, 'The Killers');
	
INSERT INTO genre
VALUES
	(1, 'Alternative Rock'),
	(2, 'Hard Rock'),
	(3, 'Pop Rock'),
	(4, 'Indie Rock');
	
INSERT INTO album 
VALUES 
	(1, 'Evolve', 2017),
	(2, 'Anthem of the Peaceful Army', 2018),
	(3, 'Typhoons', 2021),
	(4, 'Amo', 2019),
	(5, 'After Laughter', 2017),
	(6, 'Moral Panic', 2020),
	(7, 'Prequelle', 2018),
	(8, 'Medicine at Midnight', 2019),
	(9, 'Teatro dira: Vol. I', 2021),
	(10, 'Imploding the Mirage', 2020);
	

INSERT INTO performer_genre
VALUES
	(1, 1, 1),
	(2, 2, 2),
	(3, 1, 3),
	(4, 1, 4),
	(5, 3, 5),
	(6, 4, 6),
	(7, 2, 7),
	(8, 3, 8),
	(9, 2, 9),
	(10, 4, 10);


INSERT INTO performer_album 
VALUES
	(1, 1, 1),
	(2, 2, 2),
	(3, 3, 3),
	(4, 4, 4),
	(5, 5, 5),
	(6, 6, 6),
	(7, 7, 7),
	(8, 8, 8),
	(9, 9, 9),
	(10, 10, 10);
	
INSERT INTO track 
VALUES
	(1, 'Believer', 204, 1),
	(2, 'Thunder', 187, 1),
	(3, 'Safari Song', 231, 2),
	(4, 'Youre the One', 276, 2),
	(5, 'Troubles Coming', 204, 3),
	(6, 'Typhoons', 213, 3),
	(7, 'MANTRA', 193, 4),
	(8, 'mother tongue', 221, 4),
	(9, 'Hard Times', 184, 5),
	(10, 'Told You So', 196, 5),
	(11, 'Is Everybody Going Crazy?', 214, 6),
	(12, 'Real Love Song', 230, 6),
	(13, 'Rats', 194, 7),
	(14, 'Dance Macabre', 210, 7),
	(15, 'Shame Shame', 239, 8),
	(16, 'Waiting on a War', 258, 8),
	(17, 'Zitti e buoni', 180, 9),
	(18, 'I WANNA BE YOUR SLAVE', 162, 9),
	(19, 'Caution', 266, 10),
	(20, 'My Own Soul’s Warning', 253, 10);
	

INSERT INTO collection 
VALUES
	(1, 'Origins (Deluxe Edition)', 2018),
	(2, 'From the Fires', 2017),
	(3, 'How Did We Get So Dark', 2017),
	(4, 'Post Human: Survival Horror', 2020),
	(5, 'The Final RIOT!', 2018),
	(6, 'Broken Machine (Deluxe)', 2017),
	(7, 'Ceremony and Devotion', 2017),
	(8, 'Concrete and Gold', 2017),
	(9, 'Chosen', 2017),
	(10, 'Direct Hits', 2020);

INSERT INTO collection_track 
VALUES
	(1, 1, 1),
	(2, 2, 1),
	(3, 3, 2),
	(4, 4, 2),
	(5, 5, 3),
	(6, 6, 3),
	(7, 7, 4),
	(8, 8, 4),
	(9, 9, 5),
	(10, 10, 5),
	(11, 11, 6),
	(12, 12, 6),
	(13, 13, 7),
	(14, 14, 7),
	(15, 15, 8),
	(16, 16, 8),
	(17, 17, 9),
	(18, 18, 9),
	(19, 19, 10),
	(20, 20, 10);