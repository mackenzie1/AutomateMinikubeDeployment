# syntax=docker/dockerfile:1

FROM nginx:alpine
COPY index.html /var/www/html/
RUN echo "ServerName localhost" >> /etc/apache2/apache2.conf
RUN npm start

