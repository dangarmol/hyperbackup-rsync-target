#!/usr/bin/env bash

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

cd $SCRIPT_DIR/..

version=$(cat VERSION.txt | tr -d "[:space:]")

docker build -t hyperbackup-rsync-target:$version .
