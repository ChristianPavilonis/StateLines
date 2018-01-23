#!/usr/bin/env bash

SITE_DIR=$1
THEME_URL=$2
THEME_NAME=$3
THEME_RENAME=$4

echo "Starting theme instilation"
if [ ! -d $SITE_DIR/wp-content/themes/$THEME_NAME ] || [ ! -d $SITE_DIR/wp-content/themes/$THEME_RENAME ]; then
  cd $SITE_DIR
  wp theme install $THEME_URL --allow-root
  if [ ! -z "$THEME_RENAME" ]; then
    # rename theme
    mv wp-content/themes/$THEME_NAME wp-content/themes/$THEME_RENAME
    wp theme activate $THEME_RENAME --allow-root
  else
    wp theme activate $THEME_NAME --allow-root
  fi
else
  echo "Skipping theme installation"
fi