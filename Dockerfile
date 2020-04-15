FROM ubuntu:latest

COPY entrypoint.sh /entrypoint.sh
COPY ${{ github.workspace }} /workspace

ENTRYPOINT ["/entrypoint.sh"]
