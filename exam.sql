-- =========================
-- DATABASE
-- =========================
CREATE DATABASE LibraryDB;
USE LibraryDB;

-- =========================
-- 1. AUTHORS TABLE
-- =========================
CREATE TABLE Authors (
    author_id INT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100)
);

INSERT INTO Authors VALUES
(1,'Chetan Bhagat','chetan@gmail.com'),
(2,'R.K. Narayan','rk@gmail.com'),
(3,'APJ Abdul Kalam','kalam@gmail.com'),
(4,'Sudha Murthy','sudha@gmail.com'),
(5,'Arundhati Roy',NULL),
(6,'Paulo Coelho','paulo@gmail.com'),
(7,'Dan Brown','dan@gmail.com'),
(8,'J.K. Rowling','jk@gmail.com'),
(9,'George Orwell','orwell@gmail.com'),
(10,'Leo Tolstoy','leo@gmail.com'),
(11,'Mark Twain','mark@gmail.com'),
(12,'Ernest Hemingway','ernest@gmail.com'),
(13,'Jane Austen','jane@gmail.com'),
(14,'Charles Dickens','charles@gmail.com'),
(15,'Stephen King','king@gmail.com'),
(16,'Agatha Christie','agatha@gmail.com'),
(17,'Robin Sharma','robin@gmail.com'),
(18,'Napoleon Hill','hill@gmail.com'),
(19,'Yuval Noah Harari','yuval@gmail.com'),
(20,'Elon Musk','elon@gmail.com'),
(21,'Bill Gates','bill@gmail.com'),
(22,'Warren Buffett','buffett@gmail.com'),
(23,'Tim Cook','tim@gmail.com'),
(24,'Sundar Pichai','sundar@gmail.com'),
(25,'Satya Nadella','satya@gmail.com');

-- =========================
-- 2. BOOKS TABLE
-- =========================
CREATE TABLE Books (
    book_id INT PRIMARY KEY,
    title VARCHAR(150),
    author_id INT,
    category VARCHAR(50),
    isbn VARCHAR(20),
    published_date DATE,
    price DECIMAL(10,2),
    available_copies INT,
    FOREIGN KEY (author_id) REFERENCES Authors(author_id)
);

INSERT INTO Books VALUES
(1,'SQL Basics',1,'Education','ISBN001','2018-05-10',400,10),
(2,'Data Science Intro',2,'Science','ISBN002','2020-07-15',600,5),
(3,'Wings of Fire',3,'Biography','ISBN003','1999-01-01',300,0),
(4,'Python Programming',1,'Education','ISBN004','2021-09-10',700,0),
(5,'The Guide',2,'Fiction','ISBN005','2010-03-12',250,7),
(6,'AI Revolution',3,'Science','ISBN006','2022-06-18',800,4),
(7,'Think India',4,'Education','ISBN007','2019-11-20',350,6),
(8,'God of Small Things',5,'Fiction','ISBN008','1998-04-01',500,2),
(9,'Machine Learning',2,'Science','ISBN009','2023-02-02',900,5),
(10,'Clean Code',1,'Education','ISBN010','2017-08-08',650,9),
(11,'The Alchemist',6,'Fiction','ISBN011','2005-05-05',300,5),
(12,'Da Vinci Code',7,'Mystery','ISBN012','2003-03-03',450,3),
(13,'Harry Potter',8,'Fantasy','ISBN013','2000-06-26',800,10),
(14,'1984',9,'Fiction','ISBN014','1949-06-08',350,0),
(15,'War and Peace',10,'Classic','ISBN015','1869-01-01',900,2),
(16,'Tom Sawyer',11,'Classic','ISBN016','1876-01-01',250,6),
(17,'Old Man and Sea',12,'Classic','ISBN017','1952-01-01',300,4),
(18,'Pride and Prejudice',13,'Romance','ISBN018','1813-01-01',400,3),
(19,'Oliver Twist',14,'Classic','ISBN019','1838-01-01',350,5),
(20,'IT',15,'Horror','ISBN020','1986-01-01',700,2),
(21,'Murder on Orient Express',16,'Mystery','ISBN021','1934-01-01',450,4),
(22,'Leader Without Title',17,'Self-help','ISBN022','2010-01-01',500,6),
(23,'Think and Grow Rich',18,'Self-help','ISBN023','1937-01-01',550,5),
(24,'Sapiens',19,'History','ISBN024','2011-01-01',750,7),
(25,'Future Tech',20,'Technology','ISBN025','2023-01-01',950,8);

