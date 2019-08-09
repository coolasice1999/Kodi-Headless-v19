#!/bin/sh

if [ ! -f /mnt/cron.conf ]; then
#schedulr run video clean and update daily
    echo "0 1 * * * /usr/bin/kodi-send -a "UpdateLibrary(video)" > /mnt/cron.conf
    echo "30 1 * * * /usr/bin/kodi-send -a "CleanLibrary(video)" >> /mnt/cron.conf
fi
chmod 777 /config/*
chmod 600 /mnt/cron.conf
crontab /mnt/cron.conf

exec "$@"
