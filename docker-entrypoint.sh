#!/bin/bash

step1()
{
	echo -n "Please give password for mysql Root user:"
	read pass

	echo "Please remember your given password"
	mysqladmin -u root password $pass

}


step2()
{
	echo -n "Username:"
	read username
	mkdir /home/$username
	useradd -d /home/$username $username
	passwd $username

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
echo "------------- Step 1: Set Mysql Password --------------"
while true; do
    read -p "Do you want to Set Mysql Password? [y/n]:" ans1
    echo ""
    case $ans1 in
        [Yy] ) step1; break;;
        [Nn] ) echo "Skiping Step to set Mysql Password "; break;;
        * ) echo "Please answer y or n.";;
    esac
done
echo "------------- End Step 1 ------------------------------"

echo ""

### Step 2 : Execution
echo "------------- Step 2: Add New System Login User -------"
echo ""
step2
echo ""
echo "------------- End Step 2 ------------------------------"


rm -rf /entrypoint.sh
exec "$@"
