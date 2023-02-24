# syntax=docker/dockerfile:1
   
FROM ubuntu
# Set working directory
WORKDIR /src
RUN apt-get update
RUN apt-get install nginx -y
COPY index.html ./src/
EXPOSE 80
CMD ["nginx","-g","daemon off;"]