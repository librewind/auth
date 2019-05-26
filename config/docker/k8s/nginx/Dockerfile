FROM nginx:latest
WORKDIR /etc/nginx

RUN mkdir sites-available
RUN rm ./conf.d/default.conf
COPY nginx.conf ./nginx.conf
COPY upstream.conf ./conf.d/upstream.conf
COPY symfony.conf ./sites-available/symfony.conf
