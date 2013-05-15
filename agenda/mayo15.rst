########################
Agenda Mayo 15
########################

Práctica
*********

- Crear un cluster de datos en /var/lib/pgsql/data2
- Sacar la configuración del cluster y ponerla en /var/lib/pgsql/9.2/etc/data2
- Configurar el script de arranque respectivo en /etc/init.d/
- Arrancar, y reiniciar el servicio mediante service postgresql92-data2 <comando>
- Separar pg_xlog 
- Apagado inteligente (smart), rápido (fast), inmediato (immediate)

Ambiente del S.O.
******************

#. Cortafuegos
#. locale (locale -a, vi /etc/locale.conf y /etc/sysconfig/i18n)
#. instalar base de datos con locale diferente

.. code-block:: bash

    CREATE DATABASE music ENCODING 'LATIN1' LC_CTYPE 'es_MX' LC_COLLATE 'es_MX' TEMPLATE template0;

Fuente

http://blag.borap.net/2010/08/06/creating-postgresql-database-with-a-different-encoding/

psql
******

- Listar bases de datos
- Explicar las bases de datos por defecto (template0, template1 y postgres)
- Listar usuarios
- Describir estructuras de tablas
- search_path


Configuración
***************

#. configuración mediante control de versiones
#. reglas de sintaxis (página 49)
#. listen_addresses
#. max_connections
#. ubicación de archivos
#. logs
#. checkpoints
#. aumentar la memoria compartida
#. tabla pg_settings
#. show, reset, alter role, alter database
#. Configuración del log de eventos como tabla

Benchmarks
***********

#. Utilización de pgbench
