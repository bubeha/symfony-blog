FROM php:7.2-fpm

# Installing dependencies
RUN apt-get update && apt-get install -y \
    build-essential \
    libmcrypt-dev \
    mysql-client \
    libpng-dev \
    libjpeg62-turbo-dev \
    libfreetype6-dev \
    locales \
    zip \
    git \
    jpegoptim optipng pngquant gifsicle

RUN usermod -u 1000 www-data
RUN chown -R www-data:www-data /var/www

# Installing extensions
RUN docker-php-ext-install pdo_mysql mbstring zip exif pcntl
RUN docker-php-ext-configure gd --with-gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ --with-png-dir=/usr/include/
RUN docker-php-ext-install gd

WORKDIR /var/www
