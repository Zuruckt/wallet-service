#!/bin/sh
composer install

case "$APP_ENV" in
 PROD|production|prod|PRODUCTION) php bin/hyperf.php start ;;
    *) php bin/hyperf.php server:watch ;;
esac