Put SOCKS_USERNAME and SOCKS_PASSWORD into file socks.env.

Run docker: `docker run -d --env-file=socks.env --name='socks_server' -p 8088:8088 stamm/docker-dante:1.0`

or with docker-compose:

```
version: "3"
services:
  sockd:
    image: stamm/docker-dante:1.0
    env_file: socks.env
    ports:
     - "8088:8088"
    restart: always
```

`docker-compose up`
