FROM ubuntu:latest

COPY entrypoint.sh /entrypoint.sh
COPY $GITHUB_WORKSPACE /workspace

ENTRYPOINT ["/entrypoint.sh"]
