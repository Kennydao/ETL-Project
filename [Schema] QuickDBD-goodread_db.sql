-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/7hPtMz
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "books" (
    "BookId" int   NOT NULL,
    "Title" varchar(100)   NOT NULL,
    "ISBN" int   NOT NULL,
    "Rating" float   NOT NULL,
    "PublishY" int   NOT NULL,
    "PublishM" int   NOT NULL,
    "PublishD" int   NOT NULL,
    "Publisher" varchar(50)   NOT NULL,
    "Language" varchar(10)   NOT NULL,
    CONSTRAINT "pk_books" PRIMARY KEY (
        "BookId"
     )
);

CREATE TABLE "authors" (
    "AuthorId" int   NOT NULL,
    "AuthorName" varchar(50)   NOT NULL,
    "Gender" varchar(10)   NOT NULL,
    "Hometown" varchar(60)   NOT NULL,
    CONSTRAINT "pk_authors" PRIMARY KEY (
        "AuthorId"
     )
);

CREATE TABLE "author_book" (
    "AuthorId" int   NOT NULL,
    "BookId" int   NOT NULL,
    "BestSeller" bolean   NOT NULL,
    CONSTRAINT "pk_author_book" PRIMARY KEY (
        "AuthorId"
     )
);

