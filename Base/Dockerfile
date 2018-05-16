FROM ubuntu:14.04-java8

# Replace 1000 with your user / group id
RUN apt-get update && apt-get install -y curl wget npm xvfb firefox apt-transport-https git nodejs nodejs-legacy

RUN wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
RUN echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
RUN apt-get update && apt-get install sublime-text
