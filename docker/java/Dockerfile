FROM openjdk:22-jdk-bookworm

ADD . /app/
WORKDIR /app/

RUN apt-get update && apt-get install -y apache2
RUN wget https://jsoup.org/packages/jsoup-1.16.1.jar

RUN cp /app/cgi/parsehtml /usr/lib/cgi-bin/parsehtml && chmod +x /usr/lib/cgi-bin/parsehtml
RUN a2dismod status && a2enmod cgid

# I dont know why this dance is needed, but cgi doesnt work when restarting container without it
CMD service apache2 start && service apache2 reload && service apache2 stop && apachectl -D FOREGROUND 