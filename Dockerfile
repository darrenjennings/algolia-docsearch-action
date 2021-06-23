FROM python:3.6

RUN git clone https://github.com/algolia/docsearch-scraper.git

WORKDIR /docsearch-scraper

RUN pip install pipenv

RUN pipenv install --system --ignore-pipfile

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
