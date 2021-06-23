#!/bin/sh -l

APPLICATION_ID=$1
API_KEY=$2
FILE=$3

# build from the main source repository
git clone https://github.com/algolia/docsearch-scraper.git

cd docsearch-scraper/

# install pipenv without cache
pip install --no-cache-dir --trusted-host pypi.python.org pipenv

# install packages without virtualenv
pipenv install --system --deploy --ignore-pipfile

# create the .env file for docsearch
echo "APPLICATION_ID=${APPLICATION_ID}
API_KEY=${API_KEY}
" > .env

# run algolia docsearch
python docsearch run $GITHUB_WORKSPACE/$FILE

echo "🚀 Successfully indexed and uploaded the results to Algolia"