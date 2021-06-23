#!/bin/sh -l

APPLICATION_ID=$1
API_KEY=$2
FILE=$3

echo "\n the dirs are \n"

ls -a

cd docsearch-scraper/

echo "APPLICATION_ID=${APPLICATION_ID}
API_KEY=${API_KEY}
" > .env

ls -a $GITHUB_WORKSPACE

python docsearch run $GITHUB_WORKSPACE/config.example.json