#!/bin/sh -l

APPLICATION_ID=$1
API_KEY=$2
FILE=$3

git clone https://github.com/algolia/docsearch-scraper.git

cd docsearch-scraper/

pip install --no-cache-dir --trusted-host pypi.python.org pipenv

pipenv install --system --deploy --ignore-pipfile

echo "APPLICATION_ID=${APPLICATION_ID}
API_KEY=${API_KEY}
" > .env

python docsearch run $GITHUB_WORKSPACE/$FILE