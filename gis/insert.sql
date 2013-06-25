CREATE OR REPLACE FUNCTION insert_posicion(lat float,lon float,dispositivo int) RETURNS int AS
$$
WITH q AS (INSERT INTO posicion (lon,lat,dispositivo_id) 
	VALUES( $1,$2,$3) RETURNING id) SELECT id FROM q;
$$
LANGUAGE SQL;
