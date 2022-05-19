service NetworkManager stop
chkconfig NetworkManager off
sudo systemctl start firewalld
sudo systemctl enable firewalld
sudo firewall-cmd --set-default-zone=dmz
sudo firewall-cmd --zone=dmz --remove-interface=eth2 --permanent
sudo firewall-cmd --zone=dmz --add-interface=eth1 –-permanent
firewall-cmd --zone=dmz --add-service=http --permanent
firewall-cmd --zone=dmz --add-service=https --permanent
firewall-cmd --zone=internal --add-interface=eth2 --permanent
sudo firewall-cmd --zone=dmz --add-masquerade
sudo firewall-cmd --zone=internal --add-masquerade
sudo firewall-cmd --zone=dmz --add-forward-port=port=8080:proto=tcp:toport=8080:toaddr=192.168.100.2 --permanent
sudo firewall-cmd --zone=dmz --permanent --add-port=8080/tcp --add-port=8080/udp
sudo firewall-cmd --zone=dmz --add-service=steam-streaming --permanent
sudo firewall-cmd --zone=dmz --add-service=http --permanent
sudo firewall-cmd --zone=dmz --add-service=https --permanent
sudo firewall-cmd --reload

