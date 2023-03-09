# syntax=docker/dockerfile:1
# Use the official nginx image as the base image
FROM nginx:latest

# Copy the static HTML page to the default nginx public directory
COPY index.html /usr/share/nginx/html/

# Expose port 80 for incoming traffic
EXPOSE 80

# Start nginx when the container is launched
CMD ["nginx", "-g", "daemon off;"]