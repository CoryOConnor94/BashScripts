#!/bin/bash 

if [ '$1' == "" ]
then 
  echo "You forgot an IP"
  echo "Syntax Example: ./ipsweep 192.168.1"
else
  for ip in {1..254}; do
  ping -c 1 $1.$ip | grep "64 bytes" | cut -d " " -f 4 | tr -d ":" &
done
fi
