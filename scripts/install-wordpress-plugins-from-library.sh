#!/usr/bin/env bash

SITE_DIR=$1
PLUGINS=$2
PLUGINS_ARCHIVE=$3

cd $SITE_DIR

echo "Installing plugins from archive"
for entry in "${PLUGINS[@]}"
do
wp plugin install $PLUGINS_ARCHIVE/$entry.zip --activate --allow-root
done
echo "Plugins installed"