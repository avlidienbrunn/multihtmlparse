FROM python:3.9-slim-bookworm

ADD . /app/
WORKDIR /app/

RUN apt-get update && apt-get install -y apache2 python3-pip

RUN cp /app/cgi/parsehtml /usr/lib/cgi-bin/parsehtml && chmod +x /usr/lib/cgi-bin/parsehtml
RUN a2dismod status && a2enmod cgid && service apache2 restart

RUN pip3 install beautifulsoup4
RUN pip3 install lxml
RUN pip3 install html5lib
# I dont know why this dance is needed, but cgi doesnt work when restarting container without it
CMD service apache2 start && service apache2 reload && service apache2 stop && apachectl -D FOREGROUND 