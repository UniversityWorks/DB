
INSERT INTO Genres (name, description)
VALUES 
('Fantasy', 'Books with magical or supernatural elements'),
('Science Fiction', 'Futuristic or scientific settings'),
('Detective', 'Crime and mystery stories');

INSERT INTO Authors (name, birth_year, country)
VALUES
('J.R.R. Tolkien', 1892, 'United Kingdom'),
('Isaac Asimov', 1920, 'Russia/USA'),
('Agatha Christie', 1890, 'United Kingdom');

INSERT INTO Books (title, author_id, genre_id, published_year)
VALUES
('The Hobbit', 1, 1, 1937),
('Foundation', 2, 2, 1951),
('Murder on the Orient Express', 3, 3, 1934);

INSERT INTO Readers (name, email, phone, address)
VALUES
('Alice Johnson', 'alice@example.com', '+380501234567', 'Kyiv, Ukraine'),
('Bohdan Petrenko', 'bohdan@example.com', '+380631112233', 'Lviv, Ukraine');

INSERT INTO Borrowings (reader_id, book_id, borrow_date, return_date, status)
VALUES
(1, 1, '2025-09-10', '2025-09-25', 'returned'),
(2, 2, '2025-10-01', NULL, 'borrowed');
