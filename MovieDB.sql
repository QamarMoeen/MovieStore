create database MovieDB;
use MovieDB;
create table customers(
customer_id int primary key,
f_name varchar(30),
l_name varchar(30),
email varchar(150),
phone_no1 varchar(20),
phone_no2 varchar(20),
customer_address varchar(200)
);

create table movies(
movie_id int primary key,
thumbnail_link varchar(300),
genre varchar(30),
rental_price decimal(10,4),
sale_price decimal(10,4),
release_year date,
title varchar(100),
director_name varchar(30),
);  

create table rentals(
rental_id int primary key,
customer_id int,
movie_id int,
rental_date date,
return_date date,
due_date date,
total_rental_fee decimal(10,4),
foreign key (customer_id) references customers(customer_id),
foreign key (movie_id) references movies(movie_id),
);

create table sales(
sale_id int primary key,
customer_id int,
movie_id int,
sale_date date,
sale_amt decimal(10,4),
foreign key (customer_id) references customers(customer_id),
foreign key (movie_id) references movies(movie_id),
);

create table inventory(
inventory_id int primary key,
quuantity int,
rented int,
sold int,
movie_id int,
foreign key (movie_id) references movies(movie_id),
);

INSERT INTO customers (customer_id, f_name, l_name, email, phone_no1, phone_no2, customer_address) VALUES
(1, 'Ali', 'Khan', 'alikhan@example.com', '0300-1234567', '0312-3456789', 'House No. 1, Street Name, Lahore, Pakistan'),
(2, 'Sana', 'Ahmed', 'sanaahmed@example.com', '0301-2345678', '0321-9876543', 'House No. 5/A, ABC Road, Karachi, Pakistan'),
(3, 'Ahmed', 'Raza', 'ahmedraza@example.com', '0333-8765432', '0345-2109876', 'House No. 10, XYZ Street, Islamabad, Pakistan'),
(4, 'Fatima', 'Ali', 'fatimaali@example.com', '0314-5678901', '0320-1987654', 'House No. 8, DEF Avenue, Rawalpindi, Pakistan'),
(5, 'Usman', 'Akram', 'usmanakram@example.com', '0302-3456789', '0311-8765432', 'House No. 15/B, GHI Lane, Faisalabad, Pakistan'),
(6, 'Ayesha', 'Hassan', 'ayeshahassan@example.com', '0333-2345678', '0345-7654321', 'House No. 7, JKL Road, Multan, Pakistan'),
(7, 'Farhan', 'Malik', 'farhanmalik@example.com', '0313-4567890', '0321-6543210', 'House No. 22, MNO Street, Gujranwala, Pakistan'),
(8, 'Zoya', 'Saeed', 'zoyasaeed@example.com', '0304-5678901', '0310-1098765', 'House No. 30, PQR Avenue, Sialkot, Pakistan'),
(9, 'Bilal', 'Khalid', 'bilalkhalid@example.com', '0332-6789012', '0345-2109876', 'House No. 3, STU Lane, Peshawar, Pakistan'),
(10, 'Hira', 'Haider', 'hirahaider@example.com', '0305-7890123', '0321-8901234', 'House No. 12/C, VWX Road, Quetta, Pakistan'),
(11, 'Hamza', 'Iqbal', 'hamzaiqbal@example.com', '0300-1234567', '0312-3456789', 'House No. 9, YZA Street, Lahore, Pakistan'),
(12, 'Ayesha', 'Nawaz', 'ayeshanawaz@example.com', '0301-2345678', '0321-9876543', 'House No. 6/D, BCD Road, Karachi, Pakistan'),
(13, 'Zubair', 'Haq', 'zubairhaq@example.com', '0333-8765432', '0345-2109876', 'House No. 13, EFG Street, Islamabad, Pakistan'),
(14, 'Sadia', 'Amin', 'sadiaamin@example.com', '0314-5678901', '0320-1987654', 'House No. 4, HIJ Avenue, Rawalpindi, Pakistan'),
(15, 'Tariq', 'Yousaf', 'tariqyousaf@example.com', '0302-3456789', '0311-8765432', 'House No. 19/A, KLM Lane, Faisalabad, Pakistan'),
(16, 'Saima', 'Rasheed', 'saimarasheed@example.com', '0333-2345678', '0345-7654321', 'House No. 2, NOP Road, Multan, Pakistan'),
(17, 'Adnan', 'Khan', 'adnankhan@example.com', '0313-4567890', '0321-6543210', 'House No. 17, QRS Street, Gujranwala, Pakistan'),
(18, 'Aisha', 'Aslam', 'aishaaslam@example.com', '0304-5678901', '0310-1098765', 'House No. 25, TUV Avenue, Sialkot, Pakistan'),
(19, 'Fahad', 'Saleem', 'fahadsaleem@example.com', '0332-6789012', '0345-2109876', 'House No. 11, WXY Lane, Peshawar, Pakistan'),
(20, 'Sara', 'Khan', 'sarakhan@example.com', '0305-7890123', '0321-8901234', 'House No. 14/B, ZAB Road, Quetta, Pakistan'),
(21, 'Asad', 'Haq', 'asadhaq@example.com', '0300-1234567', '0312-3456789', 'House No. 18, YZA Street, Lahore, Pakistan'),
(22, 'Maryam', 'Malik', 'maryammalik@example.com', '0301-2345678', '0321-9876543', 'House No. 23/C, BCD Road, Karachi, Pakistan'),
(23, 'Omar', 'Rashid', 'omarrashid@example.com', '0333-8765432', '0345-2109876', 'House No. 27, EFG Street, Islamabad, Pakistan'),
(24, 'Hina', 'Ahmed', 'hinaahmed@example.com', '0314-5678901', '0320-1987654', 'House No. 20, HIJ Avenue, Rawalpindi, Pakistan'),
(25, 'Imran', 'Ali', 'imranali@example.com', '0302-3456789', '0311-8765432', 'House No. 16/A, KLM Lane, Faisalabad, Pakistan'),
(26, 'Nadia', 'Akhtar', 'nadiaakhtar@example.com', '0333-2345678', '0345-7654321', 'House No. 29, NOP Road, Multan, Pakistan'),
(27, 'Kamran', 'Tariq', 'kamrantariq@example.com', '0313-4567890', '0321-6543210', 'House No. 21, QRS Street, Gujranwala, Pakistan'),
(28, 'Amina', 'Khalid', 'aminakhalid@example.com', '0304-5678901', '0310-1098765', 'House No. 26, TUV Avenue, Sialkot, Pakistan'),
(29, 'Junaid', 'Abbasi', 'junaidabbasi@example.com', '0332-6789012', '0345-2109876', 'House No. 28, WXY Lane, Peshawar, Pakistan'),
(30, 'Fiza', 'Siddiqui', 'fizasiddiqui@example.com', '0305-7890123', '0321-8901234', 'House No. 24/B, ZAB Road, Quetta, Pakistan');


