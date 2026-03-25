FROM php:8.4-fpm

RUN apt-get update && apt-get install -y \
    libpq-dev \
    git \
    unzip \
    curl \
    && docker-php-ext-install pdo pdo_pgsql pgsql

# Composer
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

WORKDIR /var/www

# Crear carpetas necesarias
RUN mkdir -p /var/www/storage \
    && mkdir -p /var/www/bootstrap/cache \
    && mkdir -p /tmp

# Permisos correctos
RUN chmod -R 777 /var/www/storage \
    && chmod -R 777 /var/www/bootstrap/cache \
    && chmod 1777 /tmp