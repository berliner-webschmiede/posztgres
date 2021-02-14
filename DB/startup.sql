CREATE DATABASE IF NOT EXISTS cyber;


CREATE TABLE "cyber.public"."User" (
  id SERIAL PRIMARY KEY,
  email TEXT UNIQUE,
  "password" TEXT,
  name TEXT,
  linkedin TEXT
);
CREATE TABLE "cyber.public"."Attack" (
  id SERIAL PRIMARY KEY,
  title TEXT,
  content TEXT,
  published BOOLEAN,
  "date" DATE,
  "authorId" INTEGER,
  CONSTRAINT author FOREIGN KEY ("authorId") REFERENCES "public"."User" (id)
);
CREATE TABLE "cyber.public"."Protection" (
  id SERIAL PRIMARY KEY,
  title TEXT,
  content TEXT,
  published BOOLEAN,
  "date" DATE,
  "authorId" INTEGER,
  CONSTRAINT author FOREIGN KEY ("authorId") REFERENCES "public"."User" (id)
);