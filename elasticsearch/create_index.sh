#!/usr/bin/env sh

curl -X PUT "localhost:9200/talk" -H 'Content-Type: application/json' -d'
{
    "settings" : {
        "index" : {
            "number_of_shards" : 1,
            "number_of_replicas" : 0
        }
    }
}
'
