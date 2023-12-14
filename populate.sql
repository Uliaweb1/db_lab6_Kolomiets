---------------------------
-- Populate disk table
---------------------------
INSERT INTO disk(capacity, type, disk_id)
VALUES('1 TB', 'HDD', 1);
INSERT INTO disk(capacity, type, disk_id)
VALUES('1 TB', 'PCIe NVMe M.2 SSD', 2);
INSERT INTO disk(capacity, type, disk_id)
VALUES('1 TB', 'SSD', 3);
INSERT INTO disk(capacity, type, disk_id)
VALUES('128 GB', '(PCIe Flash)', 4);
INSERT INTO disk(capacity, type, disk_id)
VALUES('128 GB', '(PCIe SSD)', 5);
INSERT INTO disk(capacity, type, disk_id)
VALUES('128 GB', 'M.2 SSD', 6);
INSERT INTO disk(capacity, type, disk_id)
VALUES('128 GB', 'PCIe NVMe M.2 SSD', 7);
INSERT INTO disk(capacity, type, disk_id)
VALUES('128 GB', 'SSD', 8);
INSERT INTO disk(capacity, type, disk_id)
VALUES('16 GB', '(Optane)', 9);
INSERT INTO disk(capacity, type, disk_id)
VALUES('2 TB', 'HDD', 10);

---------------------------
-- Populate gpu table
---------------------------
INSERT INTO gpu(name, vendor, vram, gpu_id)
VALUES('Radeon 520', 'AMD', '(2 GB)', 1);
INSERT INTO gpu(name, vendor, vram, gpu_id)
VALUES('Radeon 530', 'AMD', '(2 GB)', 2);
INSERT INTO gpu(name, vendor, vram, gpu_id)
VALUES('Radeon 530', 'AMD', '(4 GB)', 3);
INSERT INTO gpu(name, vendor, vram, gpu_id)
VALUES('Radeon 530M', 'AMD', '(4 GB)', 4);
INSERT INTO gpu(name, vendor, vram, gpu_id)
VALUES('Radeon 535', 'AMD', '(2 GB)', 5);
INSERT INTO gpu(name, vendor, vram, gpu_id)
VALUES('Radeon 540', 'AMD', '(4 GB)', 6);
INSERT INTO gpu(name, vendor, vram, gpu_id)
VALUES('Radeon R5', 'AMD', '', 7);
INSERT INTO gpu(name, vendor, vram, gpu_id)
VALUES('Radeon R5-M340', 'AMD', '(2 GB)', 8);
INSERT INTO gpu(name, vendor, vram, gpu_id)
VALUES('Radeon R5-M430', 'AMD', '(2 GB)', 9);
INSERT INTO gpu(name, vendor, vram, gpu_id)
VALUES('Radeon R7-M445', 'AMD', '(4 GB)', 10);

