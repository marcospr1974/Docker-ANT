#!/bin/bash

cd /opt/docker/qvljoo00/var/www/localhost/htdocs
git clone https://github.com/joomla/joomla-cms.git
mv joomla-cms/* .
rm -rf joomla-cms
