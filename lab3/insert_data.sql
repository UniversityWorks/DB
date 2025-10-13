TRUNCATE TABLE Borrowings RESTART IDENTITY CASCADE;
TRUNCATE TABLE Readers RESTART IDENTITY CASCADE;
TRUNCATE TABLE Books RESTART IDENTITY CASCADE;
TRUNCATE TABLE Authors RESTART IDENTITY CASCADE;
TRUNCATE TABLE Genres RESTART IDENTITY CASCADE;

INSERT INTO Genres (name, description)
VALUES 
('Fantasy', 'Books with magical or supernatural elements'),
('Science Fiction', 'Futuristic or scientific settings'),
('Detective', 'Crime and mystery stories'),
('Horror', 'Scary stories'),
('Romance', 'Love stories'),
('Biography', 'Life stories of famous people'),
('Adventure', 'Exciting journeys and quests');

INSERT INTO Authors (name, birth_year, country)
VALUES
('J.R.R. Tolkien', 1892, 'United Kingdom'),
('Isaac Asimov', 1920, 'Russia/USA'),
('Agatha Christie', 1890, 'United Kingdom'),
('Stephen King', 1947, 'USA'),
('Jane Austen', 1775, 'United Kingdom'),
('Mark Twain', 1835, 'USA'),
('Leo Tolstoy', 1828, 'Russia');

INSERT INTO Books (title, author_id, genre_id, published_year)
VALUES
('The Hobbit', 1, 1, 1937),
('Foundation', 2, 2, 1951),
('Murder on the Orient Express', 3, 3, 1934),
('It', 4, 4, 1986),
('Pride and Prejudice', 5, 5, 1813),
('Adventures of Huckleberry Finn', 6, 7, 1884),
('War and Peace', 7, 7, 1869),
('The Shining', 4, 4, 1977);

INSERT INTO Readers (name, email, phone, address)
VALUES
('Alice Johnson', 'alice@example.com', '+380501234567', 'Kyiv, Ukraine'),
('Bohdan Petrenko', 'bohdan@example.com', '+380631112233', 'Lviv, Ukraine'),
('Maria Ivanova', 'maria@example.com', '+380971234567', 'Odessa, Ukraine'),
('Dmytro Kovalenko', 'dmytro@example.com', '+380671112233', 'Kharkiv, Ukraine'),
('Olena Shevchenko', 'olena@example.com', '+380501234890', 'Kyiv, Ukraine');

INSERT INTO Borrowings (reader_id, book_id, borrow_date, return_date, status)
VALUES
(1, 1, '2025-09-10', '2025-09-25', 'returned'),
(2, 2, '2025-10-01', NULL, 'borrowed'),
(3, 3, '2025-10-05', '2025-10-12', 'returned'),
(4, 1, '2025-10-07', NULL, 'borrowed'),
(5, 5, '2025-10-10', NULL, 'borrowed');