INSERT INTO movies (movie_id, thumbnail_link, genre, rental_price, sale_price, release_year, title, director_name) VALUES
(1, 'https://frontmediaspot.com/wp-content/uploads/2023/07/Inception-3.jpg', 'Action', 3.99, 12.99, '2010-05-15', 'Inception', 'Christopher Nolan'),
(2, 'https://www.tvguide.com/a/img/catalog/provider/1/2/1-11667344232.jpg', 'Comedy', 2.49, 9.99, '2014-09-20', 'The Grand Budapest Hotel', 'Wes Anderson'),
(3, 'https://resizing.flixster.com/-XZAfHZM39UwaGJIFWKAE8fS0ak=/v3/t/assets/p12386480_p_v10_aa.jpg', 'Drama', 4.99, 14.99, '2016-11-10', 'La La Land', 'Damien Chazelle'),
(4, 'https://m.media-amazon.com/images/M/MV5BMjUxMDQwNjcyNl5BMl5BanBnXkFtZTgwNzcwMzc0MTI@._V1_.jpg', 'Horror', 3.99, 11.49, '2019-07-25', 'Get Out', 'Jordan Peele'),
(5, 'https://fc04.deviantart.net/fs71/f/2014/045/a/2/interstellar_by_visuasys-d6ibj30.jpg', 'Science Fiction', 3.79, 12.99, '2014-12-01', 'Interstellar', 'Christopher Nolan'),
(6, 'https://www.literarytraveler.com/wp-content/uploads/2015/01/Gone-Girl1.jpg', 'Thriller', 4.29, 13.49, '2016-06-08', 'Gone Girl', 'David Fincher'),
(7, 'https://m.media-amazon.com/images/M/MV5BN2EwM2I5OWMtMGQyMi00Zjg1LWJkNTctZTdjYTA4OGUwZjMyXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_.jpg', 'Action', 4.49, 12.99, '2017-03-30', 'Mad Max: Fury Road', 'George Miller'),
(8, 'https://m.media-amazon.com/images/M/MV5BODY0MDM1MDE2OV5BMl5BanBnXkFtZTcwMzEyMjkyNw@@._V1_.jpg', 'Comedy', 3.99, 10.99, '2012-10-05', 'The Intouchables', 'Olivier Nakache, Éric Toledano'),
(9, 'https://m.media-amazon.com/images/M/MV5BNjk1MzIyOTEyNV5BMl5BanBnXkFtZTgwNjQzMzU1NzE@._V1_.jpg', 'Drama', 4.49, 15.99, '2015-09-22', 'Room', 'Lenny Abrahamson'),
(10, 'https://m.media-amazon.com/images/M/MV5BZTJiNGM2NjItNDRiYy00ZjY0LTgwNTItZDBmZGRlODQ4YThkL2ltYWdlXkEyXkFqcGdeQXVyMjY5ODI4NDk@._V1_.jpg', 'Horror', 3.49, 11.99, '2017-04-12', 'Split', 'M. Night Shyamalan'),
(11, 'https://m.media-amazon.com/images/M/MV5BMTUxNzc0OTIxMV5BMl5BanBnXkFtZTgwNDI3NzU2NDE@._V1_.jpg', 'Science Fiction', 3.89, 13.49, '2015-07-30', 'Ex Machina', 'Alex Garland'),
(12, 'https://upload.wikimedia.org/wikipedia/en/b/b6/The_Revenant_2015_film_poster.jpg', 'Thriller', 4.69, 14.99, '2016-02-14', 'The Revenant', 'Alejandro González Iñárritu'),
(13, 'https://m.media-amazon.com/images/M/MV5BNDhiODUyN2UtYTQzZi00YTE0LWJiMWEtYTVlODEyZDQwYzRhXkEyXkFqcGdeQXVyMTA3MDk2NDg2._V1_.jpg', 'Action', 3.99, 12.99, '2020-11-28', 'Tenet', 'Christopher Nolan'),
(14, 'https://resizing.flixster.com/-XZAfHZM39UwaGJIFWKAE8fS0ak=/v3/t/assets/p9991602_p_v12_aj.jpg', 'Comedy', 2.99, 9.99, '2013-12-18', 'The Wolf of Wall Street', 'Martin Scorsese'),
(15, 'https://m.media-amazon.com/images/M/MV5BMjIyOTM5OTIzNV5BMl5BanBnXkFtZTgwMDkzODE2NjE@._V1_.jpg', 'Drama', 4.99, 14.99, '2016-03-03', 'Spotlight', 'Tom McCarthy'),
(16, 'https://m.media-amazon.com/images/M/MV5BOTU5MDg3OGItZWQ1Ny00ZGVmLTg2YTUtMzBkYzQ1YWIwZjlhXkEyXkFqcGdeQXVyNTAzMTY4MDA@._V1_FMjpg_UX1000_.jpg', 'Horror', 3.29, 11.49, '2018-08-10', 'Hereditary', 'Ari Aster'),
(17, 'https://static.wikia.nocookie.net/marvel-cinematic-universe-fanon/images/b/be/Old_Man_Logan_%28film%29.jpg/revision/latest?cb=20210606140648', 'Science Fiction', 3.59, 12.99, '2017-02-23', 'Logan', 'James Mangold'),
(18, 'https://cps-static.rovicorp.com/2/Open/20th_Century_Fox_39/Program/22395441/_derived_jpg_q90_310x470_m0/GoneGirl_1400x2100.jpg', 'Thriller', 4.19, 13.99, '2014-09-19', 'Gone Girl', 'David Fincher'),
(19, 'https://m.media-amazon.com/images/M/MV5BNjRlZmM0ODktY2RjNS00ZDdjLWJhZGYtNDljNWZkMGM5MTg0XkEyXkFqcGdeQXVyNjAwMjI5MDk@._V1_.jpg', 'Action', 3.99, 12.99, '2018-07-27', 'Mission: Impossible - Fallout', 'Christopher McQuarrie'),
(20, 'https://assets-in.bmscdn.com/iedb/movies/images/extra/vertical_logo/mobile/thumbnail/xxlarge/the-big-short-et00035739-12-03-2021-07-23-16.jpg', 'Comedy', 2.79, 9.99, '2015-12-23', 'The Big Short', 'Adam McKay'),
(21, 'https://m.media-amazon.com/images/M/MV5BMTYxMjk0NDg4Ml5BMl5BanBnXkFtZTgwODcyNjA5OTE@._V1_.jpg', 'Drama', 4.49, 14.99, '2016-08-31', 'Manchester by the Sea', 'Kenneth Lonergan'),
(22, 'https://m.media-amazon.com/images/M/MV5BMjI0MDMzNTQ0M15BMl5BanBnXkFtZTgwMTM5NzM3NDM@._V1_.jpg', 'Horror', 3.69, 11.99, '2018-04-06', 'A Quiet Place', 'John Krasinski'),
(23, 'https://m.media-amazon.com/images/M/MV5BMTc2MTQ3MDA1Nl5BMl5BanBnXkFtZTgwODA3OTI4NjE@._V1_.jpg', 'Science Fiction', 3.79, 12.99, '2015-11-06', 'The Martian', 'Ridley Scott'),
(24, 'https://m.media-amazon.com/images/M/MV5BN2YyZjQ0NTEtNzU5MS00NGZkLTg0MTEtYzJmMWY3MWRhZjM2XkEyXkFqcGdeQXVyMDA4NzMyOA@@._V1_.jpg', 'Thriller', 4.29, 13.99, '2017-07-21', 'Dunkirk', 'Christopher Nolan'),
(25, 'https://m.media-amazon.com/images/M/MV5BZWMyYzFjYTYtNTRjYi00OGExLWE2YzgtOGRmYjAxZTU3NzBiXkEyXkFqcGdeQXVyMzQ0MzA0NTM@._V1_.jpg', 'Action', 3.99, 12.99, '2021-11-19', 'Spider-Man: No Way Home', 'Jon Watts'),
(26, 'https://images.moviesanywhere.com/72b6666a654dd8afeeffaac887ee66be/3badef5f-cc0c-4f5c-b2ee-7093fdc909dd.jpg', 'Comedy', 2.99, 9.99, '2014-06-06', '22 Jump Street', 'Phil Lord, Christopher Miller'),
(27, 'https://m.media-amazon.com/images/M/MV5BMjA0NjA4NjE2Nl5BMl5BanBnXkFtZTgwNzIxNTY2NjE@._V1_.jpg', 'Drama', 4.49, 14.99, '2016-01-15', 'The Danish Girl', 'Tom Hooper'),
(28, 'https://m.media-amazon.com/images/M/MV5BZTliNWJhM2YtNDc1MC00YTk1LWE2MGYtZmE4M2Y5ODdlNzQzXkEyXkFqcGdeQXVyMzY0MTE3NzU@._V1_.jpg', 'Horror', 3.49, 11.99, '2019-03-22', 'Us', 'Jordan Peele'),
(29, 'https://m.media-amazon.com/images/M/MV5BMjM2NTQ5Mzc2M15BMl5BanBnXkFtZTgwNTcxMDI2NTE@._V1_.jpg', 'Science Fiction', 3.99, 12.99, '2015-07-17', 'Ant-Man', 'Peyton Reed'),
(30, 'https://images.squarespace-cdn.com/content/v1/5e823ad7b01f212ca4382c5c/1591397684493-9UB58KR4VRBAPJAGUMPA/get+out+2.jpg', 'Thriller', 4.69, 14.99, '2017-05-05', 'Get Out', 'Jordan Peele');

