FROM php:7.1-apache
COPY app/ /var/www/html/
EXPOSE 80/tcp
