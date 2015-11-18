FROM library/php:5.5-apache

RUN apt-get update && \
  apt-get install -y mysql-client ant supervisor php5-xmlrpc libxml2-dev php5-mysql git && \
  docker-php-ext-configure xmlrpc --with-libxml-dir=/usr/bin && \
  docker-php-ext-install xmlrpc bcmath mbstring pdo pdo_mysql pcntl
