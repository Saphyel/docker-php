FROM saphyel/php:latest

# Container tools
RUN apk add --no-cache \
  $PHPIZE_DEPS \
  ; pecl install  xdebug \
  ; docker-php-ext-enable xdebug \
