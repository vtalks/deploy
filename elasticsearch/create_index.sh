#!/usr/bin/env sh

curl -X PUT "localhost:9200/vtalks" -H 'Content-Type: application/json' -d'
{
    "settings" : {
        "index" : {
            "number_of_shards" : 1,
            "number_of_replicas" : 0
        }
    },
    "mappings" : {
        "talk" : {
            "properties" : {
                "created" : {
                    "type" : "date"
                },
                "updated" : {
                    "type" : "date"
                },
                "wilsonscore_rank": {
                    "type": "float"
                },
                "hacker_hot": {
                    "type": "float"
                },
                "tags": {
                    "type": "keyword"
                }
            }
        }
    }
}
'
