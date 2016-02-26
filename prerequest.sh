#!/bin/bash

echo "Installing openstack packages..."
yum install centos-release-openstack-liberty -y && yum upgrade &&
echo -n "Reboot now?(Y/N)"
read reboot
if [ $reboot = "Y" -o $reboot = "y" ]
then
  reboot
else
  echo "pleas reboot system before continue"
fi
