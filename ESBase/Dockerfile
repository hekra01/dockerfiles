FROM ubuntu:base

ADD elasticsearch-6.2.4.deb .
ADD kibana-6.2.4-amd64.deb .
RUN dpkg -i kibana-6.2.4-amd64.deb && dpkg -i elasticsearch-6.2.4.deb && \
	update-rc.d elasticsearch defaults 95 10 && \
	update-rc.d kibana defaults 95 10

ENTRYPOINT service elasticsearch restart && service kibana restart && bash
#CMD service elasticsearch start && service kibana start
