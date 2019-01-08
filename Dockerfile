FROM jenkins/jenkins:lts
LABEL description="Jenkins + python3 and utilities"
USER root
RUN  apt-get update && \ 
apt-get install -y make build-essential libssl-dev zlib1g-dev libbz2-dev libreadline-dev \ 
libsqlite3-dev wget curl llvm libncurses5-dev  libncursesw5-dev xz-utils tk-dev \ 
zip && \
wget https://www.python.org/ftp/python/3.6.4/Python-3.6.4.tgz && \
tar xvf Python-3.6.4.tgz && cd Python-3.6.4 && \
./configure --enable-optimizations && \
make -j8 && \
make altinstall
USER jenkins
VOLUME ["/var/jenkins_home"]
EXPOSE 50000/tcp
EXPOSE 8080/tcp

ENTRYPOINT  [ "/sbin/tini", "--", "/usr/local/bin/jenkins.sh" ]