INSERT INTO rentals (rental_id, customer_id, movie_id, rental_date, return_date, due_date, total_rental_fee) VALUES
(1, 1, 5, '2023-01-05', '2023-01-10', '2023-01-15', 5.99),
(2, 2, 10, '2023-02-10', NULL, '2023-02-20', NULL),
(3, 3, 15, '2023-03-15', '2023-03-20', '2023-03-25', 6.99),
(4, 4, 20, '2023-04-20', '2023-04-25', '2023-04-30', 5.49),
(5, 5, 25, '2023-05-25', NULL, '2023-06-05', NULL),
(6, 6, 30, '2023-06-30', '2023-07-05', '2023-07-10', 6.49),
(7, 7, 1, '2023-07-05', '2023-07-10', '2023-07-15', 4.99),
(8, 8, 6, '2023-08-10', NULL, '2023-08-20', NULL),
(9, 9, 11, '2023-09-15', '2023-09-20', '2023-09-25', 6.99),
(10, 10, 16, '2023-10-20', NULL, '2023-10-30', NULL),
(11, 11, 21, '2023-11-25', '2023-11-30', '2023-12-05', 7.49),
(12, 12, 26, '2023-12-30', NULL, '2024-01-09', NULL),
(13, 13, 2, '2024-01-05', '2024-01-10', '2024-01-15', 5.99),
(14, 14, 7, '2024-02-10', '2024-02-15', '2024-02-20', 4.99),
(15, 15, 12, '2024-03-15', NULL, '2024-03-25', NULL),
(16, 16, 17, '2024-04-20', '2024-04-25', '2024-04-30', 5.49),
(17, 17, 22, '2024-05-25', '2024-05-30', '2024-06-05', 7.99),
(18, 18, 27, '2024-06-30',NULL, '2024-07-10', NULL),
(19, 19, 3, '2024-07-05', '2024-07-10', '2024-07-15', 4.99),
(20, 20, 8, '2024-08-10', '2024-08-15', '2024-08-20', 5.99),
(21, 21, 13, '2024-09-15', '2024-09-20', '2024-09-25', 6.99),
(22, 22, 18, '2024-10-20', '2024-10-25', '2024-10-30', 4.49),
(23, 23, 23, '2024-11-25', NULL, '2024-12-05', NULL),
(24, 24, 28, '2024-12-30', '2025-01-04', '2025-01-09', 6.99),
(25, 25, 4, '2025-01-05', '2025-01-10', '2025-01-15', 5.99),
(26, 26, 9, '2025-02-10', '2025-02-15', '2025-02-20', 4.99),
(27, 27, 14, '2025-03-15', NULL, '2025-03-25', NULL),
(28, 28, 19, '2025-04-20', '2025-04-25', '2025-04-30', 5.49),
(29, 29, 24, '2025-05-25', '2025-05-30', '2025-06-05', 7.99),
(30, 30, 29, '2025-06-30', '2025-07-05', '2025-07-10', 6.49);


