FROM library/php:5.5

RUN apt-get update && \
  apt-get install -y supervisor ant php5-xmlrpc libxml2-dev git && \
  docker-php-ext-configure xmlrpc --with-libxml-dir=/usr/bin && \
  docker-php-ext-install xmlrpc bcmath mbstring
