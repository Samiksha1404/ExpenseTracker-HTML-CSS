# FROM httpd:2.4
# COPY . /usr/local/apache2/htdocs/
# EXPOSE 9000

# RUN sed -i 's/Listen 80/Listen 9000/g' /usr/local/apache2/conf/httpd.conf


# Use the official Apache HTTP server image
FROM httpd:2.4

# Copy all the contents to the Apache document root
COPY . /usr/local/apache2/htdocs/

# Expose port 9000
EXPOSE 9000

# Update the Apache configuration to ensure it serves index.html
RUN echo "DirectoryIndex index.html" >> /usr/local/apache2/conf/httpd.conf
