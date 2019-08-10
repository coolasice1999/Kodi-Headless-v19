#!/bin/sh

cp /config/.kodi/cron.conf /mnt/cron.conf
chmod 777 /config/*
chmod 600 /mnt/cron.conf
crontab /mnt/cron.conf

exec "$@"
