CREATE OR REPLACE FUNCTION insert_posicion(id integer,lon float,lat float,dispositivo_id int)
RETURNS INTEGER AS
$$
CLUSTER 'cluster1';
RUN ON hashtext(dispositivo_id::text);
$$
LANGUAGE plproxy;
