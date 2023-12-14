-- ця функція повертає реконструйовану таблицу, з якої віконувалась нормалізация до 4-ї нормальної форми для заданого бренда
DROP FUNCTION IF EXISTS get_laptops_info_brand(varchar); 
CREATE OR REPLACE FUNCTION get_laptops_info_brand(brand_arg varchar) 
  RETURNS TABLE (
	  brand varchar,
	  laptop_name varchar,
	  display_size varchar,
	  processor_type varchar,
	  dist_space varchar,
	  discount_price varchar,
	  old_price varchar,
	  ratings_5max varchar)
LANGUAGE plpgsql
AS $$
BEGIN
  RETURN QUERY
  select laptop.brand, laptop.laptop_name, laptop.display_size::varchar, laptop.processor_type,
  STRING_AGG(concat(disk.capacity, ' ', disk.type), '/')::varchar as disk_space,
  laptop.discount_price::varchar, laptop.old_price::varchar, 
  concat(laptop.ratings_5max, ' / 5')::varchar as ratings_5max
  from laptop natural join disk natural join disk_space
  where laptop.brand = brand_arg
  group by laptop_id 
  order by laptop_id;
END;
$$;
