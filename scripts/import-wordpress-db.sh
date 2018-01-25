#!/usr/bin/env bash

SITE_DIR=$1
DB=$2
SQL_ARCHIVE=$3
ADMIN_USER=$4
ADMIN_PASS=$5

cd $SITE_DIR

echo "Importing database"
wp db import $SQL_ARCHIVE/$DB.sql --allow-root
echo "Adding Admin"
wp user create $ADMIN_USER admin@example.com --role=administrator --user_pass=$ADMIN_PASS --allow-root
echo "Import database finished"