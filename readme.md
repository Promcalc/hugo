# Run container

docker run -it victorkozmin/hugo bash

docker run -it --volume ./src:/src --publish 1313:1313 victorkozmin/hugo bash

Container create start point for hugo site:

```
cd /src
hugo new site quickstart
git init
git submodule add https://github.com/theNewDynamic/gohugo-theme-ananke.git themes/ananke
echo "theme = 'ananke'" >> hugo.toml
```

docker-compose.yml can be like  this:

```
version: '3'
services:
  hugo:
    image: victorkozmin/hugo:latest
    volumes:
      - ./src:/src
    ports:
      - "1313:1313"
```
