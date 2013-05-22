#########################
Actividades Mayo 22 2013
#########################

pg_hba.conf
*************

problemas con el pg_hba.conf

vacuum, autovacuum, vacuum full
*********************************

- Desactivar el autovacuum
- Inicializar las tablas de pgbench con un factor de 4
- Medir el tamaño inicial de la tabla pgbench_accounts, en kb y en páginas
- Ejecutar una tarea de pgbench de 10 minutos mi con los parámetros -n -N -c 12 -j 4
- Ejecutar un vacuum full, (¿quién puede ejecutarlo?)
- Volver a medir el tamaño de pgbench_accounts


analyze
*********

- Explicarlo en el contexto de autovacuum
- Importancia en cargas masivas

reindexado
************

- SELECT only sobre pgbench_accounts
- Reindexar pgbench_accounts 
- Repetir select only

dump, dumpall, archivado contínuo
***********************************

- Borrar el tablespace creado en la última sesión
- Hacer un dump de pagila en texto, usuario común y superusuario
- Hacer un dump de pagila formato binario
- Hacer un dump de los datos globales con pg_dumpall
- Restaurar el de texto (usar template0)
- Restaurar en otra bd el binario de manera selectiva
- ¿Quién puede restaurar un respaldo hecho con pg_dumpall?
- Programar un respaldo diario con cron, ver man 5 crontab

confiabilidad
***************

- panorama general caché de disco
- explicar commit asíncronos, carga de masiva de datos
- explicar la generación de segmentos wal y su nomenclatura
- Hacer un respaldo incremental con recuperación en el tiempo

