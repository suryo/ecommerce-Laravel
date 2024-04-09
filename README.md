

## Ecommerce-API-Laravel

Rebuild API Ecommerce from reference https://dummyjson.com/docs

## Install
copy env.example to .env
set database connection
composer install (use php 8.2, if error, please delete composer.lock and run the command again)
php artisan jwt:secret

## Import Database

pv /home/integerhead/Documents/Indraco/supresso-laravel-id/db/supresso_supresso_laravel_id.sql | mysql -u root -p --force supresso_supresso_laravel_id


## Dump SQL

mysqldump -u root -p db_ecommerce | pv -W > /home/integerhead/Documents/belajar_laravel/ecommerce-Laravel/db/dump.sql

