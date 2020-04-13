#!/bin/sh -l

APPLICATION_ID=$1
API_KEY=$2

docker run -it -e APPLICATION_ID=$APPLICATION_ID -e API_KEY=$API_KEY -e "CONFIG=$(cat ./config.json | jq -r tostring)" algolia/docsearch-scraper
