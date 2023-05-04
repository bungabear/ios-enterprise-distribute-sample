
FROM nginx:stable-alpine
COPY . /usr/share/nginx/html
COPY /docker/nginx/default.conf /etc/nginx/conf.d/default.conf
COPY /docker/nginx/mime.types /etc/nginx/mime.types
EXPOSE 80
CMD [ "nginx", "-g", "daemon off;" ]
