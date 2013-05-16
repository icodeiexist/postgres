########################
Agenda Mayo 16
########################

Práctica
**********

- Aumentar la memoria compartida de la instancia en data2 a 600MB
- Fijar el search path de la base de datos pagila a "$user",public,pagila


Instalación
*************

#. Archivo de servicios
#. Consultar la version de postgres
#. Autocompletado + historia en psql
#. Listar las bases de datos de manera no interactiva
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

Benchmarks
***********

#. Utilización de pgbench

Seguridad
**********

#. El archivo pg_hba.conf
