FROM wordpress:latest

# Copy custom WordPress configuration files if needed
COPY wp-config.php /var/www/html/wp-config.php

# Set environment variables if any defaults are needed
ENV WORDPRESS_DB_HOST=db \
    WORDPRESS_DB_USER=user \
    WORDPRESS_DB_PASSWORD=password \
    WORDPRESS_DB_NAME=wordpress

EXPOSE 80
CMD ["apache2-foreground"]
