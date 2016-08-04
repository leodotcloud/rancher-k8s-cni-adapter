FROM debian:jessie
MAINTAINER leodotcloud@gmail.com

RUN mkdir -p /opt/cni/bin /opt/rancher/cni && \
    apt-get update && \
    apt-get install -y vim wget curl && \
    cd /tmp && wget https://get.docker.com/builds/Linux/x86_64/docker-1.10.0.tgz && \
    tar xvfz docker-1.10.0.tgz && mv usr/local/bin/docker /opt/cni/bin/docker

ADD rancher-cni-wrapper.conf /etc/net.d/cni/rancher-cni-wrapper.conf
ADD rancher-cni-wrapper /opt/cni/bin/rancher-cni-wrapper

VOLUME /opt/cni/bin
VOLUME /opt/rancher/cni
VOLUME /etc/net.d/cni

ENTRYPOINT ["sleep", "infinity"]
