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

# Install vim package
RUN apt-get install -y vim

##################### INSTALLATION END #####################

############## Setup Start #################################


COPY docker-entrypoint.sh /entrypoint.sh

RUN chmod 777 /entrypoint.sh 

# ENTRYPOINT resets CMD now
ENTRYPOINT ["/entrypoint.sh"]

CMD ["/bin/bash"]
#CMD ["/bin/login"]



############ Setup End #####################################
