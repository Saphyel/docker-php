FROM php:7.1-fpm-alpine3.7

RUN apk add --no-cache \
  openssh-client \
  vim \
  git \
  unzip \
  curl \
  $PHPIZE_DEPS \
  && pecl install xdebug

RUN docker-php-ext-install \
  pdo_mysql \
  opcache \
  && docker-php-ext-enable \
  xdebug

COPY --from=composer:1.6 /usr/bin/composer /usr/bin/composer

WORKDIR /var/www
