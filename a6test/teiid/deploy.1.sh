#!/usr/bin/env bash

set -e
set -x

# source config.sh

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

git pull

docker build -f 9.1.Dockerfile -t teiid:wzh ${DIR}/

docker image prune -f
