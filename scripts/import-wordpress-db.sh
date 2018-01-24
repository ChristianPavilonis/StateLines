#!/usr/bin/env bash

SITE_DIR=$1
DB=$2
SQL_ARCHIVE=$3

cd $SITE_DIR

echo "Importing database"
wp db import $SQL_ARCHIVE/$DB.sql --allow-root
echo "Import database finished"