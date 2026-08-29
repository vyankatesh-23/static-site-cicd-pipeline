FROM nginx:alpine
COPY index.html style.css /usr/share/nginx/html/
RUN chown -R nginx:nginx /usr/share/nginx/html /var/cache/nginx /run
EXPOSE 80
USER nginx
