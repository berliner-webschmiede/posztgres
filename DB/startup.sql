CREATE TABLE "public"."User" (
  id SERIAL PRIMARY KEY,
  email TEXT UNIQUE,
  "password" TEXT,
  name TEXT,
  linkedin TEXT
);
CREATE TABLE "public"."Attack" (
  id SERIAL PRIMARY KEY,
  title TEXT,
  content TEXT,
  published BOOLEAN,
  "date" DATE,
  "authorId" INTEGER,
  CONSTRAINT author FOREIGN KEY ("authorId") REFERENCES "public"."User" (id)
);
CREATE TABLE "public"."Protection" (
  id SERIAL PRIMARY KEY,
  title TEXT,
  content TEXT,
  published BOOLEAN,
  "date" DATE,
  "authorId" INTEGER,
  CONSTRAINT author FOREIGN KEY ("authorId") REFERENCES "public"."User" (id)
);