#!/bin/bash
cd /opt/elasticsearch/
bin/elasticsearch-plugin install analysis-kuromoji
service elasticsearch restart

cd /opt/logstash
bin/logstash-plugin install logstash-input-file
bin/logstash-plugin install logstash-filter-date
bin/logstash-plugin install logstash-filter-csv
bin/logstash-plugin install logstash-filter-mutate
service logstash stop
service logstash stop
service logstash restart

service kibana restart
