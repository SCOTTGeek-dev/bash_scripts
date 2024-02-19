#!/bin/bash

cpu_usage=$(ps -aux | tr -s " " | cut -d ' ' -f 3 | sort -nr | head -n 1)
mem_usage=$(free -h| grep "mem:" | tr -s " " | cut -d " " -f 3)
echo "the highest process is using $cpu_usage % in cpu"
echo "you are using $((mem_usage)) in ram"
