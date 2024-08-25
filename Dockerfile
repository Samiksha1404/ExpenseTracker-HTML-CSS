# Use the official Nginx image from Docker Hub
FROM nginx:alpine

# Copy the HTML file into the default directory Nginx serves from
COPY Home.html /usr/share/nginx/html/

# Expose port 80 to access the website
EXPOSE 80

# Start the Nginx server
CMD ["nginx", "-g", "daemon off;"]
