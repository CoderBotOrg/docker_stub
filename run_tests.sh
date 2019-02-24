#!/bin/sh

cd /coderbot
export PYTHONPATH=/coderbot/stub:/coderbot/test

python3 -m unittest test/*_test.py
