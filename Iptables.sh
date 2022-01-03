!#/bin/bash/ 

#       this si the original script
#sudo iptables -A INPUT -p tcp --dport ssh -s 192.168.50.161 -m state --state NEW,ESTABLISHED -j ACCEPT
#sudo iptables -A OUTPUT -p tcp --sport 22 -d 192.168.50.161 -m state --state ESTABLISHED -j ACCEPT
#sudo iptables -A INPUT -p tcp -m tcp --dport 53 -j DROP
#sudo /sbin/iptables-save

#AWS servers
  #Block ICMP traffic 
iptables -A OUTPUT -p icmp -o eth0 -j ACCEPT          
iptables -A INPUT -p icmp --icmp-type echo-reply -s 0/0 -i eth0 -j ACCEPT     
iptables -A INPUT -p icmp --icmp-type destination-unreachable -s 0/0 -i eth0 -j ACCEPT  
iptables -A INPUT -p icmp --icmp-type time-exceeded -s 0/0 -i eth0 -j ACCEPT       
iptables -A INPUT -p icmp -i eth0 -j DROP   


#Incoming Rules
sudo iptables -A INPUT -p tcp -s 192.168.50.161 --dport 22 -j ACCEPT
sudo iptables -A INPUT -p tcp -s 192.168.50.102 --dport 22 -j ACCEPT
sudo iptables -A INPUT -p tcp -s 192.168.50.6   --dport 22 -j ACCEPT
sudo iptables -A INPUT -p tcp -s 192.168.50.7   --dport 22 -j ACCEPT
sudo iptables -A INPUT -p tcp -s 0.0.0.0/0      --dport 22 -j DROP
#sudo iptables -A INPUT -p tcp -s 0.0.0.0/0 --dport 53 -j DROP
#sudo iptables -A INPUT -p tcp --dport 23 - j DROP

#Outgoing rules
#sudo iptables -A OUTPUT -s 192.168.50.6 --sport 22 -j ACCEPT
#sudo iptables -A OUTPUT -s 192.168.50.6 --sport 143 -j ACCEPT
#sudo iptables -A OUTPUT -S 0.0.0.0/0 --sport 143 -j DROP
sudo /sbin/iptables-save

echo 'Script Complete'
echo '          *'
echo '        ****'
echo '      *********'
echo '    *************'
