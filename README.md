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

# Lab 4

```bash
    title    | published_year 
-------------+----------------
 It          |           1986
 The Shining |           1977
(2 rows)

             title              | published_year 
--------------------------------+----------------
 The Hobbit                     |           1937
 Foundation                     |           1951
 Murder on the Orient Express   |           1934
 Pride and Prejudice            |           1813
 Adventures of Huckleberry Finn |           1884
 War and Peace                  |           1869
(6 rows)

      name      
----------------
 J.R.R. Tolkien
(1 row)

            title             
------------------------------
 The Hobbit
 Murder on the Orient Express
 Pride and Prejudice
(3 rows)

            title             | published_year 
------------------------------+----------------
 The Hobbit                   |           1937
 Foundation                   |           1951
 Murder on the Orient Express |           1934
 It                           |           1986
 The Shining                  |           1977
(5 rows)

      name       
-----------------
 Bohdan Petrenko
(1 row)
```



# Lab5

```bash
[root@core postgres]# sudo -i -u postgres psql -d library_db -f triggers.sql
CREATE FUNCTION
CREATE TRIGGER
CREATE FUNCTION
CREATE TRIGGER
CREATE FUNCTION
CREATE TRIGGER
CREATE FUNCTION

library_db=# \dt
           List of relations
 Schema |    Name    | Type  |  Owner   
--------+------------+-------+----------
 public | authors    | table | postgres
 public | books      | table | postgres
 public | borrowings | table | postgres
 public | genres     | table | postgres
 public | readers    | table | postgres
(5 rows)

library_db=# INSERT INTO Books (title, author_id, genre_id, published_year)
VALUES ('Test Trigger Book', 1, 1, 2025);
NOTICE:  Додано нову книгу: Test Trigger Book
INSERT 0 1
library_db=# UPDATE Books SET title = 'Updated Trigger Book' WHERE title = 'Test Trigger Book';                                                                 
NOTICE:  Оновлено книгу: Updated Trigger Book
UPDATE 1
library_db=# DELETE FROM Books WHERE title = 'Updated Trigger Book';
NOTICE:  Видалено книгу: Updated Trigger Book
DELETE 1
library_db=# SELECT count_books_for_reader('Alice Johnson');
 count_books_for_reader 
------------------------
                      1
(1 row)

library_db=# \q
[root@core postgres]# 
```



#Lab 6

