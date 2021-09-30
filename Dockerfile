FROM node:11-alpine
LABEL version="1.0.0"
LABEL repository="https://github.com/mkramb/yarn-action"
LABEL homepage="https://github.com/mkramb/yarn-action"
LABEL maintainer="Mitja Kramberger"
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
COPY "entrypoint.sh" "/entrypoint.sh"
ENTRYPOINT ["/entrypoint.sh"]
