-- CreateTable
CREATE TABLE `User` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `emri` VARCHAR(191) NOT NULL,
    `mbiemri` VARCHAR(191) NOT NULL,
    `tel` VARCHAR(191) NOT NULL,
    `shteti` VARCHAR(191) NOT NULL,
    `qyteti` VARCHAR(191) NOT NULL,
    `email` VARCHAR(191) NOT NULL,
    `roli` ENUM('Organizues', 'Pjesemarres') NOT NULL,

    UNIQUE INDEX `User_id_key`(`id`),
    UNIQUE INDEX `User_email_key`(`email`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Eventet` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `fotoja` VARCHAR(191) NOT NULL,
    `titulli` VARCHAR(191) NOT NULL,
    `pershkrimi` VARCHAR(191) NOT NULL,
    `status` ENUM('UPCOMING', 'ONGOING', 'FINISHED', 'CANCELED') NOT NULL,
    `nisja` DATETIME(3) NOT NULL,
    `perfundimi` DATETIME(3) NOT NULL,
    `start_registration` DATETIME(3) NOT NULL,
    `end_registration` DATETIME(3) NOT NULL,
    `kapaciteti` INTEGER NOT NULL,
    `vendndodhja` VARCHAR(191) NOT NULL,

    UNIQUE INDEX `Eventet_id_key`(`id`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `_Organizues` (
    `A` INTEGER NOT NULL,
    `B` INTEGER NOT NULL,

    UNIQUE INDEX `_Organizues_AB_unique`(`A`, `B`),
    INDEX `_Organizues_B_index`(`B`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `_Pjesemarres` (
    `A` INTEGER NOT NULL,
    `B` INTEGER NOT NULL,

    UNIQUE INDEX `_Pjesemarres_AB_unique`(`A`, `B`),
    INDEX `_Pjesemarres_B_index`(`B`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `_Organizues` ADD CONSTRAINT `_Organizues_A_fkey` FOREIGN KEY (`A`) REFERENCES `Eventet`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `_Organizues` ADD CONSTRAINT `_Organizues_B_fkey` FOREIGN KEY (`B`) REFERENCES `User`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `_Pjesemarres` ADD CONSTRAINT `_Pjesemarres_A_fkey` FOREIGN KEY (`A`) REFERENCES `Eventet`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `_Pjesemarres` ADD CONSTRAINT `_Pjesemarres_B_fkey` FOREIGN KEY (`B`) REFERENCES `User`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;
