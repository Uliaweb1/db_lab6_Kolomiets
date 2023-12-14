-- функція тригеру, яка змінює регістр бренду ноутбука таким чином можно позбутися плутанини щодо їх назв
CREATE OR REPLACE FUNCTION upper_laptop_brand() RETURNS trigger 
LANGUAGE 'plpgsql'
AS
$$
BEGIN
 UPDATE laptop SET brand = upper(brand) 
 WHERE laptop.laptop_id = NEW.laptop_id; 
 RETURN NULL;
END;
$$;

-- триггер активується додаванням єлементів у таблицю ноутбуків
DROP TRIGGER IF EXISTS laptop_insert ON laptop;
CREATE TRIGGER laptop_insert 
AFTER INSERT ON laptop
FOR EACH ROW EXECUTE FUNCTION upper_laptop_brand();
