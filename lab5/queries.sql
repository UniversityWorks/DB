
-- Any
SELECT title, published_year
FROM Books
WHERE published_year > ANY (
    SELECT published_year
    FROM Books
    WHERE author_id = (SELECT id FROM Authors WHERE name = 'Isaac Asimov')
);
-- ALL
SELECT title, published_year
FROM Books
WHERE published_year < ALL (
    SELECT published_year
    FROM Books
    WHERE author_id = (SELECT id FROM Authors WHERE name = 'Stephen King')
);

-- EXISTS
SELECT name
FROM Authors a
WHERE EXISTS (
    SELECT 1
    FROM Books b
    JOIN Genres g ON b.genre_id = g.id
    WHERE b.author_id = a.id AND g.name = 'Fantasy'
);
-- IN
SELECT title
FROM Books
WHERE author_id IN (
    SELECT id
    FROM Authors
    WHERE country = 'United Kingdom'
);

--compare subrequest
SELECT title, published_year
FROM Books
WHERE published_year > (
    SELECT AVG(published_year) FROM Books
);

-- linked subrequest 
SELECT name
FROM Readers r
WHERE id IN (
    SELECT reader_id
    FROM Borrowings br
    JOIN Books b ON br.book_id = b.id
    JOIN Genres g ON b.genre_id = g.id
    WHERE g.name = 'Science Fiction'
);
