FROM java:8

ADD jenkins.war /jenkins.war

ENV JENKINS_HOME /var/jenkins_home
RUN mkdir -p /var/jenkins_home
VOLUME /var/jenkins_home

EXPOSE 8080

CMD java -jar /jenkins.war
