#!/bin/bash

echo -e "\033[;31mInstalling openstack packages...\033[0m"
if [ `yum list installed|grep centos-release-openstack-liberty|wc -l` -eq 0 ]
then
  echo -e "\033[;31mALREADY INSTALLED\033[0m"
  yum install centos-release-openstack-liberty -y
fi

if [ `yum upgrade | grep kernel | wc -l` != "0" ]
then
  echo -e "\033[;31mKERNEL UPGRADED!REBOOT TO ACTIVE NEW KERNEL\033[0m"
  echo -n "Reboot now?(Y/N)"
  read reboot
  if [ $reboot = "Y" -o $reboot = "y" ]
  then
    reboot
  else
    echo "pleas reboot system before continue"
  fi
fi 
  
echo "Openstack packages install success"
