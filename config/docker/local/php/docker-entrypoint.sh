#!/bin/sh

/usr/sbin/usermod -u "$PARENT_USER_ID" www-data

mkdir -p /var/www/.composer
chmod -R 777 /var/www/.composer

if [ "$APP_ENV" = 'prod' ]; then
    gosu www-data composer install --prefer-dist --no-dev --no-progress --no-suggest --optimize-autoloader --classmap-authoritative --no-interaction
else
    gosu www-data composer install --prefer-dist --no-progress --no-suggest --no-interaction
fi

chown -R www-data var
php-fpm
