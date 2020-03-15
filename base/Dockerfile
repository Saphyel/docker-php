FROM php:7.4-fpm-alpine

COPY --from=saphyel/php-composer:latest /usr/bin/composer /usr/bin/composer

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
  ; docker-php-ext-enable apcu \
  ; composer global require hirak/prestissimo --prefer-dist --no-progress --no-suggest --optimize-autoloader
