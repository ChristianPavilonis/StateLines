#!/usr/bin/env bash

SITE_DIR=$1
PLUGINS=$2

cd $SITE_DIR

echo "Installing Plugins"
wp plugin delete akismet --allow-root
wp plugin delete hello --allow-root
for entry in "${PLUGINS[@]}"
do
wp plugin install $entry --activate --allow-root
done
echo "Plugins installed"