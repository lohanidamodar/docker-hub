FROM debian:jessie
MAINTAINER dlohani48 [at] gmail [dot] com

ENV DEBIAN_FRONTEND=noninteractive \
    NPM_VERSION=6.2.0 \
    IONIC_VERSION=4.0.1 \
    CORDOVA_VERSION=8.0.0 \
    YARN_VERSION=1.9.0 \
    # Fix for the issue with Selenium, as described here:
    # https://github.com/SeleniumHQ/docker-selenium/issues/87
    DBUS_SESSION_BUS_ADDRESS=/dev/null

# Install basics
RUN apt-get update &&  \
    apt-get install -y git wget curl unzip build-essential && \
    curl -sL https://deb.nodesource.com/setup_8.x | bash - && \
    apt-get update &&  \
    apt-get install -y nodejs && \
    npm install -g npm@"$NPM_VERSION" cordova@"$CORDOVA_VERSION" ionic@"$IONIC_VERSION" yarn@"$YARN_VERSION" && \
    npm cache clear --force && \
    mkdir source && \
    mkdir -p /root/.cache/yarn/ && \ 
    apt-get -qqy install fonts-ipafont-gothic xfonts-100dpi xfonts-75dpi xfonts-cyrillic xfonts-scalable libfreetype6 libfontconfig


RUN cordova telemetry off

WORKDIR source
EXPOSE 8100 35729
CMD ["ionic", "serve"]