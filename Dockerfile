# Use the official Nginx image from Docker Hub
FROM nginx:latest

# Copy the HTML file into the default directory Nginx serves from
COPY . /usr/share/nginx/html/index.html

# Expose port 80 to access the website
EXPOSE 80

# Start the Nginx server
# CMD ["nginx", "-g", "daemon off;"]

