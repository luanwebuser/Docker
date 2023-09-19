FROM php:5.6-apache

RUN sed -i 's/deb.debian.org/archive.debian.org/g' /etc/apt/sources.list && \
    sed -i '/security.debian.org/d' /etc/apt/sources.list && \
    sed -i '/stretch-updates/d' /etc/apt/sources.list && \
    apt-get update && \
    apt-get install -y \
        libzip-dev \
        libpng-dev \
        libjpeg-dev \
        libfreetype6-dev \
        default-libmysqlclient-dev \
    apt-get clean

RUN docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/
RUN docker-php-ext-install pdo_mysql gd zip mbstring

RUN docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ && \
    docker-php-ext-install pdo_mysql gd zip mbstring mysqli

RUN a2enmod rewrite

COPY xdebug-2.5.5.tgz /tmp/
RUN pecl install /tmp/xdebug-2.5.5.tgz && docker-php-ext-enable xdebug

# COPY php.ini /usr/local/etc/php/php.ini

EXPOSE 8080
WORKDIR /var/www/html
CMD ["apache2-foreground"]