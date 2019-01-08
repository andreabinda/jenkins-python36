# jenkins-python36
Dockerfile for jenkins + python 3.6 container

## Quickstart:
```
docker run -d -v jenkins_home:/var/jenkins_home --restart always -p 50000:50000 -p 8080:8080 andreabinda/jenkins_python36
```

## Gotchas
* In order to use python 3.6 you must call the binary ```python3.6```, otherwise the default python2.7 is used
* Make sure that the volume you map for jenkins_home is accessible for read and write by the jenkins user (uid 1000).
If that's not the case you can pass the parameter -u <user> to the docker run command

## Jenkins Configurations
In order to configure Jenkins, please refer to the official documentation:
* https://hub.docker.com/_/jenkins
* https://jenkins.io/

## F.A.Q.
* Can't I just 'apt-get install python3' in my pipeline if required?
    - As of today, with the underliying Debian image you can only install python 3.5 via apt-get
* Fine, then can't I just compile python 3.6 if required?
    - Of course you can, it will just take forever
* And why Pyhton 3.6 instead of, say, 3.7? Uh?! Uh?!
    - Python 3.6 is supported on Aws Lambda (which is the main reason this image exists) while 3.7 is not (as of today)



