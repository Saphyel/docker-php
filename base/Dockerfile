FROM php:7.3-fpm-alpine

COPY --from=composer:1.8 /usr/bin/composer /usr/bin/composer

# Container tools
RUN apk add --no-cache \
  openssh-client \
  vim \
  git \
  unzip \
  curl \
  ; pecl install apcu \
  ; docker-php-ext-install \
  opcache \
  bcmath \
  ; docker-php-ext-enable apcu \
  ; composer global require hirak/prestissimo
