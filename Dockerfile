FROM dockage/alpine-nginx-php-fpm
COPY app/ /var/www/
EXPOSE 80/tcp
