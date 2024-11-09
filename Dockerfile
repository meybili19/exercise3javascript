# Use an official nginx image to serve the application
FROM nginx:alpine

# Set the working directory
WORKDIR /usr/share/nginx/html

# Copy the project files (HTML, CSS, JS) into the nginx directory
COPY . .

# Expose port 80 for the application
EXPOSE 80

# Start nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]