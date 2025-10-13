# lab2
## installation
I use arch linux and pacman packet manager. To postgresql we can use the command bellow:

```bash
sudo pacman -S postgresql 
```

## Initialization
on linux, by default database intializes by this path:
```bash
/var/lib/postgres/
```

## Launch
After we have written all the SQL files, we can connect to the database itself to use our SQL commands to create tables in the database and fill them.
We will use this command for creating and fill in the tables:
## Creating tables:
```bash
sudo -i -u postgres psql -d library_db -f /var/lib/postgres/create_tables.sql

out:
CREATE TABLE
CREATE TABLE
CREATE TABLE
CREATE TABLE
CREATE TABLE
```

## Fill in the tables:

```bash
[wissp@core lab2]$ sudo -i -u postgres psql -d library_db -f /var/lib/postgres/insert_data.sql
INSERT 0 3
INSERT 0 3
INSERT 0 3
INSERT 0 2
INSERT 0 2
```

## Result
After this, we use the command bellow for open interactive terminal:
```bash
sudo -i -u postgres psql -d library_db

library_db-# \dt
           List of relations
 Schema |    Name    | Type  |  Owner   
--------+------------+-------+----------
 public | authors    | table | postgres
 public | books      | table | postgres
 public | borrowings | table | postgres
 public | genres     | table | postgres
 public | readers    | table | postgres
(5 rows)
```



# Lab3 
## Description:
created new file queries.sql. Updated insert_data.sql from previous laboratory work.

## Adding queries.sql to our database:
```bash
[root@core postgres]# sudo -i -u postgres psql -d library_db -f queries.sql
 id |    title    | author_id | genre_id | published_year |         created_at         |  
       updated_at         
----+-------------+-----------+----------+----------------+----------------------------+--
--------------------------
  2 | Foundation  |         2 |        2 |           1951 | 2025-10-13 10:53:26.293043 | 2
025-10-13 10:53:26.293043
  4 | It          |         4 |        4 |           1986 | 2025-10-13 10:53:26.293043 | 2
025-10-13 10:53:26.293043
  8 | The Shining |         4 |        4 |           1977 | 2025-10-13 10:53:26.293043 | 2
025-10-13 10:53:26.293043
(3 rows)

 total_books |       avg_year        
-------------+-----------------------
           8 | 1918.8750000000000000
(1 row)

 id |      name       | birth_year |    country     |         created_at         |        
 updated_at         
----+-----------------+------------+----------------+----------------------------+--------
--------------------
  1 | J.R.R. Tolkien  |       1892 | United Kingdom | 2025-10-13 10:53:26.289913 | 2025-10
-13 10:53:26.289913
  3 | Agatha Christie |       1890 | United Kingdom | 2025-10-13 10:53:26.289913 | 2025-10
-13 10:53:26.289913
  4 | Stephen King    |       1947 | USA            | 2025-10-13 10:53:26.289913 | 2025-10
-13 10:53:26.289913
  5 | Jane Austen     |       1775 | United Kingdom | 2025-10-13 10:53:26.289913 | 2025-10
-13 10:53:26.289913
  6 | Mark Twain      |       1835 | USA            | 2025-10-13 10:53:26.289913 | 2025-10
-13 10:53:26.289913
(5 rows)

 id |            title             | author_id | genre_id | published_year |         creat
ed_at         |         updated_at         
----+------------------------------+-----------+----------+----------------+--------------
--------------+----------------------------
  1 | The Hobbit                   |         1 |        1 |           1937 | 2025-10-13 10
:53:26.293043 | 2025-10-13 10:53:26.293043
  2 | Foundation                   |         2 |        2 |           1951 | 2025-10-13 10
:53:26.293043 | 2025-10-13 10:53:26.293043
  3 | Murder on the Orient Express |         3 |        3 |           1934 | 2025-10-13 10
:53:26.293043 | 2025-10-13 10:53:26.293043
  4 | It                           |         4 |        4 |           1986 | 2025-10-13 10
:53:26.293043 | 2025-10-13 10:53:26.293043
  8 | The Shining                  |         4 |        4 |           1977 | 2025-10-13 10
:53:26.293043 | 2025-10-13 10:53:26.293043
(5 rows)

 id |    title    | author_id | genre_id | published_year |         created_at         |  
       updated_at         
----+-------------+-----------+----------+----------------+----------------------------+--
--------------------------
  1 | The Hobbit  |         1 |        1 |           1937 | 2025-10-13 10:53:26.293043 | 2
025-10-13 10:53:26.293043
  8 | The Shining |         4 |        4 |           1977 | 2025-10-13 10:53:26.293043 | 2
025-10-13 10:53:26.293043
(2 rows)

 id | reader_id | book_id | borrow_date | return_date |  status  |         created_at     
    |         updated_at         
----+-----------+---------+-------------+-------------+----------+------------------------
----+----------------------------
  2 |         2 |       2 | 2025-10-01  |             | borrowed | 2025-10-13 10:53:26.302
066 | 2025-10-13 10:53:26.302066
  4 |         4 |       1 | 2025-10-07  |             | borrowed | 2025-10-13 10:53:26.302
066 | 2025-10-13 10:53:26.302066
  5 |         5 |       5 | 2025-10-10  |             | borrowed | 2025-10-13 10:53:26.302
066 | 2025-10-13 10:53:26.302066
(3 rows)

 id |      name       | birth_year |    country     |         created_at         |        
 updated_at         
----+-----------------+------------+----------------+----------------------------+--------
--------------------
  5 | Jane Austen     |       1775 | United Kingdom | 2025-10-13 10:53:26.289913 | 2025-10
-13 10:53:26.289913
  7 | Leo Tolstoy     |       1828 | Russia         | 2025-10-13 10:53:26.289913 | 2025-10
-13 10:53:26.289913
  6 | Mark Twain      |       1835 | USA            | 2025-10-13 10:53:26.289913 | 2025-10
-13 10:53:26.289913
  3 | Agatha Christie |       1890 | United Kingdom | 2025-10-13 10:53:26.289913 | 2025-10
-13 10:53:26.289913
  1 | J.R.R. Tolkien  |       1892 | United Kingdom | 2025-10-13 10:53:26.289913 | 2025-10
-13 10:53:26.289913
  2 | Isaac Asimov    |       1920 | Russia/USA     | 2025-10-13 10:53:26.289913 | 2025-10
-13 10:53:26.289913
  4 | Stephen King    |       1947 | USA            | 2025-10-13 10:53:26.289913 | 2025-10
-13 10:53:26.289913
(7 rows)

 author_id | books_written 
-----------+---------------
         3 |             1
         5 |             1
         4 |             2
         6 |             1
         2 |             1
         7 |             1
         1 |             1
(7 rows)

 author_id | books_written 
-----------+---------------
         4 |             2
(1 row)

             title              |     author      |      genre      
--------------------------------+-----------------+-----------------
 The Hobbit                     | J.R.R. Tolkien  | Fantasy
 Foundation                     | Isaac Asimov    | Science Fiction
 Murder on the Orient Express   | Agatha Christie | Detective
 It                             | Stephen King    | Horror
 Pride and Prejudice            | Jane Austen     | Romance
 Adventures of Huckleberry Finn | Mark Twain      | Adventure
 War and Peace                  | Leo Tolstoy     | Adventure
 The Shining                    | Stephen King    | Horror
(8 rows)
```