INSERT INTO sales (sale_id, customer_id, movie_id, sale_date, sale_amt) VALUES
(1, 5, 15, '2023-01-05', 9.99),
(2, 8, 20, '2023-02-10', 12.99),
(3, 10, 10, '2023-03-15', 14.99),
(4, 15, 25, '2023-04-20', 11.49),
(5, 20, 5, '2023-05-25', 12.99),
(6, 25, 30, '2023-06-30', 13.99),
(7, 3, 3, '2023-07-05', 12.99),
(8, 6, 8, '2023-08-10', 9.99),
(9, 9, 13, '2023-09-15', 14.99),
(10, 12, 18, '2023-10-20', 11.49),
(11, 18, 23, '2023-11-25', 12.99),
(12, 22, 28, '2023-12-30', 13.99),
(13, 27, 2, '2024-01-05', 12.99),
(14, 30, 7, '2024-02-10', 9.99),
(15, 4, 12, '2024-03-15', 14.99),
(16, 7, 17, '2024-04-20', 11.49),
(17, 11, 22, '2024-05-25', 12.99),
(18, 16, 27, '2024-06-30', 13.99),
(19, 19, 1, '2024-07-05', 12.99),
(20, 21, 6, '2024-08-10', 9.99),
(21, 23, 11, '2024-09-15', 14.99),
(22, 26, 16, '2024-10-20', 11.49),
(23, 29, 21, '2024-11-25', 12.99),
(24, 1, 26, '2024-12-30', 13.99),
(25, 2, 4, '2025-01-05', 12.99),
(26, 5, 9, '2025-02-10', 9.99),
(27, 8, 14, '2025-03-15', 14.99),
(28, 11, 19, '2025-04-20', 11.49),
(29, 14, 24, '2025-05-25', 12.99),
(30, 17, 29, '2025-06-30', 13.99);

