FROM php:5.6-apache

RUN sed -i 's/deb.debian.org/archive.debian.org/g' /etc/apt/sources.list && \
    sed -i '/security.debian.org/d' /etc/apt/sources.list && \
    sed -i '/stretch-updates/d' /etc/apt/sources.list

RUN apt-get update && apt-get install -y \
    libzip-dev \
    libpng-dev \
    libjpeg-dev \
    libfreetype6-dev

RUN a2enmod rewrite

# COPY ./php.ini /etc/php/5.6/apache2/php.ini

COPY ./project /var/www/html/

EXPOSE 8181

WORKDIR /var/www/html

CMD ["apache2-foreground"]