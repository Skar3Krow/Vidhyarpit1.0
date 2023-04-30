CREATE DATABASE Adani_momo_corner;
USE Adani_momo_corner;

CREATE TABLE sign_up 
(User_name varchar(25) unique primary key,
Email varchar(30) unique,
Contact_no varchar(10) unique,
User_Password varchar(15) 
);

CREATE TABLE User_Profile
(U_id int NOT NULL unique primary key,
First_name varchar(20) NOT NULL,
Last_name varchar(20) NOT NULL, 
User_name varchar(25) unique,
Email varchar(30) unique,
Contact_no varchar(10) unique,
Address varchar(30) NOT NULL,
city varchar(20) NOT NULL,
pincode varchar(10) NOT NULL,
FOREIGN KEY (User_name) REFERENCES sign_up(User_name)
); 

create table books2
(std int primary key,
img varchar(1000) not null,
book_name varchar(50),
details varchar(200),
price int 
);


insert into books2 values
(1, 'https://cdn.shopify.com/s/files/1/0428/3763/9317/products/sk_bkncertset_002_new1__1_1024x.jpg?v=1595875186', 'std 1 NCERT Bookset', 'FREE book', 0),
(2, 'https://cdn.shopify.com/s/files/1/0428/3763/9317/products/sk_bkncertset_00324decedt.jpg?v=1595875190', 'std 2 NCERT Bookset', 'FREE book', 0),
(3, 'https://rukminim1.flixcart.com/image/312/312/keuagsw0/regionalbooks/s/w/k/ncert-complete-books-set-for-english-medium-class-3-original-imafvfxwxeuzdvpk.jpeg?q=70', 'std 3 NCERT Bookset', 'FREE book', 0),
(4, 'https://cdn.shopify.com/s/files/1/0428/3763/9317/products/sk_bkncertse', 'std 4 NCERT Bookset', 'FREE book', 0),
(5, 'https://cdn.shopify.com/s/files/1/0565/3558/0868/products/IMG_20230121_154058_530x@2x.jpg?v=1674295947', 'std 5 NCERT Bookset', 'FREE book', 0),
(6, 'https://m.media-amazon.com/images/I/51ZCOCt-eIL.jpg', 'std 6 NCERT Bookset', 'FREE book', 0),
(7, 'https://rukminim1.flixcart.com/image/416/416/jz4g3gw0/regionalbooks/g/d/r/ncert-books-set-class-7-english-medium-binded-books-original-imafj7gge9mkr7fy.jpeg?q=70', 'std 7 NCERT Bookset', 'FREE book', 0),
(8, 'https://cdn.shopify.com/s/files/1/0428/3763/9317/products/sk_bkncertset_015_new1.jpg?v=1595875241', 'std 8 NCERT Bookset', 'FREE book', 0),
(9, 'https://cdn.shopify.com/s/files/1/0428/3763/9317/products/Sparsh9_600x600_crop_center.jpg?v=1629270911', 'std 9 NCERT Bookset', 'FREE book', 0),
(10, 'https://rukminim1.flixcart.com/image/416/416/jz30nm80/regionalbooks/c/e/e/ncert-books-set-class-10-hindi-medium-binded-books-original-imafj6htu26utxyj.jpeg?q=70', 'std 10 NCERT Bookset', 'FREE book', 0),
(11, 'https://m.media-amazon.com/images/I/51fVL8RyITL.jpg', 'std 11 NCERT Bookset', 'FREE book', 0),
(12, 'https://m.media-amazon.com/images/I/51VutxoGC3L.jpg', 'std 12 NCERT Bookset', 'FREE book', 0),
(13, 'https://images-eu.ssl-images-amazon.com/images/I/919ksULtpHL._AC_UL232_SR232,232_.jpg', 'Maggie stiefvater', 'The Raven King', 99),
(14, 'https://m.media-amazon.com/images/I/4123pFW3sWL.jpg', 'AeroSpace Engineering', 'AeroSpace Engineering', 49),
(15, 'https://rukminim1.flixcart.com/image/416/416/kjx6tu80/regionalbooks/p/k/i/estimating-and-costing-in-civil-engineering-theory-and-practice-original-imafzefgybgdyh2t.jpeg?q=70', 'Estimating and costing Civil Engineering', 'Specification and Valuation', 99),
(16, 'https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcRhet3IDycFxTUnQktmeGKuzh-VkF8Dj7bA077YfTl2CowZORoj', 'Engineering book', 'Practical perspactive', 99),
(17, 'https://media.wiley.com/product_data/coverImage300/82/11180147/1118014782.jpg', 'Theory of computation', 'Fininte automation', 99),
(18, 'https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcTMmXuCFqBpKTL4qfyUSkJJlQgvgGlx2zFh-oG_u5KKYY0URIYk', 'Aerospace engineering', '-', 99),
(19, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSt3hI3EPIMEOKRp7Qs2cRukU-W_fUrsVC-r_HiYa1LRMX492cN', 'Software enigneering', 'the process of developing, testing and deploying computer applications to solve real-world problems by adhering to a set of engineering principles and best practices.', 99),
(20, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRzcrum2Yb2ET3ih5TrV4FC4bHfj9DaDLnmcKqOCvX9VqSuGHtD', 'Engineering Physics', 'Engineering Physics is primarily designed to serve as a textbook for undergraduate students of engineering', 99
);
