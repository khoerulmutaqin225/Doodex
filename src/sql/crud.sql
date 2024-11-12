-- Create the 'books' table
CREATE TABLE books (
    book_id INT PRIMARY KEY,
    title TEXT NOT NULL,
    author TEXT NOT NULL,
    category_id INT NOT NULL
);


-- insert
INSERT INTO books VALUES (0001, 'Garis Waktu', 'Fiersa Besari', 1);
INSERT INTO books VALUES (0002, 'Konspirasi Alam Semesta',  'Fiersa Besari', 2);
INSERT INTO books VALUES (0003, 'Awah Langkah', 'Fiersa Besari', 2);
INSERT INTO books VALUES (0004, 'Catatan Juang', 'Fiersa Besari', 4);

select * from books;

-- Create the 'categories' table
CREATE TABLE categories (
    category_id INT PRIMARY KEY,
    category_name TEXT NOT NULL
);

INSERT INTO  categories VALUES (1, 'Romansa');
INSERT INTO  categories VALUES (2, 'Komedi');
INSERT INTO  categories VALUES (3, 'Fiksi');

-- Get all
select * from categories;


-- Inner Join get same value
select books.title, categories.category_name
from books
inner join categories on books.category_id = categories.category_id ;


-- Left Join get same value and null value left
select books.title, categories.category_name
from books
left join categories on books.category_id = categories.category_id ;


-- right Join get same value and null value right
select books.title, categories.category_name
from books
right join categories on books.category_id = categories.category_id ;



-- right Join get same value and nullvalue right make all book have categoriy  and result 12 rows
select books.title, categories.category_name
from books
cross join categories;
