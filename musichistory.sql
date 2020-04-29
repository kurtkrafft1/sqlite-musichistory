SELECT * FROM Genre;

INSERT INTO Artist (ArtistName, YearEstablished) 
VALUES ('The Strokes', 2001);

INSERT INTO Album (Title, ArtistId, ReleaseDate, GenreId, "Label", AlbumLength)
VALUES ('Room On Fire', 28, "04/01/2001", 2, "Columbia", 2459);

INSERT INTO Album (Title, ArtistId, ReleaseDate, GenreId, "Label", AlbumLength)
VALUES ('The New Abnormal', 28, "04/01/2020", 2, "Columbia", 3000);

SELECT * FROM Album WHERE ArtistId = 28;

-- Didn't knpw release date was a string 

DELETE FROM Album
WHERE AlbumId = 23;

DELETE FROM Album
WHERE AlbumId = 24;

-- continue

INSERT INTO Song (Title, ReleaseDate, SongLength, ArtistId, AlbumId, GenreId)
VALUES ("Automatic Stop", "04/01/2001", 240, 28, 25, 2);

INSERT INTO Song (Title, ReleaseDate, SongLength, ArtistId, AlbumId, GenreId)
VALUES ("SOMA", "04/01/2001", 240, 28, 25, 2);

INSERT INTO Song (Title, ReleaseDate, SongLength, ArtistId, AlbumId, GenreId)
VALUES ("Selfless", "04/01/2020", 300, 28, 26, 2);

SELECT * FROM Song;

SELECT a.Title, s.Title FROM Album a LEFT JOIN Song s ON s.AlbumId = a.AlbumId;
SELECT a.Title, s.Title FROM Song s LEFT JOIN Album a ON s.AlbumId = a.AlbumId;

SELECT ar.ArtistName, al.Title FROM Album al LEFT JOIN Artist ar ON ar.ArtistId = al.ArtistId WHERE ar.ArtistId = 28;
SELECT a.Title, s.Title FROM Song s LEFT JOIN Album a ON s.AlbumId = a.AlbumId WHERE a.ArtistId = 28;


SELECT COUNT(*)
FROM Song
WHERE AlbumId = 25;

SELECT COUNT(*)
FROM Song
WHERE ArtistId = 28
GROUP BY ArtistId;

SELECT COUNT(*)
FROM Song
WHERE GenreId = 2;

SELECT Title, AlbumLength, MAX(AlbumLength)
FROM Album;

SELECT s.Title, a.Title, s.SongLength, MAX(s.SongLength) FROM Song s LEFT JOIN Album a ON a.AlbumId = s.AlbumId;

