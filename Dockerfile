FROM bitnami/minideb:bookworm

RUN apt-get update && apt-get install -y --no-install-recommends --no-install-suggests \
    postfix \
	postfix-pgsql \
	postfix-pcre \
	bash \
	bind-tools \
	ca-certificates \
	libcurl \
	logrotate \
	supervisor \
	tzdata

EXPOSE 25
EXPOSE 587

CMD ["/usr/sbin/postfix", "-c", "/etc/postfix", "start-fg"]

