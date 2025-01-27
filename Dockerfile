FROM ubuntu:18.04

LABEL maintainer="m3chd09 <m3chd09@protonmail.com>"

ARG DEBIAN_FRONTEND=noninteractive

RUN apt update && \
    apt install -y libopencv-dev sudo build-essential curl cmake git make libv4l-dev libjpeg-dev libgtk-3-dev libusb-dev && \
    rm -rf /var/lib/apt/lists/* && \
    git clone https://github.com/slightech/MYNT-EYE-D-SDK.git

WORKDIR /MYNT-EYE-D-SDK

RUN make init && \
    make samples
