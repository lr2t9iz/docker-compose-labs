ARG PHP_VERSION

FROM php:${PHP_VERSION}


RUN a2enmod rewrite

COPY code /var/www/html/

RUN chown -R www-data:www-data /var/www/html

EXPOSE 80
