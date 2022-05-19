sudo yum -y update
sudo wget --no-cookies --no-check-certificate --header "Cookie:oraclelicense=accept-securebackup-cookie" "http://download.oracle.com/otn-pub/java/jdk/8u131-b11/d54c1d3a095b4ff2b6607d096fa80163/jdk-8u131-linux-x64.rpm"
sudo yum -y localinstall jdk-8u131-linux-x64.rpm
sudo mkdir /opt/streama
sudo mv streama-1.1.war /opt/streama/streama.war
sudo java -jar /opt/streama/streama.war
mkdir /opt/streama/media
chmod 664 /opt/streama/media
cp /home/vagrant/streama.service /etc/systemd/system/streama.service
systemctl start streama
systemctl enable streama