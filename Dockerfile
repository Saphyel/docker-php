FROM php:7.1-fpm-alpine3.7

RUN apk add --no-cache \
  openssh-client \
  vim \
  git \
  unzip \
  curl

RUN docker-php-ext-install \
  pdo_mysql \
  opcache

COPY --from=composer:1.6 /usr/bin/composer /usr/bin/composer

WORKDIR /var/www