-- =========================
-- 3. MEMBERS TABLE
-- =========================
CREATE TABLE Members (
    member_id INT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100),
    phone_number VARCHAR(15),
    membership_date DATE
);

INSERT INTO Members VALUES
(1,'Amit','amit@gmail.com','9999999901','2019-01-01'),
(2,'Priya','priya@gmail.com','9999999902','2021-06-10'),
(3,'Rahul','rahul@gmail.com','9999999903','2023-03-12'),
(4,'Sneha','sneha@gmail.com','9999999904','2020-09-20'),
(5,'Karan','karan@gmail.com','9999999905','2022-07-25'),
(6,'Neha','neha@gmail.com','9999999906','2023-01-05'),
(7,'Vikas','vikas@gmail.com','9999999907','2022-11-11'),
(8,'Anjali','anjali@gmail.com','9999999908','2021-02-14'),
(9,'Rohit','rohit@gmail.com','9999999909','2022-04-18'),
(10,'Pooja',NULL,'9999999910','2023-05-01'),
(11,'Raj','raj@gmail.com','9999999911','2018-02-10'),
(12,'Simran','simran@gmail.com','9999999912','2020-08-08'),
(13,'Arjun','arjun@gmail.com','9999999913','2022-12-12'),
(14,'Meera','meera@gmail.com','9999999914','2021-09-09'),
(15,'Dev','dev@gmail.com','9999999915','2023-04-04'),
(16,'Isha','isha@gmail.com','9999999916','2022-03-03'),
(17,'Kunal','kunal@gmail.com','9999999917','2021-01-01'),
(18,'Nikita','nikita@gmail.com','9999999918','2020-05-05'),
(19,'Aman','aman@gmail.com','9999999919','2023-06-06'),
(20,'Riya','riya@gmail.com','9999999920','2022-10-10'),
(21,'Yash','yash@gmail.com','9999999921','2019-11-11'),
(22,'Tina','tina@gmail.com','9999999922','2021-07-07'),
(23,'Varun','varun@gmail.com','9999999923','2022-02-02'),
(24,'Payal','payal@gmail.com','9999999924','2023-08-08'),
(25,'Zara','zara@gmail.com','9999999925','2022-09-09');

-- =========================
-- 4. TRANSACTIONS TABLE
-- =========================
    CREATE TABLE Transactions (
        transaction_id INT PRIMARY KEY,
        member_id INT,
        book_id INT,
        borrow_date DATE,
        return_date DATE,
        fine_amount DECIMAL(10,2),
        FOREIGN KEY (member_id) REFERENCES Members(member_id),
        FOREIGN KEY (book_id) REFERENCES Books(book_id)
    );

    INSERT INTO Transactions VALUES
    (1,1,1,'2023-07-01','2023-07-10',0),
    (2,1,2,'2023-07-05','2023-07-25',100),
    (3,1,3,'2023-07-07','2023-07-20',50),
    (4,1,4,'2023-07-10','2023-07-30',150),
    (5,2,1,'2023-07-12','2023-07-18',0),
    (6,2,2,'2023-07-15','2023-07-22',0),
    (7,3,1,'2023-07-18','2023-07-28',50),
    (8,3,1,'2023-07-20','2023-07-30',100),
    (9,3,1,'2023-07-22','2023-08-05',200),
    (10,4,5,'2023-07-25','2023-08-01',0),
    (11,5,6,'2023-07-26','2023-08-10',150),
    (12,6,7,'2023-07-27','2023-08-05',50),
    (13,7,8,'2023-07-28','2023-08-06',50),
    (14,8,9,'2023-07-29','2023-08-07',100),
    (15,9,10,'2023-07-30','2023-08-08',0),
    (16,10,1,'2023-07-31','2023-08-10',100),
    (17,11,2,'2023-07-01','2023-07-15',50),
    (18,12,3,'2023-07-02','2023-07-16',60),
    (19,13,4,'2023-07-03','2023-07-17',70),
    (20,14,5,'2023-07-04','2023-07-18',80),
    (21,15,6,'2023-07-05','2023-07-19',90),
    (22,16,7,'2023-07-06','2023-07-20',40),
    (23,17,8,'2023-07-07','2023-07-21',30),
    (24,18,9,'2023-07-08','2023-07-22',20),
    (25,19,10,'2023-07-09','2023-07-23',10),
    (26,20,1,'2023-07-10','2023-07-24',60),
    (27,21,2,'2023-07-11','2023-07-25',70),
    (28,22,3,'2023-07-12','2023-07-26',80),
    (29,23,4,'2023-07-13','2023-07-27',90),
    (30,24,5,'2023-07-14','2023-07-28',100);

