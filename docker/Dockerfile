FROM java:6

RUN curl http://www.mirrorservice.org/sites/ftp.apache.org/storm/apache-storm-0.10.1/apache-storm-0.10.1.tar.gz | tar -xz -C /opt \
	&& apt-get update && apt-get install daemontools

COPY storm.yaml /opt/apache-storm-0.10.1/conf

WORKDIR /opt/apache-storm-0.10.1/bin

EXPOSE 8080

ENTRYPOINT ["/opt/apache-storm-0.10.1/bin/storm"]
CMD ["supervisor"]