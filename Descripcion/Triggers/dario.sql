CREATE TRIGGER insertar_puntuacion BEFORE INSERT ON juega WHEN NEW.puntuacion < 0
BEGIN
  SELECT CASE WHEN NEW.puntuacion < 0 THEN
    RAISE (
      ABORT,
      "La puntuacion no puede ser negativa"
    )
  END;
END;
