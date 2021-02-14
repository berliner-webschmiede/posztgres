-- CreateTable
CREATE TABLE "Attack" (
    "id" SERIAL NOT NULL,
    "title" TEXT NOT NULL,
    "content" TEXT,
    "published" BOOLEAN NOT NULL DEFAULT false,
    "authorId" INTEGER,
    "fine" TEXT NOT NULL,

    PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Protection" (
    "id" SERIAL NOT NULL,
    "title" TEXT NOT NULL,
    "content" TEXT,
    "published" BOOLEAN NOT NULL DEFAULT false,
    "authorId" INTEGER,

    PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "User" (
    "id" SERIAL NOT NULL,
    "email" TEXT NOT NULL,
    "name" TEXT,
    "bio" TEXT,

    PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "_AttackToProtection" (
    "A" INTEGER NOT NULL,
    "B" INTEGER NOT NULL
);

-- CreateIndex
CREATE UNIQUE INDEX "User.email_unique" ON "User"("email");

-- CreateIndex
CREATE UNIQUE INDEX "_AttackToProtection_AB_unique" ON "_AttackToProtection"("A", "B");

-- CreateIndex
CREATE INDEX "_AttackToProtection_B_index" ON "_AttackToProtection"("B");

-- AddForeignKey
ALTER TABLE "Attack" ADD FOREIGN KEY ("authorId") REFERENCES "User"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Protection" ADD FOREIGN KEY ("authorId") REFERENCES "User"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "_AttackToProtection" ADD FOREIGN KEY ("A") REFERENCES "Attack"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "_AttackToProtection" ADD FOREIGN KEY ("B") REFERENCES "Protection"("id") ON DELETE CASCADE ON UPDATE CASCADE;
