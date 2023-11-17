#!/bin/bash

# https://github.com/iptv-org/epg/blob/master/SITES.md
export SITE="tvpassport.com"
export LANG="en"

npm --prefix /opt/iptv-org/epg run grab -- --site="${SITE}" --lang="${LANG}" &&
npm --prefix /opt/iptv-org/epg run grab -- --site="${SITE}" --lang="${LANG}" --cron="@hourly" &
npm --prefix /opt/iptv-org/epg run serve
