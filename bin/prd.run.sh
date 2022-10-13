#!/bin/bash

# Get parent directory of this file
parent_path=$( cd "$(dirname "${BASH_SOURCE[0]}")" ; pwd -P )

# Get to root directory, regardless of where this script is run from
cd "$parent_path"
cd ..

cp conf/docker/docker-compose.prd.yml docker-compose.yml &&
cp conf/docker/compose-run.prd.sh compose-run.sh &&

# Run dev environment
docker-compose up --build