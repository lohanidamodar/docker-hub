FROM node:8.11
MAINTAINER dlohani48 [at] gmail [dot] com

ENV DEBIAN_FRONTEND=noninteractive \
    REACT_NATIVE_CLI_VERSION=2.0.1 \
    CORDOVA_VERSION=8.0.0 \
    YARN_VERSION=1.7.0 \
    # Fix for the issue with Selenium, as described here:
    # https://github.com/SeleniumHQ/docker-selenium/issues/87
    DBUS_SESSION_BUS_ADDRESS=/dev/null

# Install basics
RUN apt-get update &&  \
    apt-get install -y git wget curl unzip build-essential && \
    curl -o- -L https://yarnpkg.com/install.sh | bash - && \
    apt-get update &&  \
    mkdir source && \
    mkdir -p /root/.cache/yarn/ && \ 
    yarn global add react-native-cli@REACT_NATIVE_CLI_VERSION

WORKDIR source
EXPOSE 8081 8100
CMD ["react-native", "start"]