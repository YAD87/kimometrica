FROM nimmis/apache-php5

MAINTAINER  denisyak <people-time@yandex.ru>

COPY ap.conf /etc/apache2/sites-available/000-default.conf

EXPOSE 80

CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]

