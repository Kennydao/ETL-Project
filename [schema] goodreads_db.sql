-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/7hPtMz
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

DROP TABLE IF EXISTS books;

CREATE TABLE "books" (
    "BookId" integer   NOT NULL,
    "Title" varchar(500)   NOT NULL,
    "Authors" varchar(150)   NOT NULL,
    "ISBN" varchar(13) NOT NULL,
    "Rating" float   NOT NULL,
    "PublishY" integer   NOT NULL,
    "PublishM" integer   NOT NULL,
    "PublishD" integer   NOT NULL,
    "Publisher" varchar(150),
    "Language" varchar(10),
    CONSTRAINT "pk_books" PRIMARY KEY (
        "BookId"
     )
);

-- DROP TABLE IF EXISTS authors;

-- CREATE TABLE "authors" (
--     "AuthorId" int   NOT NULL,
--     "AuthorName" varchar(50)   NOT NULL,
--     "Gender" varchar(10),
--     "Hometown" varchar(60),
--     CONSTRAINT "pk_authors" PRIMARY KEY (
--         "AuthorId"
--      )
-- );

-- DROP TABLE IF EXISTS author_book;

-- CREATE TABLE "author_book" (
--     "AuthorId" int   NOT NULL,
--     "BookId" int   NOT NULL,
--     "BestSeller" boolean   NOT NULL,
--     CONSTRAINT "pk_author_book" PRIMARY KEY (
--         "AuthorId", "BookId"
--      )
-- );

-- SELECT * FROM authors;

-- SELECT * FROM author_book;

-- SELECT * FROM books;

----------------------------
-- import data into tables--
----------------------------

COPY books(BookId, Title, AuthorName, ISBN, Rating, PublishY, PublishD, PublishM, Publisher, Language)
FROM 'C:\Users\home\Documents\Monu-Hw [KD]\ETL-Project\Resources\boooks.csv'
DELIMITER ','
CSV HEADER;

COPY authors(AuthorId, AuthorName, Gender, Hometown)
FROM 'C:\Users\home\Documents\Monu-Hw [KD]\ETL-Project\Resources\authors.csv'
DELIMITER ','
CSV HEADER;

COPY author_book(AuthorId, BookId, BestSeller)
FROM 'C:\Users\home\Documents\Monu-Hw [KD]\ETL-Project\Resources\author_book.csv'
DELIMITER ','
CSV HEADER;