INSERT INTO inventory (inventory_id, quuantity, rented, sold, movie_id) VALUES
(1, 100, 20, 30, 1),
(2, 120, 25, 40, 2),
(3, 90, 15, 35, 3),
(4, 110, 18, 32, 4),
(5, 105, 22, 38, 5),
(6, 95, 19, 28, 6),
(7, 102, 23, 33, 7),
(8, 115, 17, 29, 8),
(9, 125, 27, 42, 9),
(10, 97, 21, 31, 10),
(11, 103, 24, 36, 11),
(12, 112, 16, 27, 12),
(13, 93, 20, 34, 13),
(14, 98, 18, 30, 14),
(15, 118, 26, 37, 15),
(16, 106, 22, 33, 16),
(17, 107, 19, 29, 17),
(18, 111, 21, 35, 18),
(19, 99, 15, 25, 19),
(20, 96, 17, 27, 20),
(21, 116, 24, 40, 21),
(22, 114, 20, 33, 22),
(23, 121, 26, 38, 23),
(24, 113, 23, 36, 24),
(25, 104, 18, 30, 25),
(26, 109, 21, 32, 26),
(27, 122, 28, 43, 27),
(28, 108, 19, 29, 28),
(29, 123, 27, 41, 29),
(30, 101, 25, 37, 30);

