FROM sebp/elk

#Elastic custom config
ENV ES_HOME /opt/elasticsearch
WORKDIR ${ES_HOME}

RUN yes | CONF_DIR=/etc/elasticsearch gosu elasticsearch bin/elasticsearch-plugin \
    install -b ingest-geoip

#Logstash custom config 
# overwrite existing file
#ADD /path/to/your-30-output.conf /etc/logstash/conf.d/30-output.conf

# add new file
ADD logstash/jdbc-pipeline.conf /etc/logstash/conf.d/jdbc-pipeline.conf

#Add JDBC drivers for logstash 
ADD logstash/libs/ /etc/logstash/conf.d/jdbc-pipeline.conf