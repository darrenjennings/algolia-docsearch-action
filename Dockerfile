FROM algolia/docsearch-scraper

RUN apt update && apt install jq -y

WORKDIR /algolia-docsearch-action

COPY config.example.json /config.example.json

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
