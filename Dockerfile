FROM python:3.6

RUN apt update && apt install jq git -y

WORKDIR /action

RUN git clone https://github.com/algolia/docsearch-scraper.git

WORKDIR /action/docsearch-scraper

RUN pip install pipenv

RUN pipenv install --system --ignore-pipfile

WORKDIR /action

COPY entrypoint.sh /action/entrypoint.sh

ENTRYPOINT ["/action/entrypoint.sh"]
