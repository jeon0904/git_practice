
echo "spark.cores.max 2" >> /opt/spark/conf/spark-defaults.conf
echo "spark.driver.extraJavaOptions -Dhdp.version=3.1.4.0-315" >> /opt/spark/conf/spark-defaults.conf
echo "spark.yarn.am.extraJavaOptions -Dhdp.version=3.1.4.0-315" >> /opt/spark/conf/spark-defaults.conf

$SPARK_HOME/sbin/start-thriftserver.sh $THRIFT_OPTIONS --master yarn