

-- вивести повну(реконструйовану) інформацію про ноутбуки делл 
select * from get_laptops_info_brand('Dell');

-- додавання записів до бази даних з їх нормалізацією
call insert_laptop('HP','Notebook 14-df0008nx','14.0',' Intel Celeron N4000',' Intel HD Graphics 600',' 64 GB (eMMC)','1259.0','1259.0','0 / 5');
call insert_laptop('HP','Pavilion 14-ce0000nx','14.0',' Intel Core i7-8550U',' NVIDIA GeForce MX150 (4 GB)',' 256 GB M.2 SSD/1 TB HDD','3599.0','4199.0','5.0 / 5');

-- бренд Huawei записан не в верхньому регісті - його додавання викликає триггер.
call insert_laptop('Huawei','MateBook D Volta','14.0',' Intel Core i5-8250U',' NVIDIA GeForce MX150 (2 GB)',' 256 GB SSD','2999.0','3799.0','0 / 5');

-- розглянемо таблиці и побачимо, що додавання нових записів працює коректно, та не призводить до дублікаціі таких даних, як відеокарти та диски
-- зауважимо, що в ноутбуці може бути декілька дисків
-- також зауважимо, що відеопам'ять не завжди присутня в описі відекарти
select * from gpu;
select * from laptop;
select * from disk;
select * from disk_space;
