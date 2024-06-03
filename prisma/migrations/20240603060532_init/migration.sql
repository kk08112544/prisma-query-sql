-- CreateTable
CREATE TABLE "Dvd" (
    "id" SERIAL NOT NULL,
    "title" TEXT NOT NULL,
    "img_url" TEXT NOT NULL,
    "description" TEXT NOT NULL,
    "status_id" INTEGER NOT NULL,

    CONSTRAINT "Dvd_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Status" (
    "id" SERIAL NOT NULL,
    "status_name" TEXT NOT NULL,

    CONSTRAINT "Status_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "Dvd" ADD CONSTRAINT "Dvd_status_id_fkey" FOREIGN KEY ("status_id") REFERENCES "Status"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
