FROM httpd:alpine

COPY . /usr/local/apache2/htdocs/

RUN sed -i -e 's/Listen 80/Listen 8080/g' /usr/local/apache2/conf/httpd.conf

USER 1000

EXPOSE 8080
