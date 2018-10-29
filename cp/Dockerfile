FROM php:7.1-fpm-alpine3.7

# Container tools
RUN apk add --no-cache \
  openssh-client \
  vim \
  git \
  unzip \
  curl \
  zlib-dev \
  $PHPIZE_DEPS

#PHP Extensions
RUN pecl install xdebug \
  ; docker-php-ext-install \
  pdo_mysql \
  opcache \
  bcmath \
  zip \
  ; docker-php-ext-enable xdebug

COPY --from=composer:1.6 /usr/bin/composer /usr/bin/composer
RUN composer global require hirak/prestissimo

WORKDIR /var/www
