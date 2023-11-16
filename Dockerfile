FROM node:lts-alpine

RUN apk update && \
    apk add --no-cache git bash bash-completion coreutils findutils musl-utils util-linux && \
    adduser -D -s /bin/bash iptv && \
    mkdir -p /opt/iptv-org && \
    chown iptv /opt/iptv-org

USER iptv
WORKDIR /opt/iptv-org

RUN git clone --depth 1 --branch master 'https://github.com/iptv-org/epg.git' && \
    cd epg && \
    npm install

COPY start.sh /home/iptv/start.sh

EXPOSE 3000

CMD [ "bash" , "/home/iptv/start.sh" ]
