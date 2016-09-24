# Build your sport tracker with the elastic stack


## Description

This repository contains the necessary parts to build your own sport tracker with the elastic stack, from the basic filebeat usage, to the necessary Logstash processing to the nice and shiny kibana dashboard. Here we'll include a bit of description for all the parts.

* Filebeat: it's used to basically read a collection of files, using the multiline capabilites, and send them for later processing to a logstash instance.
* Logstash: used to extract the necessary data from the XML's collection, process and inject them in elasticsearch.
* Elasticsearch: used as a data storage.
* Kibana: used to create the dashboard

### Available bits

* All necessary configuration files for each moving part, a simple filebeat, logstash templates and configurations and an objects dump for the necessary kibana dasboards.
* A sample dataset
* A copy of the custom filter created to parser gpx and tcx data formats.

## Kibana dashboard

[![Foo](https://raw.githubusercontent.com/purbon/elasticstack_sports_demo/master/snapshot.png)](http://www.elastic.co/)

## Questions

This demo has been created by me, all contributions are very welcome. If you have questions don't heasitate to open issues, do pull request, etc.


