FROM tomcat:9.0
COPY /var/lib/jenkins/workspace/SmilesProject-1/target/addressbook.war /usr/local/tomcat/webapps/
