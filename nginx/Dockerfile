FROM composer:1.9.0 as composer
ARG VENDOR_DIR
ENV VENDOR_DIR $VENDOR_DIR
RUN mkdir -p /var/www/laravel-application && mkdir -p ${VENDOR_DIR}
WORKDIR /var/www/laravel-application
COPY ./laravel-application ./
RUN yes | composer install
VOLUME $VENDOR_DIR

FROM nginx:1.17.4-alpine
ARG VENDOR_DIR
ENV VENDOR_DIR $VENDOR_DIR
COPY ./environment-config/nginx/conf.d/app.conf /etc/nginx/conf.d/default.conf
COPY ./laravel-application/ /var/www/laravel-application
COPY --from=composer ${VENDOR_DIR} ${VENDOR_DIR}
RUN chmod -R 777 /var/www/laravel-application/bootstrap/cache && chmod -R 777 /var/www/laravel-application/storage