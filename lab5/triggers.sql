-- Тригер на INSERT у таблицю Books
CREATE OR REPLACE FUNCTION log_new_book()
RETURNS TRIGGER AS $$
BEGIN
    RAISE NOTICE 'Додано нову книгу: %', NEW.title;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER after_book_insert
AFTER INSERT ON Books
FOR EACH ROW
EXECUTE FUNCTION log_new_book();

-- Тригер на DELETE з таблиці Books
CREATE OR REPLACE FUNCTION log_book_delete()
RETURNS TRIGGER AS $$
BEGIN
    RAISE NOTICE 'Видалено книгу: %', OLD.title;
    RETURN OLD;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER after_book_delete
AFTER DELETE ON Books
FOR EACH ROW
EXECUTE FUNCTION log_book_delete();

-- Тригер на UPDATE у таблиці Books
CREATE OR REPLACE FUNCTION update_book_timestamp()
RETURNS TRIGGER AS $$
BEGIN
    NEW.updated_at := CURRENT_TIMESTAMP;
    RAISE NOTICE 'Оновлено книгу: %', NEW.title;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER before_book_update
BEFORE UPDATE ON Books
FOR EACH ROW
EXECUTE FUNCTION update_book_timestamp();

-- Збережена функція  Обчислює кількість книг, виданих певному читачу
CREATE OR REPLACE FUNCTION count_books_for_reader(reader_name VARCHAR)
RETURNS INTEGER AS $$
DECLARE
    total_books INTEGER;
BEGIN
    SELECT COUNT(*) INTO total_books
    FROM Borrowings AS br
    JOIN Readers AS r ON br.reader_id = r.id
    WHERE r.name = reader_name;
    
    RETURN total_books;
END;
$$ LANGUAGE plpgsql;
