#!/bin/bash

echo "========================================================="
echo "Hello Welcome to Post Install Script Of Docker"
echo "========================================================="

echo ""
echo "+++++++++ Starting the services ++++++++++++++"
service apache2 start
echo ""
service mysql start

echo -n "Please give password for mysql Root user:"
read pass

echo "Please remember your given password"
mysqladmin -u root password $pass
exec "$@"
