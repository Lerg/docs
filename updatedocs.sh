#!/bin/sh
cd /ext/www/docs.spiralcodestudio.com/
git pull
mkdocs build --clean
