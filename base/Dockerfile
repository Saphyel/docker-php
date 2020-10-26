FROM php:7.4-fpm-alpine

COPY --from=composer/composer:2 /usr/bin/composer /usr/bin/composer

# Container tools
RUN apk add --no-cache \
  openssh-client \
  vim \
  git \
  unzip \
  curl \
  ${PHPIZE_DEPS} \
  ; pecl install apcu \
  ; docker-php-ext-install \
  opcache \
  bcmath \
  ; docker-php-ext-enable apcu