-- =========================
-- QUERIES
-- =========================

-- CRUD Example
SELECT * FROM Books;

-- Books after 2015
SELECT * FROM Books WHERE YEAR(published_date) > 2015;

-- Top 5 expensive books
SELECT * FROM Books ORDER BY price DESC LIMIT 5;

-- Members joined before 2022
SELECT * FROM Members WHERE membership_date < '2022-01-01';

-- AND condition
SELECT * FROM Books WHERE category='Science' AND price < 600;

-- NOT available books
SELECT * FROM Books WHERE available_copies = 0;

-- OR condition
SELECT * FROM Members 
WHERE membership_date > '2020-01-01' OR member_id IN (
    SELECT member_id FROM Transactions GROUP BY member_id HAVING COUNT(*) > 3
);

-- ORDER BY
SELECT * FROM Books ORDER BY title;

-- Books per member
SELECT member_id, COUNT(book_id) FROM Transactions GROUP BY member_id;

-- Books per category
SELECT category, COUNT(*) FROM Books GROUP BY category;

-- Total books per category
SELECT category, COUNT(*) FROM Books GROUP BY category;

-- Average price
SELECT AVG(price) FROM Books;

-- Most borrowed book
SELECT book_id, COUNT(*) AS times FROM Transactions GROUP BY book_id ORDER BY times DESC LIMIT 1;

-- Total fines
SELECT SUM(fine_amount) FROM Transactions;

-- INNER JOIN
SELECT b.title, a.name FROM Books b JOIN Authors a ON b.author_id = a.author_id;

-- LEFT JOIN
SELECT m.name, t.book_id FROM Members m LEFT JOIN Transactions t ON m.member_id = t.member_id;

-- RIGHT JOIN
SELECT b.title, t.member_id FROM Books b RIGHT JOIN Transactions t ON b.book_id = t.book_id;

-- FULL JOIN (MySQL workaround)
SELECT m.name, t.book_id FROM Members m LEFT JOIN Transactions t ON m.member_id=t.member_id
UNION
SELECT m.name, t.book_id FROM Members m RIGHT JOIN Transactions t ON m.member_id=t.member_id;

-- Subquery
SELECT * FROM Books WHERE book_id IN (
SELECT book_id FROM Transactions WHERE member_id IN (
SELECT member_id FROM Members WHERE membership_date > '2022-01-01'
));

-- Extract year
SELECT book_id, YEAR(published_date) FROM Books;

-- Date difference
SELECT transaction_id, DATEDIFF(return_date, borrow_date) FROM Transactions;

-- Format date
SELECT DATE_FORMAT(borrow_date,'%d-%m-%Y') FROM Transactions;

-- Uppercase titles
SELECT UPPER(title) FROM Books;

-- Trim names
SELECT TRIM(name) FROM Authors;

-- Replace null emails
SELECT IFNULL(email,'Not Provided') FROM Members;

-- Window: rank books
SELECT book_id, COUNT(*) AS borrow_count,
RANK() OVER (ORDER BY COUNT(*) DESC) FROM Transactions GROUP BY book_id;

-- Running total per member
SELECT member_id, COUNT(*) OVER (PARTITION BY member_id) FROM Transactions;

-- CASE: membership status
SELECT member_id,
CASE 
WHEN DATEDIFF(CURDATE(), membership_date) < 180 THEN 'Active'
ELSE 'Inactive'
END FROM Members;

-- CASE: book category
SELECT title,
CASE 
WHEN YEAR(published_date) > 2020 THEN 'New Arrival'
WHEN YEAR(published_date) < 2000 THEN 'Classic'
ELSE 'Regular'
END FROM Books;