---------------------------
-- Populate Laptop table
---------------------------
INSERT INTO Laptop(laptop_id, brand, laptop_name, display_size, processor_type, gpu_id, discount_price, old_price, ratings_5max)
VALUES(10, 'HP', '14-cf0007nx', 14.0, 'Intel Core i5-8250U', 2, 2629.0, 2629.0, 0);
INSERT INTO Laptop(laptop_id, brand, laptop_name, display_size, processor_type, gpu_id, discount_price, old_price, ratings_5max)
VALUES(11, 'HP', '15-db0001nx', 15.6, 'AMD A9-9425', 7, 1999.0, 1999.0, 0);
INSERT INTO Laptop(laptop_id, brand, laptop_name, display_size, processor_type, gpu_id, discount_price, old_price, ratings_5max)
VALUES(53, 'Dell', 'Inspiron 15 3580', 15.6, 'Intel Core i5-8265U', 1, 2299.0, 2699.0, 0);
INSERT INTO Laptop(laptop_id, brand, laptop_name, display_size, processor_type, gpu_id, discount_price, old_price, ratings_5max)
VALUES(55, 'Dell', 'Inspiron 15 3580', 15.6, 'Intel Core i7-8565U', 1, 2799.0, 3149.0, 0);
INSERT INTO Laptop(laptop_id, brand, laptop_name, display_size, processor_type, gpu_id, discount_price, old_price, ratings_5max)
VALUES(57, 'Lenovo', 'IdeaPad 330', 15.6, 'Intel Core i7-8550U', 3, 2789.0, 3099.0, 3.6);
INSERT INTO Laptop(laptop_id, brand, laptop_name, display_size, processor_type, gpu_id, discount_price, old_price, ratings_5max)
VALUES(64, 'Dell', 'Inspiron 15 3580', 15.6, 'Intel Core i5-8265U', 1, 2199.0, 2449.0, 0);
INSERT INTO Laptop(laptop_id, brand, laptop_name, display_size, processor_type, gpu_id, discount_price, old_price, ratings_5max)
VALUES(66, 'HP', '14-cf1001nx', 14.0, 'Intel Core i5-8265U', 2, 2549.0, 2799.0, 5.0);
INSERT INTO Laptop(laptop_id, brand, laptop_name, display_size, processor_type, gpu_id, discount_price, old_price, ratings_5max)
VALUES(69, 'Lenovo', 'IdeaPad 330-15IKBR', 15.6, 'Intel Core i7-8550U', 4, 2899.0, 3149.0, 0);
INSERT INTO Laptop(laptop_id, brand, laptop_name, display_size, processor_type, gpu_id, discount_price, old_price, ratings_5max)
VALUES(76, 'Lenovo', 'IdeaPad 330S', 15.6, 'Intel Core i5-8250U', 6, 2499.0, 2699.0, 0);
INSERT INTO Laptop(laptop_id, brand, laptop_name, display_size, processor_type, gpu_id, discount_price, old_price, ratings_5max)
VALUES(115, 'Dell', 'Vostro 5471', 14.0, 'Intel Core i5-8250U', 2, 2949.0, 2949.0, 0);
INSERT INTO Laptop(laptop_id, brand, laptop_name, display_size, processor_type, gpu_id, discount_price, old_price, ratings_5max)
VALUES(123, 'Dell', 'Vostro 5471', 14.0, 'Intel Core i5-8250U', 3, 3599.0, 3599.0, 3.8);
INSERT INTO Laptop(laptop_id, brand, laptop_name, display_size, processor_type, gpu_id, discount_price, old_price, ratings_5max)
VALUES(158, 'Lenovo', 'IdeaPad 330S-15IKB', 15.6, 'Intel Core i5-8250U', 5, 2169.0, 2519.0, 4.0);
INSERT INTO Laptop(laptop_id, brand, laptop_name, display_size, processor_type, gpu_id, discount_price, old_price, ratings_5max)
VALUES(172, 'Lenovo', 'IdeaPad 320-15IKBRA', 15.6, 'Intel Core i7-8550U', 3, 3149.0, 3149.0, 0);
INSERT INTO Laptop(laptop_id, brand, laptop_name, display_size, processor_type, gpu_id, discount_price, old_price, ratings_5max)
VALUES(175, 'Dell', 'Inspiron 15 3567', 15.6, 'Intel Core i7-7500U', 8, 2749.0, 2749.0, 0);
INSERT INTO Laptop(laptop_id, brand, laptop_name, display_size, processor_type, gpu_id, discount_price, old_price, ratings_5max)
VALUES(176, 'Dell', 'Inspiron 15 5567', 15.6, 'Intel Core i7-7500U', 10, 3249.0, 3249.0, 0);
INSERT INTO Laptop(laptop_id, brand, laptop_name, display_size, processor_type, gpu_id, discount_price, old_price, ratings_5max)
VALUES(186, 'Dell', 'Inspiron 15 5570', 15.6, 'Intel Core i5-8250U', 2, 2939.0, 2939.0, 4.0);
INSERT INTO Laptop(laptop_id, brand, laptop_name, display_size, processor_type, gpu_id, discount_price, old_price, ratings_5max)
VALUES(187, 'Dell', 'Inspiron 15 3567', 15.6, 'Intel Core i5-8250U', 1, 2549.0, 2549.0, 0);
INSERT INTO Laptop(laptop_id, brand, laptop_name, display_size, processor_type, gpu_id, discount_price, old_price, ratings_5max)
VALUES(188, 'Lenovo', 'IdeaPad 320-15IKBRA', 15.6, 'Intel Core i5-8250U', 2, 2519.0, 2519.0, 4.2);
INSERT INTO Laptop(laptop_id, brand, laptop_name, display_size, processor_type, gpu_id, discount_price, old_price, ratings_5max)
VALUES(193, 'Dell', 'Inspiron 15 3567', 15.6, 'Intel Core i5-7200U', 8, 2469.0, 2469.0, 0);
INSERT INTO Laptop(laptop_id, brand, laptop_name, display_size, processor_type, gpu_id, discount_price, old_price, ratings_5max)
VALUES(196, 'HP', null, 15.6, 'Intel Core i5-7200U', 1, 2419.0, 2419.0, 0);
INSERT INTO Laptop(laptop_id, brand, laptop_name, display_size, processor_type, gpu_id, discount_price, old_price, ratings_5max)
VALUES(200, 'Dell', 'Inspiron 15 3567', 15.6, 'Intel Core i5-7200U', 9, 2249.0, 2249.0, 3.3);
INSERT INTO Laptop(laptop_id, brand, laptop_name, display_size, processor_type, gpu_id, discount_price, old_price, ratings_5max)
VALUES(205, 'Dell', 'Inspiron 15 3576', 15.6, 'Intel Core i5-8250U', 1, 2299.0, 2299.0, 0);

