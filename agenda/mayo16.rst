########################
Agenda Mayo 16
########################

Práctica
**********

- Aumentar la memoria compartida de la instancia en data2 a 600MB
- Fijar el search path de la base de datos pagila a "$user",public,pagila
- Cambiar el parámetro LC_MESSAGES del usuario postgres a 'en_US' de manera permanente

Instalación
*************

#. Archivo de servicios
#. Consultar la version de postgres
#. Autocompletado + historia en psql
#. Listar las bases de datos de manera no interactiva
#. Desplegado extendido de resultados.
#. Información extendida de objetos con signo más (+) en psql

Configuración
***************

#. aumentar la memoria compartida
#. show, reset, alter role, alter database
#. show all como documentación
#. checkpoints
   - checkpoint_segments
   - checkpoint_timeout
   - checkpoint_completion_target
   - checkpoint_warning

#. temp_buffers
#. work_mem
#. maintenance_work_mem

#. vacuum
   - vacuum_cost_delay
   - vacuum_cost_limit

#. sychronous_commit

#. archivado
   - wal_level
   - archive_mode
   - archive_command

#. logs
   - log_destination
   - logging_collector
   - log_directory
   - log_filename
   - log_file_mode
   - log_truncate_on_rotation
   - log_rotation_age
   - log_rotation_size
   - log_line_prefix
   - log_statement


#. Configuración del log de eventos como tabla

Control de accesos
********************

- Configurar las máquinas virtuales para comunicación externa
- Los usuarios son globales, los nombres deben ser únicos
- Los privilegios son manejados con:
   - GRANT | REVOKE
   - ALTER
   - CREATE | DROP ROLE | USER
   - createuser - dropuser
- Quien crea un objeto es el dueño del objeto y puede asignar permisos sobre los objetos
- Cambiar al dueño de un objeto con ALTER (object)
- El rol PUBLIC es un rol especial, incluye a todos los usuarios
- Explicar el archivo pg_hba.conf

Ejercicios:

#. Crear usuarios
   - \du - listar usuarios actuales - roles
   - createuser -e -s U postgres omnitracs
      


Benchmarks
***********

#. Utilización de pgbench

Seguridad
**********

#. El archivo pg_hba.conf
