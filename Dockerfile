FROM alpine

RUN sed -i -e "s/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g" /etc/apk/repositories \
  && apk add --no-cache \
    openssh \
    git \
    zsh \
    vim

WORKDIR /src

COPY docker-entrypoint.sh /docker-entrypoint.sh
ENTRYPOINT ["/bin/zsh", "/docker-entrypoint.sh"]