```bash
[root@core postgres]# sudo -i -u postgres psql -d library_db -f create_tables.sql
sudo -i -u postgres psql -d library_db -f insert_data.sql
sudo -i -u postgres psql -d library_db -f privileges.sql
CREATE TABLE
CREATE TABLE
CREATE TABLE
CREATE TABLE
CREATE TABLE
TRUNCATE TABLE
psql:insert_data.sql:2: NOTICE:  truncate cascades to table "borrowings"
TRUNCATE TABLE
psql:insert_data.sql:3: NOTICE:  truncate cascades to table "borrowings"
TRUNCATE TABLE
psql:insert_data.sql:4: NOTICE:  truncate cascades to table "books"
psql:insert_data.sql:4: NOTICE:  truncate cascades to table "borrowings"
TRUNCATE TABLE
psql:insert_data.sql:5: NOTICE:  truncate cascades to table "books"
psql:insert_data.sql:5: NOTICE:  truncate cascades to table "borrowings"
TRUNCATE TABLE
INSERT 0 7
INSERT 0 7
INSERT 0 8
INSERT 0 5
INSERT 0 5
psql:privileges.sql:1: ERROR:  role "user1" already exists
psql:privileges.sql:2: ERROR:  role "user2" already exists
psql:privileges.sql:3: ERROR:  role "user3" already exists
GRANT
GRANT
GRANT
GRANT
REVOKE
ALTER TABLE
CREATE POLICY
GRANT
GRANT
psql:privileges.sql:26: ERROR:  syntax error at or near "("
LINE 1: GRANT CONNECT ON DATABASE current_database() TO user1, user2...
                                                  ^
[root@core postgres]# sudo -i -u postgres psql -d library_db
psql (17.6)
Type "help" for help.

library_db=# \dt
           List of relations
 Schema |    Name    | Type  |  Owner   
--------+------------+-------+----------
 public | authors    | table | postgres
 public | books      | table | postgres
 public | borrowings | table | postgres
 public | genres     | table | postgres
 public | readers    | table | postgres
(5 rows)

library_db=# SELECT * FROM books;
 id |             title              | author_id | genre_id | published_year |         cre
ated_at         |         updated_at         
----+--------------------------------+-----------+----------+----------------+------------
----------------+----------------------------
  1 | The Hobbit                     |         1 |        1 |           1937 | 2025-11-07 
10:42:38.284634 | 2025-11-07 10:42:38.284634
  2 | Foundation                     |         2 |        2 |           1951 | 2025-11-07 
10:42:38.284634 | 2025-11-07 10:42:38.284634
  3 | Murder on the Orient Express   |         3 |        3 |           1934 | 2025-11-07 
10:42:38.284634 | 2025-11-07 10:42:38.284634
  4 | It                             |         4 |        4 |           1986 | 2025-11-07 
10:42:38.284634 | 2025-11-07 10:42:38.284634
  5 | Pride and Prejudice            |         5 |        5 |           1813 | 2025-11-07 
10:42:38.284634 | 2025-11-07 10:42:38.284634
  6 | Adventures of Huckleberry Finn |         6 |        7 |           1884 | 2025-11-07 
10:42:38.284634 | 2025-11-07 10:42:38.284634
  7 | War and Peace                  |         7 |        7 |           1869 | 2025-11-07 
10:42:38.284634 | 2025-11-07 10:42:38.284634
  8 | The Shining                    |         4 |        4 |           1977 | 2025-11-07 
10:42:38.284634 | 2025-11-07 10:42:38.284634
(8 rows)

library_db=# \du
                             List of roles
 Role name |                         Attributes                         
-----------+------------------------------------------------------------
 postgres  | Superuser, Create role, Create DB, Replication, Bypass RLS
 user1     | 
 user2     | 
 user3     | 

library_db=# \z
                                                          Access privileges
 Schema |       Name        |   Type   |     Access privileges      | Column privileges  |
                  Policies                  
--------+-------------------+----------+----------------------------+--------------------+
--------------------------------------------
 public | authors           | table    | postgres=arwdDxtm/postgres+|                    |
 
        |                   |          | =r/postgres               +|                    |
 
        |                   |          | user3=arwdDxtm/postgres    |                    |
 
 public | authors_id_seq    | sequence |                            |                    |
 
 public | books             | table    | postgres=arwdDxtm/postgres+| id:               +|
 
        |                   |          | =r/postgres               +|   user3=x/postgres+|
 
        |                   |          | user3=arwdDxtm/postgres    | genre_id:         +|
 
        |                   |          |                            |   user1=w/postgres+|
 
        |                   |          |                            | published_year:   +|
 
        |                   |          |                            |   user1=w/postgres |
 
 public | books_id_seq      | sequence |                            |                    |
 
 public | borrowings        | table    | postgres=arwdDxtm/postgres+|                    |
 borrowed_only_policy (r):                 +
        |                   |          | =r/postgres               +|                    |
   (u): ((status)::text = 'borrowed'::text)+
        |                   |          | user2=a*w*d/postgres      +|                    |
   to: user1
        |                   |          | user3=arwdDxtm/postgres    |                    |
 
 public | borrowings_id_seq | sequence |                            |                    |
 
 public | genres            | table    | postgres=arwdDxtm/postgres+|                    |
 
        |                   |          | =r/postgres               +|                    |
 
        |                   |          | user3=arwdDxtm/postgres    |                    |
 
 public | genres_id_seq     | sequence |                            |                    |
 
 public | readers           | table    | postgres=arwdDxtm/postgres+|                    |
 
        |                   |          | =r/postgres               +|                    |
 
        |                   |          | user3=rwdDxtm/postgres     |                    |
 
 public | readers_id_seq    | sequence |                            |                    |
 
(10 rows)

library_db=# \z borrowings
                                                     Access privileges
 Schema |    Name    | Type  |     Access privileges      | Column privileges |           
       Policies                  
--------+------------+-------+----------------------------+-------------------+-----------
---------------------------------
 public | borrowings | table | postgres=arwdDxtm/postgres+|                   | borrowed_o
nly_policy (r):                 +
        |            |       | =r/postgres               +|                   |   (u): ((s
tatus)::text = 'borrowed'::text)+
        |            |       | user2=a*w*d/postgres      +|                   |   to: user
1
        |            |       | user3=arwdDxtm/postgres    |                   | 
(1 row)

library_db=# SELECT * FROM pg_policies;
 schemaname | tablename  |      policyname      | permissive |  roles  |  cmd   |         
       qual                 | with_check 
------------+------------+----------------------+------------+---------+--------+---------
----------------------------+------------
 public     | borrowings | borrowed_only_policy | PERMISSIVE | {user1} | SELECT | ((status
)::text = 'borrowed'::text) | 
(1 row)

library_db=# 
```
