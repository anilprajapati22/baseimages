#!/bin/sh

python /opt/test_chromedriver.py || exit 1

python odbc-test.py || exit 1