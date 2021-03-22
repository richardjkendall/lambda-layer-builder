#!/bin/sh

mkdir -p $HOME/build
git clone $REPO $HOME/build
cd $HOME/build
pip3 --version
pip3 install --target=/packages/python/lib/python3.7/site-packages -r requirements.txt
cp -R /packages/python /output
