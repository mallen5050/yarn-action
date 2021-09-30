#!/bin/sh

set -e

env
rm -f ./.npmrc
apk add --update --no-cache gcc g++ make libc6-compat \
apk add vips-dev fftw-dev build-base --no-cache --allow-untrusted --repository http://dl-3.alpinelinux.org/alpine/edge/testing/ --repository http://dl-3.alpinelinux.org/alpine/edge/main \

    apk add --update --no-cache \
      --repository http://dl-3.alpinelinux.org/alpine/edge/testing/ \
#        fftw-dev gcc g++ make libc6-compat \
        python \
        python-dev \
        py-pip \
        build-base \
        vips-dev \

sh -c "yarn $*"
