Create Dockerfile:
```
FROM stamm/docker-dante:0.5
```

Build image with set username and password:
`docker build --build-arg username=secureuser --build-arg password=mypa$$word -t dante .`



Run docker: `docker run -d --name='socks_server' -p 8088:8088 dante`

or with docker-compose:

```
version: "3"
services:
  sockd:
    build:
      context: .
      args:
        username: secureuser
        password: mypa$$word
    ports:
     - "8088:8088"
```

`docker-compose up --build`
