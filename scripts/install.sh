#!/bin/bash

BASEDIR=`basedir $0`
pushd $BASEDIR
python3 -m venv env
source env/bin/activate
wget https://download.pytorch.org/whl/cpu/torch-0.4.0-cp36-cp36m-linux_x86_64.whl
pip install torch-0.4.0-cp36-cp36m-linux_x86_64.whl
rm torch-0.4.0-cp36-cp36m-linux_x86_64.whl
pip install -r requirements.txt
popd