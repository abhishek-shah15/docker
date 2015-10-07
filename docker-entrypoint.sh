#!/bin/bash

echo "========================================================="
echo "Hello Welcome to Post Install Script Of Docker"
echo "========================================================="

echo ""
echo "+++++++++ Starting the services ++++++++++++++"
service apache2 start
echo ""
service mysql start
mysqladmin -u root password password


exec "$@"
