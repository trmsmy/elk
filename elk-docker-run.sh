#!/bin/sh

# increase map count as per ES doc
#https://www.elastic.co/guide/en/elasticsearch/reference/5.0/vm-max-map-count.html#vm-max-map-count 
sudo sysctl -w vm.max_map_count=262144

sudo docker run -p 5601:5601 -p 9200:9200 -p 5044:5044 -it --name elk  --rm  sebp/elk