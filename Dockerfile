FROM httpd:latest

COPY . /usr/local/apache2/htdocs/

COPY . .

EXPOSE 80

CMD ["httpd-foreground"]
