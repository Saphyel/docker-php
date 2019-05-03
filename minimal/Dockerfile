FROM php:7.3-fpm-alpine

COPY --from=composer:1.8 /usr/bin/composer /usr/bin/composer

# Container tools
RUN apk add --no-cache \
  openssh-client \
  vim \
  git \
  unzip \
  curl \
  $PHPIZE_DEPS \
  ; pecl install apcu xdebug \
  ; docker-php-ext-install \
  opcache \
  bcmath \
  ; docker-php-ext-enable apcu xdebug \
  ; composer global require hirak/prestissimo
