#!/bin/bash

export SITE="flixed.io"
export LANG="en"

npm --prefix /opt/iptv-org/epg run grab -- --site="${SITE}" --lang="${LANG}" &&
npm --prefix /opt/iptv-org/epg run grab -- --site="${SITE}" --lang="${LANG}" --cron="@hourly" &
npm --prefix /opt/iptv-org/epg run serve
