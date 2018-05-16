FROM ubuntu:base

ADD elasticsearch-6.2.4.deb .
ADD kibana-6.2.4-amd64.deb .
ADD node-elasticsearch-tutorial ./node-elasticsearch-tutorial

RUN dpkg -i kibana-6.2.4-amd64.deb && dpkg -i elasticsearch-6.2.4.deb && \
	update-rc.d elasticsearch defaults 95 10 && \
	update-rc.d kibana defaults 95 10
RUN npm config set strict-ssl false && npm install elasticsearch --save
RUN pwd && ls -l
RUN cd node-elasticsearch-tutorial && npm install

ENTRYPOINT service elasticsearch restart && service kibana restart && bash
#CMD service elasticsearch start && service kibana start
