CREATE TRIGGER borrar_estadistica_undecima AFTER INSERT ON Estadistica
WHEN (Select Count(*) from estadistica )> 10
BEGIN
	DELETE FROM Estadistica where id IN (Select min(id) from Estadistica);
END;
