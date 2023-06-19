# syntax=docker/dockerfile:1
# Use the official nginx image as the base image
FROM node:18

# Copy the static HTML page to the default nginx public directory
COPY index.html /usr/src

RUN npm install
# Expose port 80 for incoming traffic
EXPOSE 80

# Start nginx when the container is launched
CMD ["node", "server.js"]