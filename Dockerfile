FROM debian:11-slim

LABEL org.opencontainers.image.source https://github.com/ShawnLabo/fun

ENV DEBIAN_FRONTEND=noninteractive
ENV PATH=/usr/games:$PATH

RUN apt-get update \
  && apt-get install -y --no-install-recommends \
    cmatrix \
    cowsay \
    figlet \
    fortune \
    sl \
    toilet \
  && rm -rf /var/lib/apt/lists/* \
  && apt-get purge -y --auto-remove
