FROM nginx:latest

# Build arguments
ARG NGINX_CONFIG_FILE=./nginx-custom.conf

ENV NGINX_APP_ROOT=/opt/app-root \
        NGINX_ETC=${NGINX_APP_ROOT}/etc \
        NGINX_SRC=${NGINX_APP_ROOT}/src \
        NGINX_CONF=${NGINX_ETC}/nginx.d

# Changing to root user
USER 0
# Making cache directory
RUN mkdir -p /var/cache/nginx/

# Copy NGINX config and DIST folder
COPY ${NGINX_CONFIG_FILE} ${NGINX_APP_ROOT}/etc/nginx/conf.d/default.conf

# Replace environment variables
ADD nginx-start.sh /usr/local/bin/
RUN chmod +rx /usr/local/bin/nginx-start.sh

USER 1001

EXPOSE 8443

CMD ["/usr/local/bin/nginx-start.sh", "/opt/app-root/etc/nginx/conf.d/default.conf"]