select * from customers;
select * from movies;
select * from rentals;
select * from sales;
select * from inventory;


--view 1
CREATE VIEW customer_rentals AS
select c.f_name,c.l_name,m.title from customers as c inner join 
rentals as r on c.customer_id=r.customer_id 
inner join movies as m on r.movie_id=m.movie_id group by c.f_name, c.l_name, m.title;

SELECT * FROM customer_rentals;


--view 2
create view customer_purchased AS
select c.f_name,c.l_name,m.title
from customers as c inner join  sales as s on c.customer_id=s.customer_id
inner join movies as m on s.movie_id=m.movie_id;
select * from customer_purchased;

--View 3

create view total_purchased_movies AS
SELECT c.f_name, c.l_name, COUNT(s.sale_id) AS sales_count_of_movies
FROM customers AS c
INNER JOIN sales AS s ON c.customer_id = s.customer_id
GROUP BY c.f_name, c.l_name;

--View 4

create view total_rented_movies AS
SELECT c.f_name, c.l_name, COUNT(r.rental_id) AS rented_count_of_movies
FROM customers AS c
INNER JOIN rentals AS r ON c.customer_id = r.customer_id
GROUP BY c.f_name, c.l_name;

--view 5
create view low_stock_of_movie as
select movie_id, title from movies
where movie_Id in (select movie_id
from inventory where quuantity <20)

