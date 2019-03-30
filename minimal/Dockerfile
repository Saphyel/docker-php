FROM php:7.2-fpm-alpine

COPY --from=composer:1.8 /usr/bin/composer /usr/bin/composer

# Container tools
RUN apk add --no-cache \
  openssh-client \
  vim \
  git \
  unzip \
  curl \
  $PHPIZE_DEPS \
  ; pecl install xdebug \
  ; docker-php-ext-install \
  opcache \
  bcmath \
  ; docker-php-ext-enable xdebug \
  ; composer global require hirak/prestissimo
