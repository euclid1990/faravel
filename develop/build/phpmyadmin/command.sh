#!/bin/bash

if [ ! -d "/var/www/app/develop/build/phpmyadmin/src/phpMyAdmin-4.7.2" ]; then
    echo "------ [BEGIN] Extract PhpMyAdmin Source Code ------"
    tar -zxf /var/www/app/develop/build/phpmyadmin/phpMyAdmin-4.7.2.tar.gz -C /var/www/app/develop/build/phpmyadmin/src/
    echo "------ [END] Extract PhpMyAdmin Source Code ------"
fi
