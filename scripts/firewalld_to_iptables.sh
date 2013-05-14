#!/bin/bash
systemctl disable firewalld.service
systemctl stop firewalld.service
systemctl enable iptables.service
systemctl enable ip6tables.service
systemctl start iptables.service
systemctl start ip6tables.service
yum -y install iptables-services iptables-utils
