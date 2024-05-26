#!/bin/bash

# Output detailed system information

echo "System Information:"

echo "Hostname:"
hostname

echo "Uptime:"
uptime

echo "Memory Usage:"
vm_stat

echo "Disk Usage:"
df -h

echo "CPU Information:"
sysctl -n machdep.cpu.brand_string

echo "Network Information:"
ifconfig
