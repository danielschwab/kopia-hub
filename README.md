# Kopia Hub
This simple webpage lets you switch between multiple [Kopia](https://github.com/kopia/kopia) instances. The project aims to be a simple solution for the Kopia docker image restriction to only support a single repository.

## Usage
`compose.yml` :
~~~
services:
    proxy:
        image: ghcr.io/danielschwab/kopia-hub:latest
        container_name: proxy
        restart: unless-stopped
        ports:
            - "50000:80"
        environment:
          INSTANCE_URLS: '[{"name":"Kopia Default", "url":"http://localhost:51515"},{"name":"Kopia Remote Data Pool", "url":"http://localhost:51516"}]'
~~~

The `INSTANCE_URLS` environmnt variable is an array of hashes with `name` and `url` attributes which define the selectable instances.