FROM node:11-alpine
LABEL version="1.0.0"
LABEL repository="https://github.com/mkramb/yarn-action"
LABEL homepage="https://github.com/mkramb/yarn-action"
LABEL maintainer="Mitja Kramberger"

COPY "entrypoint.sh" "/entrypoint.sh"
ENTRYPOINT ["/entrypoint.sh"]
