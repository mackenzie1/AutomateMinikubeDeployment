# syntax=docker/dockerfile:1
   
FROM ubuntu
RUN apt-get update
RUN apt-get install nginx -y
COPY index.html /src/index.html
EXPOSE 80
CMD ["nginx","-g","daemon off;"]