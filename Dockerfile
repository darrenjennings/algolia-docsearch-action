FROM ubuntu:latest

COPY entrypoint.sh /entrypoint.sh
COPY . /workspace

ENTRYPOINT ["/entrypoint.sh"]
