#!/bin/bash

echo "System Health Report"
echo "---------------------"
echo "Hostname: $(hostname)"
echo "Uptime: $(uptime)"
echo "CPU Usage: $(top -bn1 | grep "Cpu(s)" | sed "s/.*, *\([0-9.]*\)%* id.*/\1/" | awk '{print 100 - $1"%"}')"
echo "Memory Usage: $(free -m | awk '/Mem/{printf "Total: %dMB, Used: %dMB, Free: %dMB\n", $2, $3, $4}')"
echo "Disk Usage: $(df -h / | awk '/\//{print "Total: " $2 ", Used: " $3 ", Free: " $4}')"