---------------------------
-- Populate disk_space table
---------------------------
INSERT INTO disk_space(relation_id, laptop_id, disk_id)
VALUES(12, 10, 9);
INSERT INTO disk_space(relation_id, laptop_id, disk_id)
VALUES(13, 10, 1);
INSERT INTO disk_space(relation_id, laptop_id, disk_id)
VALUES(14, 11, 1);
INSERT INTO disk_space(relation_id, laptop_id, disk_id)
VALUES(69, 53, 1);
INSERT INTO disk_space(relation_id, laptop_id, disk_id)
VALUES(71, 55, 1);
INSERT INTO disk_space(relation_id, laptop_id, disk_id)
VALUES(74, 57, 6);
INSERT INTO disk_space(relation_id, laptop_id, disk_id)
VALUES(75, 57, 1);
INSERT INTO disk_space(relation_id, laptop_id, disk_id)
VALUES(85, 64, 1);
INSERT INTO disk_space(relation_id, laptop_id, disk_id)
VALUES(87, 66, 6);
INSERT INTO disk_space(relation_id, laptop_id, disk_id)
VALUES(88, 66, 1);
INSERT INTO disk_space(relation_id, laptop_id, disk_id)
VALUES(91, 69, 10);
INSERT INTO disk_space(relation_id, laptop_id, disk_id)
VALUES(99, 76, 10);
INSERT INTO disk_space(relation_id, laptop_id, disk_id)
VALUES(139, 115, 1);
INSERT INTO disk_space(relation_id, laptop_id, disk_id)
VALUES(147, 123, 8);
INSERT INTO disk_space(relation_id, laptop_id, disk_id)
VALUES(148, 123, 1);
INSERT INTO disk_space(relation_id, laptop_id, disk_id)
VALUES(196, 158, 1);
INSERT INTO disk_space(relation_id, laptop_id, disk_id)
VALUES(211, 172, 10);
INSERT INTO disk_space(relation_id, laptop_id, disk_id)
VALUES(214, 175, 1);
INSERT INTO disk_space(relation_id, laptop_id, disk_id)
VALUES(215, 176, 1);
INSERT INTO disk_space(relation_id, laptop_id, disk_id)
VALUES(226, 186, 1);
INSERT INTO disk_space(relation_id, laptop_id, disk_id)
VALUES(227, 187, 1);
INSERT INTO disk_space(relation_id, laptop_id, disk_id)
VALUES(228, 188, 1);
INSERT INTO disk_space(relation_id, laptop_id, disk_id)
VALUES(234, 193, 1);
INSERT INTO disk_space(relation_id, laptop_id, disk_id)
VALUES(237, 196, 1);
INSERT INTO disk_space(relation_id, laptop_id, disk_id)
VALUES(242, 200, 1);
INSERT INTO disk_space(relation_id, laptop_id, disk_id)
VALUES(248, 205, 1);


