/*
  Warnings:

  - You are about to drop the column `fotoja` on the `eventet` table. All the data in the column will be lost.
  - Added the required column `mbajtja` to the `Eventet` table without a default value. This is not possible if the table is not empty.
  - Added the required column `photo` to the `Eventet` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE `eventet` DROP COLUMN `fotoja`,
    ADD COLUMN `mbajtja` ENUM('ONLINE', 'FIZIK') NOT NULL,
    ADD COLUMN `photo` VARCHAR(191) NOT NULL;
