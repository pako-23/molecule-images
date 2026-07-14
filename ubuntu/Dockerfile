ARG VERSION=22.04
FROM ubuntu:${VERSION}

ARG DEBIAN_FRONTEND=noninteractive


# hadolint ignore=DL3008
RUN apt-get update \
    && apt-get install -y --no-install-recommends \
       build-essential \
       python3 \
       systemd \
       sudo \
       iproute2 \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* \
    && rm -rf /usr/share/doc \
    && rm -rf /usr/share/man

RUN rm -f /lib/systemd/system/systemd*udev* /lib/systemd/system/getty.target

VOLUME ["/sys/fs/cgroup"]
ENTRYPOINT ["/lib/systemd/systemd"]
