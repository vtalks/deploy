#!/usr/bin/env sh

echo "HEALTH"
curl -X GET "localhost:9200/_cat/health?v"
echo
echo "NODES"
curl -X GET "localhost:9200/_cat/nodes?v"
echo
echo "INDICES"
curl -X GET "localhost:9200/_cat/indices?v"