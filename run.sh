#docker run --rm --name tutoriais-jenkins -p 8080:8080 tutoriais-jenkins
docker run --rm --name tutoriais-jenkins -p 8080:8080 -d -p 50000:50000 -v `pwd`/jenkins_home:/var/jenkins_home  tutoriais-jenkins

