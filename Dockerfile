FROM debian:9

RUN apt-get update -yq && apt-get install wget -y
RUN mkdir -p /opt/clams && wget https://github.com/nochowderforyou/clams/releases/download/v1.4.17/clam-1.4.17-linux64.tar.gz -O - | tar -C /opt/clams --strip-components 2 -xzf -

VOLUME ["/opt/clams/data", "/opt/clams/clams.conf"]
EXPOSE 30174

ENTRYPOINT ["/opt/clams/bin/clamd"]
CMD ["-conf=/opt/clams/clams.conf"]
