FROM registry.dtonic.io/spark-standalone-3.0.2-hadoop3.2:latest

WORKDIR /opt

# Pyspark python 설정 
ENV PYSPARK_PYTHON=/opt/conda/bin/python

# Spark 경로 셋팅
ENV SPARK_HOME=/opt/spark

# Default Build : Install Hadoop via wget 
RUN wget https://mirror.navercorp.com/apache/hadoop/common/hadoop-3.2.2/hadoop-3.2.2.tar.gz
RUN tar -xvzf hadoop-3.2.2.tar.gz
RUN ln -s /opt/hadoop-3.2.2 /opt/hadoop

# Hadoop 관련 경로 셋팅
ENV HADOOP_HOME=/opt/hadoop
ENV HADOOP_CONF_DIR=/opt/hadoop/etc/hadoop

# Default Build : Install Hive via wget 
RUN wget https://mirror.navercorp.com/apache/hive/hive-3.1.2/apache-hive-3.1.2-bin.tar.gz
RUN tar -xvzf apache-hive-3.1.2-bin.tar.gz
RUN ln -s /opt/apache-hive-3.1.2-bin /opt/hive

# Hive 경로 셋팅
ENV HIVE_HOME=/opt/hive
ENV HIVE_CONF_DIR=/opt/hive/conf

# Install PostgreSQL JDBC
RUN wget https://jdbc.postgresql.org/download/postgresql-42.2.19.jar
RUN cp postgresql-42.2.19.jar $HIVE_HOME/lib/
RUN cp postgresql-42.2.19.jar $HIVE_HOME/jdbc/
RUN cp postgresql-42.2.19.jar $SPARK_HOME/jars/

# Install MySQL JDBC
RUN wget https://repo1.maven.org/maven2/mysql/mysql-connector-java/8.0.24/mysql-connector-java-8.0.24.jar
RUN cp mysql-connector-java-8.0.24.jar $HIVE_HOME/lib/
RUN cp mysql-connector-java-8.0.24.jar $HIVE_HOME/jdbc/
RUN cp mysql-connector-java-8.0.24.jar $SPARK_HOME/jars/

RUN yum install unzip -y

# Install Livy and thift-server 설정
RUN wget --user=deploy --password=deploy_1! "https://nexus.dtonic.io/repository/raw/io/dtonic/frost/raw-files/livy-0.8.0.tar.gz"
RUN mkdir livy
RUN tar -xvzf livy-0.8.0.tar.gz -C /opt/livy

COPY ./conf/core-site.xml /opt/spark/conf
COPY ./conf/hdfs-site.xml /opt/spark/conf
COPY ./conf/yarn-site.xml /opt/spark/conf

ADD ./init /docker-entrypoint-init/
RUN sed -i -e 's/\r$//' /docker-entrypoint-init/*

# hadoop 3.2와 hive 3.1의 guava version conflit 해결
RUN rm -f $HIVE_HOME/lib/guava-19.0.jar
RUN cp $HADOOP_HOME/share/hadoop/common/lib/guava-27.0-jre.jar $HIVE_HOME/lib/

RUN yum install telnet -y

VOLUME [ "/opt/spark-warehouse" ]