FROM debian:9

RUN apt-get update -yq && apt-get install wget -y
RUN mkdir -p /opt/clam && wget https://github.com/nochowderforyou/clams/releases/download/v1.4.17/clam-1.4.17-linux64.tar.gz -O - | tar -C /opt/clam --strip-components 2 -xzf -

VOLUME ["/opt/clam/data", "/opt/clam/clam.conf"]
EXPOSE 30174

ENTRYPOINT ["/opt/clam/bin/clamd"]
CMD ["-conf=/opt/clam/clam.conf"]
