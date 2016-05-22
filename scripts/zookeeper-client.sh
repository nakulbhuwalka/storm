#!/usr/bin/env bash
docker run -it --entrypoint /bin/bash --link zk  jplock/zookeeper
docker run -itd --name nimbus  --link zk storm nimbus
docker run -itd --name ui -p 8080:8080  --link zk --link nimbus storm ui
docker run -itd --name s3  --link zk --link nimbus storm supervisor