# lol-tracker

Proyecto Laravel vacío con Filament y PostgreSQL para práctica de desarrollo.

## Requisitos

- PHP >= 8.2
- Composer
- PostgreSQL instalado y corriendo
- Node.js y npm (para assets y Filament)
- Git

## Instalación

1. Clonar el repositorio:

```bash
git clone https://github.com/fedesin/lol-tracker.git
cd lol-tracker/src
```

2. Instalar dependencias de PHP:
```bash
composer install
```

Configurar variables de entorno

Copiar .env.example a .env:

cp .env.example .env

Editar .env con los datos de tu PostgreSQL:

```.env
DB_CONNECTION=pgsql
DB_HOST=127.0.0.1
DB_PORT=5432
DB_DATABASE=lol-tracker
DB_USERNAME=postgres
DB_PASSWORD=postgres
```
