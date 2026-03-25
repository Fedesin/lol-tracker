#!/bin/bash

chmod -R 777 /var/www/storage
chmod -R 777 /var/www/bootstrap/cache
chmod 1777 /tmp

exec "$@"
