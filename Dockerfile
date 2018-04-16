FROM alpine:edge
RUN apk add --no-cache --repository http://dl-cdn.alpinelinux.org/alpine/edge/testing/ dante-server
COPY sockd.conf /etc/sockd.conf
ONBUILD ARG username
ONBUILD ARG password
ONBUILD RUN adduser -HD $username && echo $username:$password | chpasswd
ENTRYPOINT ["sockd"]
