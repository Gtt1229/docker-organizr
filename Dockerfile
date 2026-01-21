ARG BASE_IMAGE
ARG ARCH
FROM ${BASE_IMAGE:-ghcr.io/organizr/base:2023-11-30_13}-${ARCH:-linux-amd64}

LABEL maintainer="Gtt1229"

ENV fpm="false" branch="v2-master"

# Override the default Organizr repo to use your fork
ENV ORGANIZR_REPO="https://github.com/Gtt1229/Organizr. git"

# add local files
COPY root/ /

# ports and volumes
EXPOSE 80
VOLUME /config