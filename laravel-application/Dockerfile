#Multistage where we are going to create the vendor and copy it in our Laravel
FROM composer:1.9.0 as composer
RUN mkdir -p /composer-info
WORKDIR /composer-info
COPY . ./
RUN yes | composer update
VOLUME /composer-info

FROM php:7.2-fpm
RUN mkdir -p /app/vendor && apt-get update && apt-get install -y \
    build-essential \
    libpng-dev \
    libjpeg62-turbo-dev \
    libfreetype6-dev \
    locales \
    zip \
    jpegoptim optipng pngquant gifsicle \
    vim \
    unzip \
    git \
    curl
RUN docker-php-ext-install pdo_mysql mbstring zip exif pcntl
WORKDIR /app
COPY --from=composer /composer-info/ /app/
EXPOSE 9000
CMD ["php-fpm"]
