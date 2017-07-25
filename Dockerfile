FROM php:7.0.21-apache

RUN docker-php-ext-install pdo_mysql
RUN a2enmod rewrite

ADD . /var/www
ADD ./public /var/www/html

RUN chown -R www-data:www-data /var/www/html \
RUN chmod -R 777 /var/www