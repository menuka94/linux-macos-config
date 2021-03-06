sudo groupadd tomcat &&
sudo useradd -s /bin/false -g tomcat -d /opt/tomcat tomcat &&
cd /tmp &&
curl -O https://www-eu.apache.org/dist/tomcat/tomcat-9/v9.0.13/bin/apache-tomcat-9.0.13.tar.gz &&
sudo mkdir /opt/tomcat &&
sudo tar xzvf apache-tomcat-9*tar.gz -C /opt/tomcat --strip-components=1 &&
cd /opt/tomcat &&
sudo chgrp -R tomcat /opt/tomcat &&
sudo chmod -R g+r conf &&
sudo chmod g+x conf &&
sudo chown -R tomcat webapps/ work/ temp/ logs/
