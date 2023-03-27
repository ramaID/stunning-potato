# Set our base image
FROM serversideup/php:8.2-fpm-nginx

# Install PHP extension using regular Ubuntu commands
RUN apt-get update \
    && apt-get install -y --no-install-recommends php8.2-swoole php8.2-redis \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /usr/share/doc/*
