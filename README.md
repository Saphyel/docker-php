Docker PHP-FPM 8.0
==================
This container includes is ready to work with Symfony.

Configuration
-------------
### Alpine
* vim
* openssh
* git
* curl
* unzip

### PHP
* opcache
* bcmath
* apcu
* Composer

FAQ
---
### Xdebug set up
You need to add a php.ini with this configuration:

    xdebug.remote_port=9000
    xdebug.remote_enable=1
    xdebug.remote_connect_back=1

I'm gonna explain how to configure it in different IDE, but at the end hitting this URL should do the trick `http://localhost/hello.php?XDEBUG_SESSION_START=DOCKER_DEBUG`

#### PHPStorm
Create a Run Configuration of the type “PHP Remote Debug”.
Enter DOCKER_DEBUG inside of the textfield of `Ide key(session id)`
And apply the following config:

    Name: Docker
    Host: localhost
    Port: 8000
    Debugger: Xdebug
    path mappings: ./ -> /var/www/

### Composer set up
#### Root warning message
To avoid that message you can add this env. var
`COMPOSER_ALLOW_SUPERUSER=1`

#### Memory limit
You can use more memory by adding this env. var
`COMPOSER_MEMORY_LIMIT=1`
