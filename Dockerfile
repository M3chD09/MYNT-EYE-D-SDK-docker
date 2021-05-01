FROM ubuntu:18.04

LABEL maintainer="m3chd09 <m3chd09@protonmail.com>"

RUN DEBIAN_FRONTEND=noninteractive \
    apt-get update && \
    apt-get install -y libopencv-dev sudo build-essential curl cmake git make libv4l-dev libjpeg-dev libgtk-3-dev libusb-dev && \
    rm -rf /var/lib/apt/lists/* && \
    git clone https://github.com/slightech/MYNT-EYE-D-SDK.git

WORKDIR /MYNT-EYE-D-SDK

RUN make init && \
    make samples
