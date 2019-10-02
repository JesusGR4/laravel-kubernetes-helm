FROM composer:1.9.0 as composer
ARG VENDOR_DIR
ENV VENDOR_DIR $VENDOR_DIR
RUN mkdir -p /var/www/laravel-application && mkdir -p ${VENDOR_DIR}
WORKDIR /var/www/laravel-application
COPY . ./
RUN yes | composer install
VOLUME $VENDOR_DIR

FROM php:7.2-fpm
ARG VENDOR_DIR
ARG DB_HOST
ARG DB_PORT
ARG DB_DATABASE
ARG DB_USERNAME
ARG DB_PASSWORD

ENV COMPOSER_HOME=/root/.composer
ENV VENDOR_DIR $VENDOR_DIR
ENV DB_HOST $DB_HOST
ENV DB_PORT $DB_PORT
ENV DB_DATABASE $DB_DATABASE
ENV DB_USERNAME $DB_USERNAME
ENV DB_PASSWORD $DB_PASSWORD

RUN mkdir -p ${VENDOR_DIR} && apt-get update && apt-get install -y \
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
    curl && mkdir -p $COMPOSER_HOME \
    && curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
RUN docker-php-ext-install pdo_mysql mbstring zip exif pcntl
WORKDIR /app
COPY --from=composer ${VENDOR_DIR} ${VENDOR_DIR}
EXPOSE 9000

