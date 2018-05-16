FROM ubuntu:14.04

RUN apt-get update && apt-get install -y firefox curl wget xvfb

# Replace 1000 with your user / group id
RUN wget -qO - https://artifacts.elastic.co/GPG-KEY-elasticsearch | sudo apt-key add - && \
	wget -qO - https://artifacts.elastic.co/GPG-KEY-elasticsearch | sudo apt-key add - &&\
	apt-get install -y apt-transport-https &&  \
	echo "deb https://artifacts.elastic.co/packages/6.x/apt stable main" | sudo tee -a /etc/apt/sources.list.d/elastic-6.x.list && \
	apt-get update && apt-get install -y elasticsearch kibana && \
	sudo update-rc.d elasticsearch defaults 95 10

RUN export uid=1000 gid=1000 && \
    mkdir -p /home/developer && \
    echo "developer:x:${uid}:${gid}:Developer,,,:/home/developer:/bin/bash" >> /etc/passwd && \
    echo "developer:x:${uid}:" >> /etc/group && \
    echo "developer ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/developer && \
    chmod 0440 /etc/sudoers.d/developer && \
    chown ${uid}:${gid} -R /home/developer

USER developer
ENV HOME /home/developer
