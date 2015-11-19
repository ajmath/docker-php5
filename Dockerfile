FROM library/php:5.5-apache

ADD runkit-1.0.3.tgz /tmp/
RUN apt-get update && \
  apt-get install -y php-apc php-pear php5-curl php5-dev \
    php5-gd php5-imagick php5-mcrypt php5-memcache php5-mysql php5-pspell \
    php5-sqlite php5-tidy php5-xdebug php5-xmlrpc php5-xsl libxml2-dev \
    git mysql-client ant supervisor libcurl3-openssl-dev libgearman-dev && \
  docker-php-ext-configure xmlrpc --with-libxml-dir=/usr/bin && \
  docker-php-ext-install xmlrpc bcmath mbstring pdo pdo_mysql pcntl && \
  pecl install gearman
