FROM centos:7
MAINTAINER RedMothball <zyfdegg@gmail>

USER root

COPY docker-install.sh /tmp/docker-install.sh

RUN bash /tmp/docker-install.sh

RUN docker run -d alpine tail -f /etc/hosts
