FROM nginx:alpine

WORKDIR /etc/nginx

COPY ./nginx.conf ./conf.d/default.conf
COPY ./public/ /usr/share/nginx/html/
COPY ./src/ /usr/share/nginx/html/
COPY entrypoint.sh /usr/local/bin/entrypoint.sh

# Make the entrypoint script executable
RUN chmod +x /usr/local/bin/entrypoint.sh

# Set the entrypoint
ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]

EXPOSE 80
