FROM node:14.1.0-stretch

ADD cicd/docker/entrypoint.sh /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]
