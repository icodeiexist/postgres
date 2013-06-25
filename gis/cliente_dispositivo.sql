CREATE TABLE cliente (
id serial primary key,
nombre varchar
);

CREATE TABLE cliente_dispositivo(
cliente_id int,
dispositivo_id int
);
