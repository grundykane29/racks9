# Use the official PHP image as the base image
FROM php:8.0-apache

# Set the working directory
WORKDIR /var/www/html

# Copy the current directory contents into the container
COPY . .

# Install any necessary dependencies
RUN docker-php-ext-install mysqli pdo pdo_mysql && \
    docker-php-ext-enable pdo_mysql

# Expose port 80 to the outside world
EXPOSE 80

# Start Apache in the foreground
CMD ["apache2-foreground"]
