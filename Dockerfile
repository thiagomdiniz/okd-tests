FROM php:7.3.2-apache
COPY app/ /var/www/html/
EXPOSE 80/tcp
