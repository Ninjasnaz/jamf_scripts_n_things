#!/bin/bash

#This script can be modified to include whatever url/site you'd like to block by writing it to the hosts file
#It accomplishes the blocking of said sites why telling it that the websites resides at 127.0.0.1, know as the loopback address
#


echo "127.0.0.1 www.facebook.com" >> /etc/hosts