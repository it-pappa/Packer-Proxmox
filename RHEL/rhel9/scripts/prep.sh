#!/bin/bash
 
set -e
set -x

### Create a clean script. ###
echo "Starting Cleanup..."

### Cleans the audit logs. ###
echo '> Cleaning the audit logs ...'
if [ -f /var/log/audit/audit.log ]; then
cat /dev/null > /var/log/audit/audit.log
fi
if [ -f /var/log/wtmp ]; then
cat /dev/null > /var/log/wtmp
fi
if [ -f /var/log/lastlog ]; then
cat /dev/null > /var/log/lastlog
fi

### Cleans the persistent udev rules. ###
echo '> Cleaning persistent udev rules ...'
if [ -f /etc/udev/rules.d/70-persistent-net.rules ]; then
rm /etc/udev/rules.d/70-persistent-net.rules
fi

### Clean the /tmp directories. ###
echo '> Cleaning the /tmp directories ...'
rm -rf /tmp/*
rm -rf /var/tmp/*
rm -rf /var/log/rhsm/*
rm -rf /var/cache/dnf/*

### Sets the hostname to localhost. ###
echo '> Setting the hostname to localhost ...'
cat /dev/null > /etc/hostname
hostnamectl set-hostname localhost

### Clean the dnf cache. ###
echo '> Cleaning the  cache ...'
dnf clean all

### Clean the machine-id. ###
echo '> Cleaning the machine-id ...'
truncate -s 0 /etc/machine-id
ln -s /etc/machine-id 

### Clean the shell history. ###
echo '> Cleaning the shell history ...'
unset HISTFILE
history -cw
echo > ~/.bash_history
rm -fr /root/.bash_history
