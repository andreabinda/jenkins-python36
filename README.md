# jenkins-python36
Dockerfile for jenkins + python 3.6 container

## Quickstart:
```
docker run -d -v jenkins_home:/var/jenkins_home --restart always -p 50000:50000 -p 8080:8080 andreabinda/jenkins_python36
```
