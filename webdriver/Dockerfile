FROM php:7.2-fpm-alpine

# Container tools
RUN apk add --no-cache \
  openssh-client \
  vim \
  git \
  unzip \
  curl \
  chromium \
  chromium-chromedriver \
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

COPY --from=composer:1.8 /usr/bin/composer /usr/bin/composer
RUN composer global require hirak/prestissimo

WORKDIR /var/www
