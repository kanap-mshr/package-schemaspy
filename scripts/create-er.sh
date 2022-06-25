#!/bin/bash

function before() {
	readonly execDir=`pwd`
	readonly scriptDir=$(cd $(dirname $0); pwd)
	cd $scriptDir
}

function after() {
	cd $execDir
}

function setting() {
	. ./.env
}

function main() {
  docker run \
    -v "$PWD/er:/output" \
    --net="host" schemaspy/schemaspy:latest \
    -t mysql \
    -host ${RDS_HOST}:${RDS_PORT} \
    -db ${RDS_DATABASE_NAME} \
    -u ${RDS_ROOT_USER} \
    -p ${RDS_ROOT_PASSWORD} \
    -connprops useSSL\\=false -s ${RDS_DATABASE_NAME}

  # open -a '/Applications/Google Chrome.app' ./er/index.html
}

before
setting
main
after

