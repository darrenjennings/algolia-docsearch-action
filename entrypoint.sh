#!/bin/sh -l

APPLICATION_ID=$1
API_KEY=$2
FILE=$3

apt update
apt install jq -y

# install docker
apt install apt-transport-https ca-certificates curl software-properties-common -y
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -
add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"
apt update
apt-cache policy docker-ce
apt install docker-ce -y

ls -la $GITHUB_WORKSPACE
cat $GITHUB_WORKSPACE/$FILE | jq -r tostring
docker run -e APPLICATION_ID=$APPLICATION_ID -e API_KEY=$API_KEY -e "CONFIG=$(cat $GITHUB_WORKSPACE/$FILE | jq -r tostring)" algolia/docsearch-scraper
