with p as (select randompoint(geom) as point from estado where id= 9) select nombre,st_asewkt(st_transform(p.point,4326)) from estado e join p on st_intersects(p.point,e.geom);

