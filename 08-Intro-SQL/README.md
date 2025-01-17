# Intro to SQL

1. Install the SQLite Browser if you haven't already [here](http://sqlitebrowser.org/)
2. Open the SQLite Browser and click 'File -> Open DataBase'
3. Choose the `chinook.db` file from this repo. This database is open source and maintained by Microsoft (SQL is no fun if you don't have any data)
4. Click the tab that says 'Execute SQL'. Type SQL queries in the box above. Press the play button. See the results of that query in the box below

## Challenges

1. Write the SQL to return all of the rows in the artists table?

```SQL
SELECT * FROM artists
```

2. Write the SQL to select the artist with the name "Black Sabbath"

```SQL
SELECT * FROM artists WHERE name = "Black Sabbath"
SELECT * FROM artists WHERE name LIKE "%Black%"
```

3. Write the SQL to create a table named 'fans' with an autoincrementing ID that's a primary key and a name field of type text

```sql
CREATE TABLE fans_new(id INTEGER PRIMARY KEY, name TEXT)
```

4. Write the SQL to alter the fans table to have a artist_id column type integer?

```sql
ALTER TABLE fans ADD COLUMN artist_id INTEGER
```

5. Write the SQL to add yourself as a fan of the Black Eyed Peas? ArtistId **169**

```sql
INSERT INTO fans (name, artist_id) VALUES ("VIDHI",169)
```

6. How would you update your name in the fans table to be your new name? Use Ruby file.

   ```sql
    UPDATE fans SET name = "VIDHI" WHERE id=5
   ```

7. Write the SQL to return fans that are not fans of the black eyed peas.

```sql
SELECT * FROM fans WHERE not artist_id = 169
SELECT * FROM fans WHERE artist_id != 169
```

8. Write the SQL to display an artists name next to their album title

```sql
SELECT artists.name, albums.title FROM artists JOIN albums WHERE artists.id = albums.artist_id
```

9. Write the SQL to display artist name, album name and number of tracks on that album

```sql
SELECT artists.name, albums.Title, COUNT(tracks.name) FROM artists
JOIN albums
ON artists.id = albums.artist_id
JOIN tracks
ON albums.id = tracks.album_id
GROUP BY albums.id
```

10. Write the SQL to return the name of all of the artists in the 'Pop' Genre

```sql
SELECT DISTINCT artists.name FROM artists
JOIN albums
ON artists.id = albums.artist_id
JOIN tracks
ON albums.id = tracks.album_id
JOIN genres
ON tracks.genre_id = genres.id
WHERE genres.Name = 'Pop';
```

## BONUS (very hard)

11. I want to return the names of the artists and their number of rock tracks
    who play Rock music
    and have move than 30 tracks
    in order of the number of rock tracks that they have
    from greatest to least

```sql
SELECT artists.name,
COUNT(tracks.id) as num_rock
FROM tracks
JOIN albums ON albums.id = tracks.album_id
JOIN artists ON artists.id = albums.artist_id
WHERE tracks.genre_id = 1
GROUP BY artists.id
HAVING num_rock > 30
ORDER BY num_rock DESC;
```
