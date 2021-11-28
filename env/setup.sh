#!/bin/sh
cd ..
rm -rf ./venv
pip install virtualenv
virtualenv venv
source venv/bin/activate
pip install -r requirements.txt
