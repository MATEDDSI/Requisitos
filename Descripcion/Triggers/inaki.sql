CREATE TRIGGER insertar_partida_nuevo_jugador AFTER INSERT ON juega WHEN NEW.nombreJugador NOT IN (SELECT nombre FROM Jugador)
BEGIN
	INSERT INTO Jugador(nombre) VALUES( NEW.nombreJugador );
END;
