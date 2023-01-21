CREATE function buswithka()
returns TRIGGER as $buswithka$
	BEGIN 
		IF NEW.BUSNO LIKE 'KA%' THEN 
			RAISE EXCEPTION 'KARNATKA ROUTE',NEW.BUSNO;
			END IF;
		return NEW;
	END;
$buswithka$
LANGUAGE plpsql;
CREATE TRIGGER buswithka
AFTER INSERT OR UPDATE ON PASSENGER 
FOR EACH ROW EXECUTE function buswithka();
