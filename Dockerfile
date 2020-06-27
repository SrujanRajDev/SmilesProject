
FROM  tomcat:7.0
MAINTAINER  Srujan


#Copy addressbook.war file into tomcat
#RUN wget http://13.127.64.171:8081/nexus/content/repositories/myapp-releases/com/edurekademo/tutorial/addressbook/1.0/addressbook-1.0.war 

#RUN wget ~/var/lib/jenkins/workspace/pipeline_job1/target/addressbook.war
#RUN cp addressbook.war /usr/local/tomcat/webapps/
COPY ~/var/lib/jenkins/workspace/pipeline_job1/target/addressbook.war /usr/local/tomcat/webapps/
