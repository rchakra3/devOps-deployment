#!/bin/bash
docker stop flask-app
docker rm flask-app
docker run -it -d --name flask-app -p 49200:5000 python-base sh scripts/run_server.sh

