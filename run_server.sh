#!/bin/bash

git clone -b $1 https://github.com/muchhalsagar88/simple-node-app.git
cd simple-node-app
#pip install -r requirements.txt
#gunicorn -w 1 -b 127.0.0.1:5000 src.app:app
npm install
node app.js
