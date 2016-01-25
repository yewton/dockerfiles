#!/bin/bash -xe

printenv > /tmp/envs
cat /tmp/envs /tmp/jobs > /etc/cron.d/jobs
chmod 0644 /etc/cron.d/jobs
touch /var/log/cron.log

cat /etc/cron.d/jobs

rsyslogd && cron && tail -F /var/log/syslog /var/log/cron.log
