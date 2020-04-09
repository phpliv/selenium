#!/bin/bash
echo "Starting selenium-server server." 
export DISPLAY=:0
xvfb-run java -jar /root/selenium/selenium-server-standalone-3.141.59.jar -port 14683 &>/dev/null &
PID=$! 
echo $PID > /var/run/selenium-server.pid 
echo $"selenium-server server startup $PID."
exit 0
