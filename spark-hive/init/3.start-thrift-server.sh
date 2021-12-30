echo "spark.cores.max 2" >> /opt/spark/conf/spark-defaults.conf

$SPARK_HOME/sbin/start-thriftserver.sh $THRIFT_OPTIONS