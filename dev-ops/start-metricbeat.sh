#!/bin/bash
# Script ot start metricbeat, with pid, logs, config in cluster path

cd ~/workspace/tesla-stack/dev-ops
source ./cluster-vars.source

cd ~/workspace/elastic-stack/current/metricbeat
 ./metricbeat -c metricbeat.yml -e 2>&1 | tee -a  $LOGS_DIR_MONITORING/metricbeat-`date +%Y-%m-%d`.out  & echo $! > $PIDS_DIR_MONITORING/metricbeat.pid
