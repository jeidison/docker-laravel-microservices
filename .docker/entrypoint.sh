#!/bin/bash

composer install --no-interaction
php artisan key:generate
php artisan clear-compiled
php artisan optimize:clear
php artisan optimize
php artisan migrate
chmod -R 777 /var/www/*
php-fpm
