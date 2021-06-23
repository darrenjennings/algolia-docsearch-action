#!/bin/sh -l

APPLICATION_ID=$1
API_KEY=$2
FILE=$3

apt update && apt install git -y

git clone https://github.com/algolia/docsearch-scraper.git

cd docsearch-scraper/

pip install pipenv

pipenv install --system --ignore-pipfile

echo "APPLICATION_ID=${APPLICATION_ID}
API_KEY=${API_KEY}
" > .env

ls -a $GITHUB_WORKSPACE

python docsearch run $GITHUB_WORKSPACE/config.example.json