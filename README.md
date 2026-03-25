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

Importante: Asegúrate de que la base de datos lol-tracker ya existe en PostgreSQL. Si no es así, créala con:
```.sql
CREATE DATABASE "lol-tracker";
```

3. Instalar dependencias de JavaScript:


```.bash
npm install
```

4. Generar clave de la aplicación:
```.bash
php artisan key:generate
```

5. Ejecutar migraciones (creará las tablas base de Laravel):
```.bash
php artisan migrate
```

6. Instalar Filament (panel administrativo):

```.bash
composer require filament/filament:"^3.0"
php artisan filament:install --panels
```

7. Compilar assets (Tailwind, etc.):
```.bash
npm run build
```

8. (Opcional) Crear un usuario administrador para acceder al panel:

```.bash
php artisan make:filament-user
```

Sigue las instrucciones para ingresar nombre, email y contraseña.

## Ejecutar la aplicación

Levanta el servidor de desarrollo de Laravel:

```.bash
php artisan serve
```

Accede a la aplicación en http://localhost:8000 y al panel de Filament en http://localhost:8000/admin (si creaste un usuario).

---

Nota: Este proyecto está en una etapa inicial. La base de datos contiene solo las tablas por defecto de Laravel (users, migrations, etc.). Próximamente se agregarán las funcionalidades específicas del tracker de League of Legends.
