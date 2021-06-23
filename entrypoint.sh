#!/bin/sh -l

APPLICATION_ID=$1
API_KEY=$2
FILE=$3

cd docsearch-scraper/

echo "APPLICATION_ID=${APPLICATION_ID}
API_KEY=${API_KEY}
" > .env

ls -a

echo "above were the present"

ls -a $GITHUB_WORKSPACE

pipenv shell
./docsearch run $GITHUB_WORKSPACE/config.example.json