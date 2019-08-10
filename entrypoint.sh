#!/bin/sh

cp /config/cron.conf /mnt/cron.conf
chmod 777 /config/*
chmod 600 /mnt/cron.conf
crontab /mnt/cron.conf

exec "$@"
