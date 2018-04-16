FROM alpine:edge
RUN apk add --no-cache --repository http://dl-cdn.alpinelinux.org/alpine/edge/testing/ dante-server
COPY sockd.conf /etc/sockd.conf
COPY run.sh /opt/src/run.sh
RUN chmod 755 /opt/src/run.sh
ENTRYPOINT ["/opt/src/run.sh"]
