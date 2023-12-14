
-- Ця процедура дозволяє заповнити всі таблиці даними з датасету
-- тобто для кожного рядка датасету можна викликати функцію і всі необхінді
-- дані будуть записані в базу у 4-й нормальній формі.
DROP PROCEDURE IF EXISTS insert_laptop (varchar,varchar,varchar,varchar,varchar,varchar,varchar,varchar,varchar);
CREATE OR REPLACE PROCEDURE insert_laptop(
	brand varchar, 
	laptop_name varchar, 
	display_size varchar,
	processor_type varchar,
	graphics_card varchar,
	disk_space varchar,
	discount_price varchar,
	old_price varchar,
	ratings_5max varchar)
LANGUAGE plpgsql
AS $$
DECLARE
  m_laptop_id integer;

  m_gpu_id integer;
  gpu_card varchar := trim(graphics_card);
  gpu_vendor varchar := split_part(gpu_card, ' ', 1);
  gpu_vram varchar := coalesce(substring(gpu_card from '\(.*\)'), '');
  gpu_name varchar := trim(substr(gpu_card, length(gpu_vendor) + 1, length(gpu_card) - length(gpu_vendor) - length(gpu_vram)));
  
  m_disk_id integer;
  disk_array text[] := string_to_array(disk_space, '/');
  disk_elem text;
  disk_capacity text;
  disk_type text;
BEGIN
  INSERT INTO gpu(gpu_id, name, vendor, vram)
  VALUES((select max(gpu_id) + 1 from gpu), gpu_name, gpu_vendor, gpu_vram)
  on conflict(name, vendor, vram) do nothing;
  select gpu_id into m_gpu_id from gpu
  where gpu.name = gpu_name and gpu.vendor = gpu_vendor and gpu.vram = gpu_vram;

  INSERT INTO Laptop(laptop_id, brand, laptop_name, display_size, processor_type, gpu_id, discount_price, old_price, ratings_5max)
  VALUES((select max(laptop_id) + 1 from laptop), 
	  trim(brand),
	  trim(laptop_name),
	  display_size::numeric,
	  processor_type,
	  m_gpu_id,
	  discount_price::numeric,
	  old_price::numeric,
	  trim(split_part(ratings_5max, '/', 1))::numeric)
  returning laptop_id into m_laptop_id;
  
  -- для кожного ноутбука може бути декілька дисків
  FOREACH disk_elem IN ARRAY disk_array
  LOOP
    disk_elem := trim(disk_elem);
	disk_capacity := substring(disk_elem, '[0-9]+ [A-Z]+');
	disk_type := trim(substr(disk_elem, length(disk_capacity) + 1));
	
    INSERT INTO disk(disk_id, capacity, type)
    VALUES((select max(disk_id) + 1 from disk), disk_capacity, disk_type)
	on conflict(capacity, type) do nothing;
    select disk_id into m_disk_id from disk
    where disk.capacity = disk_capacity and disk.type = disk_type;
	
    INSERT INTO disk_space(relation_id, laptop_id, disk_id)
    VALUES((select max(relation_id) + 1 from disk_space), m_laptop_id, m_disk_id);
  END LOOP;
END;
$$;
