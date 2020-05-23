!#/bin/bash 

ifconfig -a >> /home/samsepoli/Documents/Maintainance/logs/status.txt
dmesg >> /home/samsepoli/Documents/Maintainance/logs/status.txt
lshw >> /home/samsepoli/Documents/Maintainance/logs/status.txt
ps ax >> /home/samsepoli/Documents/Maintainance/logs/status.txt
sudo iptables -S >> /home/samsepoli/Documents/Maintainance/logs/status.txt


