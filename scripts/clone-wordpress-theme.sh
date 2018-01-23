#!/usr/bin/env bash

SITE_DIR=$1
THEME_REPO=$2
THEME_NAME=$3

cd $SITE_DIR/wp-content/themes/

if [ ! -d $SITE_DIR/wp-content/themes/$THEME_NAME ]; then
    echo "Cloning theme from repo"
    git clone $THEME_REPO $THEME_NAME
else
    echo "Skipping Theme Clone"
fi