# Kopia Hub
This simple webpage lets you switch between multiple [Kopia](https://github.com/kopia/kopia) instances in a iframe. The project aims to be a solution for the Kopia docker image restriction to only support a single repository.

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

## Screenshots
<img width="1943" height="984" alt="Screenshot" src="https://github.com/user-attachments/assets/81599ae2-eb71-483c-bd17-f7c0fd25985d" />
