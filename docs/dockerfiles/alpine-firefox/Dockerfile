FROM ubuntu:xenial

MAINTAINER Francismar Nascimento <francislibra@gmail.com>

RUN apt-get update && \
    apt-get install -y \
                    --no-install-recommends \
                    sudo \
                    libglu1-mesa:amd64 \
                    dbus-x11 \
                    libxext-dev \
                    libxrender-dev \
                    libxtst-dev \
                    fonts-noto-cjk \
                    firefox && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

VOLUME [/root/.Xauthority, /tmp/.X11-unix]

CMD ["/usr/bin/firefox"]