--view 6
create view avaliable_in_store AS
select m.movie_id,m.title,(i.quuantity-i.rented) as Available from movies as m
inner join inventory as i on m.movie_id=i.movie_id 

--view 7
CREATE VIEW movie_genres_summary AS
SELECT genre, COUNT(movie_id) AS total_movies
FROM movies
GROUP BY genre;

--view 8
 create view specific_costumers as 
 select c.f_name,c.l_name from customers as c where c.customer_id 
 in (select customer_id from customers
 where c.customer_address like '%lahore%');
 
 --view 9



 --store procedures

 --1
 create procedure movie_details
 @movie_id int
 as 
 begin 
 select m.title,i.quuantity,i.rented,i.sold from movies as m
 inner join inventory as i on m.movie_id=i.movie_id where m.movie_id=@movie_id;
 end;

 exec movie_details @movie_id=5;

 --2
 create procedure movie_data_insertion
 @movie_id int,
@genre varchar(30),
@rental_price decimal(10,4),
@sale_price decimal(10,4),
@release_year date,
@title varchar(100),
@director_name varchar(30)
as 
begin 
INSERT INTO movies(movie_id, genre, rental_price, sale_price, release_year, title, director_name) VALUES
(@movie_id,@genre,@rental_price,@sale_price,@release_year,@title,@director_name);
end;

exec movie_data_insertion @movie_id=35,@genre='horror',@rental_price=13.45,@sale_price=20.20,@release_year='2016-11-10',@title='hello world',@director_name='QAMAR';

--3
create procedure update_rental_data
@movie_id int
as 
begin
update rentals set return_date=GETDATE() where movie_id=@movie_id;
end;

exec  update_rental_data @movie_id=3;

--4
create procedure update_quantity
@movie_id int,
@come_in_stock int
as
begin
update inventory set quuantity = quuantity + @come_in_stock where movie_id = @movie_id
end;


--5
--borrow-books
--rental_date
--fine
--top 5 customers
--

--5
create procedure on_sale
@sale_id int, 
@customer_id int, 
@movie_id int, 
@sale_date date, 
@sale_amt decimal(10,4)
as
begin

INSERT INTO sales (sale_id, customer_id, movie_id, sale_date, sale_amt) VALUES
(@sale_id, @customer_id, @movie_id, @sale_date, @sale_amt)

update inventory
set quuantity = quuantity - 1,
    sold = sold + 1
where movie_id = @movie_id;

end;


--6
--trigger for increasing rented quantity when a movie is rented
create procedure renting
@rental_id int,
@customer_id int,
@movie_id int,
@rental_date date
as
begin
INSERT INTO rentals (rental_id, customer_id, movie_id, rental_date, return_date, due_date, total_rental_fee) VALUES
(@rental_id, @customer_id, @movie_id, @rental_date, NULL, dateadd(day,7,getdate()), NULL)
update inventory
set rented=rented+1
where movie_id = @movie_id;
end;


--7
CREATE PROCEDURE on_return
@rental_id int, @return_date date, @due_date date, @base_fee decimal(10,4)
AS
BEGIN
update rentals
set return_date = getdate(),
	total_rental_fee = @base_fee
where rental_id = @rental_id

UPDATE inventory 
SET rented = rented - 1 
WHERE movie_id = (select movie_id from rentals where rental_id = @rental_id)
END;

--8
CREATE PROCEDURE CalculateFine
AS
BEGIN
	UPDATE rentals
	SET total_rental_fee = total_rental_fee + 2.99
	WHERE return_date > due_date;
END;

--9
CREATE PROCEDURE DeleteCustomer_data
    @customer_id INT
AS
BEGIN
    DELETE FROM customers
    WHERE customer_id = @customer_id;
END;






