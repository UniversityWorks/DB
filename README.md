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

