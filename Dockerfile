FROM algolia/docsearch-scraper

COPY entrypoint.sh /entrypoint.sh
COPY $3 /config.json

ENTRYPOINT ["/entrypoint.sh"]
