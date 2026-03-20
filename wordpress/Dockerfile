FROM debian:12

RUN apt-get update && \
    apt-get install -y php-fpm wget && \
    rm -rf /var/lib/apt/lists/*

RUN mkdir -p /var/www/html

RUN wget https://wordpress.org/latest.tar.gz && \
    tar -xzf latest.tar.gz -C /var/www/html --strip-components=1 && \
    rm latest.tar.gz

CMD ["php-fpm8.2", "-F"] 