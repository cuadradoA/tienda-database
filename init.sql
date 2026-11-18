-- Script de inicialización unificado para Docker Compose o despliegue inicial
\i /docker-entrypoint-initdb.d/01-schema.sql
\i /docker-entrypoint-initdb.d/02-seed.sql

