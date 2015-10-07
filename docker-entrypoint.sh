#!/bin/bash

step1()
{
	echo -n "Please give password for mysql Root user:"
	read pass

	echo "Please remember your given password"
	mysqladmin -u root password $pass

}


#################### Starting of Script ##########################################
clear
echo "========================================================="
echo "Hello Welcome to Post Install Script Of Docker"
echo "========================================================="

echo ""
echo ""
echo "------------- Starting the services ------------------"
service apache2 start
service mysql start
echo "-------- End The Starting Services Step ---------------"
echo ""


### Step 1 : Execution
echo "------------- Step 1 ------------------"
while true; do
    read -p "Do you want to Set Mysql Password? [y/n]:" ans1
    echo ""
    case $ans1 in
        [Yy] ) step1; break;;
        [Nn] ) echo "Skiping Step to set Mysql Password "; break;;
        * ) echo "Please answer y or n.";;
    esac
done
echo "------------- End Step 1 ------------------"

echo ""

### Step 2 : Execution
echo "------------- Step 2 ------------------"
exec "$@"
