CREATE TABLE public.dispositivo (
id serial primary key,
nombre varchar
);


CREATE TABLE public.posicion (
id primary key,
dispositivo_id int,
hora timestamp default now(),
lon float,
lat float
);

CREATE SEQUENCE seq_posicion;

select addgeometrycolumn('public','posicion','geom',94914,'POINT',2);

CREATE OR REPLACE FUNCTION public.update_point() RETURNS TRIGGER AS
$$
BEGIN
UPDATE posicion
SET
geom = st_transform(st_setsrid(st_makepoint(lon,lat),4326),94914)
WHERE id = NEW.id ;
RETURN NULL;
END;
$$
LANGUAGE plpgsql;

CREATE TRIGGER update_point AFTER INSERT
ON posicion
FOR EACH ROW
EXECUTE PROCEDURE public.update_point();
