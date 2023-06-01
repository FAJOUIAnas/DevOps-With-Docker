#!/bin/sh
git clone https://github.com/$1.git ./project
cd ./project
docker build . -t $2
docker push $2