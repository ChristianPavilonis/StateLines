#!/usr/bin/env bash

SITE_DOMAIN=$1
SITE_DIR=$2
WP_VERSION=$3
WP_USE_DB=$4
WP_TABLE_PREFIX=$5
WP_TITLE=$6
WP_LOCALE=$7
WP_ADMIN_USER=$8
WP_ADMIN_PASS=$9

#install wordpress
if [ "$(ls $SITE_DIR)" ]; then
    echo "WordPress already installed on $SITE_DOMAIN"
    exit 0
else
    echo "Intalling WordPress on $SITE_DOMAIN"
    cd $SITE_DIR
    wp core download --version=$WP_VERSION --allow-root
    wp core config --dbname=$WP_USE_DB --dbuser=homestead --dbpass=secret --dbprefix=$WP_TABLE_PREFIX --allow-root
    wp core install --url=$SITE_DOMAIN --title="$WP_TITLE" --admin_user=$WP_ADMIN_USER --admin_password=$WP_ADMIN_PASS --admin_email="admin@example.com" --skip-email --allow-root
    echo "WordPress intallation on $SITE_DOMAIN finished."
fi