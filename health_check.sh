#!/bin/bash

##################
# Title : Health Check for host
# Date :
# Version : 
# Author :
##################


# Setup color constants
RED=$(tput setaf 1)
GREEN=$(tput setaf 2)
YELLOW=$(tput setaf 3)
BLUE=$(tput setaf 153)
BRIGHT=$(tput bold)
UNDERLINE=$(tput smul)
NORMAL=$(tput sgr0)


# Check for kernel-dev packages
printf "%0s\n" "${BRIGHT}${UNDERLINE} Kernel Package.${NORMAL}"

package=`rpm -qa | grep kernel | egrep 'devel|headers' | wc -l`

if [ $package != 2 ]
  then
	printf "%0s\n" "${RED} Kernel packages are not installed.${NORMAL}"
else
	printf "%0s\n" "${GREEN} Kernel packages are installed as Expected.${NORMAL}"
fi

