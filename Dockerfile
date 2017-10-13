#
# Spark2.2 Dockerfile
#
# https://github.com/tododo/spark-docker
#

FROM hseeberger/scala-sbt:8u141-jdk_2.12.3_1.0.2

ENV SCALA_VERSION 2.12.3
ENV SBT_VERSION 1.0.2
ENV SPARK_VERSION 2.2.0
ENV HADOOP_VERSION 2.7
RUN \
	wget wget https://www.apache.org/dist/spark/spark-2.2.0/spark-2.2.0-bin-hadoop2.7.tgz -O - | tar xfz - -C /root/ && \
	echo >> /root/.bashrc && \
	echo 'export PATH=~/spark-2.2.0-bin-hadoop2.7/bin:$PATH' >> /root/.bashrc
