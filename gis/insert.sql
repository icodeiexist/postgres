CREATE OR REPLACE FUNCTION insert_posicion(id integer,lat float,lon float,dispositivo int) RETURNS int AS
$$
WITH q AS (INSERT INTO posicion (id,lon,lat,dispositivo_id) 
	VALUES( $1,$2,$3,$4) RETURNING id) SELECT id FROM q;
$$
LANGUAGE SQL;
