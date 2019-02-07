FROM php:7.1-fpm-alpine

# Container tools
RUN apk add --no-cache \
  openssh-client \
  vim \
  git \
  unzip \
  curl \
  zlib-dev \
  freetype-dev libpng-dev libjpeg-turbo-dev \
  $PHPIZE_DEPS

#PHP Extensions
RUN pecl install xdebug \
  ; docker-php-ext-configure \
  gd \
  ; docker-php-ext-install \
  pdo_mysql \
  opcache \
  bcmath \
  zip \
  gd \
  ; docker-php-ext-enable xdebug

COPY --from=composer:1.8 /usr/bin/composer /usr/bin/composer
RUN composer global require hirak/prestissimo

WORKDIR /var/www
