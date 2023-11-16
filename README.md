### EPG

Utilities for downloading the EPG (Electronic Program Guide) for thousands of TV channels from hundreds of sources.

https://github.com/iptv-org/epg

```bash
export PWD="$(pwd)"
export TAG="latest"
export IMAGE="iptv-org-epg:${TAG}"
docker build --tag "${IMAGE}" "${PWD}"
docker run --publish '34195:3000' --name 'iptv-org-epg' "${IMAGE}"
```
