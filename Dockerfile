# syntax=docker/dockerfile:1
   
FROM nginx:latest

COPY index.html /usr/share/nginx/html