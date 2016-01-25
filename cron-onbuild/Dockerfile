FROM ubuntu:14.04
MAINTAINER yewton@gmail.com

RUN apt-get update -y && apt-get -y upgrade

RUN apt-get install -y cron rsyslog

COPY run.sh /
RUN chmod +x /run.sh

RUN echo "cron.* /var/log/cron.log" >> /etc/rsyslog.d/50-default.conf

ONBUILD COPY jobs /tmp/

CMD ["/run.sh"]
