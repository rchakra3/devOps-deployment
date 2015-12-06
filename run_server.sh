#!/bin/bash

git clone -b $1 https://github.com/rchakra3/simple-flask-app.git
cd simple-flask-app
pip install -r requirements.txt
#gunicorn -w 1 -b 127.0.0.1:5000 src.app:app
python src/app.py
