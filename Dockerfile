# syntax=docker/dockerfile:1
# Use the official nginx image as the base image
FROM node:14-alpine

WORKDIR /usr/src/app

# Copy the static HTML page to the default nginx public directory
COPY package*.json ./

RUN npm install

COPY . .

# Expose port 80 for incoming traffic
EXPOSE 80

# Start nginx when the container is launched
CMD ["node", "server.js"]