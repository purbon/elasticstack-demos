ELK Bugzilla Demo 
=====================

## Resume

The motivation of this demo is to setup an environment to show and query the Elasticsearch, Logstash and Kibana (aka ELK) capabitlies using a dump of the Eclipse Project bugzilla. 

## Setup&Config

To run this demo you just need to have Vagrant (and VirtualBox) installed in your system. Then if you issue the command ```vagrant up```, from the main directory of this repo,  a Virtualbox VM is going to be setup including the necessary packages and datasets.

But you can also setup everything manual if you like.

### Dataset

For this demo we use an Eclipse bugzilla dump provided for the MSR 2007 challenge (http://msr.uwaterloo.ca/msr2007/challenge/).

With the Vagrant bootstrap in this repo we provide you with the dataset, however you might like to run your own experiments. In order to facilitate the loading process with logstash, you must normalize it a bit before being able to continue. To do that, you can use the ruby script under the pre directory named [norm.rb](pre/norm.rb), this scripts accepts a source path and and a target file where it will store all the xmls documents.

## Nice to have

You can run your own queries and create you own dashboard, however we provide you with some sample [queries](queries/) and a preset [Kibana 3 dashboard](dashboards/Eclipse-1419693152096.json) that can be loaded as starting point.

## Software stack

To setup this demo we used.

* Elasticsearch 1.4.
* Logstash 1.4.2.
* Kibana 3.

## Results
