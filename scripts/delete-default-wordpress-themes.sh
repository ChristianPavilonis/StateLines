#!/usr/bin/env bash

echo "Deleting WordPress Defualt Themes"
wp theme delete twentyfifteen --allow-root
wp theme delete twentysixteen --allow-root
wp theme delete twentyseventeen --allow-root
echo "Done Deleting Themes"