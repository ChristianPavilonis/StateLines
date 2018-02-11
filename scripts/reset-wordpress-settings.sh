#!/usr/bin/env bash

SITE_DIR=$1
SITE_URL=$2
ADMIN_USER=$3
ADMIN_PASS=$4

cd $SITE_DIR

wp option set siteurl http://$SITE_URL --allow-root
wp option set home http://$SITE_URL --allow-root

wp user create $ADMIN_USER admin@example.com --user_pass=$ADMIN_PASS --role=administrator --allow-root