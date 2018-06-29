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
                "code": {
                    "type": "text"
                },
                "title": {
                    "type": "text"
                },
                "description": {
                    "type": "text"
                },
                "slug": {
                    "type": "text"
                },
                "duration": {
                    "type": "text"
                },
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
