FROM php:7.2-fpm

RUN apt-get update && \
	apt-get install -y supervisor nginx && \
	apt-get clean && \
	apt-get autoremove -y

ADD php /var/www
ADD nginx/allinone.conf /etc/nginx/sites-available/default
ADD supervisor /etc/supervisor/conf.d

CMD ["supervisord", "--nodaemon"]