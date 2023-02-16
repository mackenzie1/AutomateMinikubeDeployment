# syntax=docker/dockerfile:1

FROM nginx:alpine
COPY . /user/share/nginx/html
