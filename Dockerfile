# # Use the official Nginx image from Docker Hub
# FROM nginx:latest

# # Copy the HTML file into the default directory Nginx serves from
# COPY . /usr/share/nginx/html/index.html

# # Expose port 80 to access the website
# EXPOSE 80

# # Start the Nginx server
# # CMD ["nginx", "-g", "daemon off;"]



FROM httpd:2.4
COPY . /usr/local/apache2/htdocs/
EXPOSE 9000

RUN sed -i 's/Listen 80/Listen 9000/g' /usr/local/apache2/conf/httpd.conf