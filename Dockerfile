#####################################################################################
#### Owner Abhishek Shah <ab.shah15@gmail.com>
#### This is Lamp Stack Docker File for ubuntu based system
#####################################################################################

# Set the base image to Ubuntu
FROM ubuntu

# File Author / Maintainer
MAINTAINER Example Abhishek

# Update the repository sources list
RUN apt-get update

################## BEGIN INSTALLATION ######################

# Install apache2 server package
RUN apt-get install -y apache2

# Install php package
RUN apt-get install -y php5

# Install mysql package
RUN apt-get install -y mysql-server

# Install phpmyadmin package
RUN apt-get install -y phpmyadmin


##################### INSTALLATION END #####################

############## Setup Start #################################

## Set Root password for Mysql
RUN mysqladmin -u root password password


############ Setup End #####################################

