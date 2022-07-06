#!/bin/bash

function before() {
	readonly execDir=`pwd`
	readonly scriptDir=$(cd $(dirname $0); pwd)
	cd $scriptDir
}

function after() {
	cd $execDir
}

function main() {
  rm -rf ./output

  java \
    -jar ./schemaspy-6.1.1-SNAPSHOT.jar \
    -configFile ./schemaspy.properties \
    -dp ./mysql-connector-java-8.0.19.jar \
    -vizjs \
    -o ./output/

  echo "---------------------------------------------"
  echo "ER図をchromeで起動するコマンドは以下"
  echo ""
  echo "open -a '/Applications/Google Chrome.app' ./output/index.html"
}

before
main
after
