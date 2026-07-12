ARG VERSION=22.04
FROM ubuntu:${VERSION}

ARG DEBIAN_FRONTEND=noninteractive


RUN apt-get update \
    && apt-get install -y --no-install-recommends \
       build-essential \
       systemd \
       sudo \
       iproute2 \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* \
    && rm -rf /usr/share/doc \
    && rm -rf /usr/share/man


RUN rm -f /lib/systemd/system/multi-user.target.wants/* \
    /etc/systemd/system/*.wants/* \
    /lib/systemd/system/getty.target \
    /lib/systemd/system/local-fs.target.wants/* \
    /lib/systemd/system/sockets.target.wants/*udev* \
    /lib/systemd/system/sockets.target.wants/*initctl* \
    /lib/systemd/system/sysinit.target.wants/systemd-tmpfiles-setup* \
    /lib/systemd/system/systemd-update-utmp* \
    /lib/systemd/system/systemd*udev*


VOLUME ["/sys/fs/cgroup"]
CMD ["/lib/systemd/systemd"]
