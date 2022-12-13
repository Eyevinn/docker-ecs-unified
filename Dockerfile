FROM unifiedstreaming/origin:1.11.20

RUN apk update && apk add --update \
  curl \
  jq

RUN echo 'export $(strings /proc/1/environ | grep AWS_CONTAINER_CREDENTIALS_RELATIVE_URI)' >> /root/.profile

ADD ./ecs-entrypoint.sh /usr/local/bin/

ENTRYPOINT [ "/usr/local/bin/ecs-entrypoint.sh" ]

CMD [ "-D", "FOREGROUND" ]
