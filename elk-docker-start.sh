#!/bin/sh

# increase map count as per ES doc
#https://www.elastic.co/guide/en/elasticsearch/reference/5.0/vm-max-map-count.html#vm-max-map-count 
sysctl -w vm.max_map_count=262144

sudo docker run elk