FROM php:7.3-fpm-alpine

# Container tools
RUN apk add --no-cache \
  openssh-client \
  vim \
  git \
  unzip \
  curl \
  $PHPIZE_DEPS

#PHP Extensions
RUN pecl install xdebug \
  ; docker-php-ext-install \
  pdo_mysql \
  opcache \
  bcmath \
  ; docker-php-ext-enable xdebug

COPY --from=composer:1.6 /usr/bin/composer /usr/bin/composer
RUN composer global require hirak/prestissimo

WORKDIR /var/www
