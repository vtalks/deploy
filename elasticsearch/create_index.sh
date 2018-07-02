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
                "id": {
                    "type": "integer"
                },
                "title": {
                    "type": "text",
                    "fielddata": true
                },
                "description": {
                    "type": "text",
                    "fielddata": true
                },
                "view_count": {
                    "type": "long"
                },
                "like_count": {
                    "type": "long"
                },
                "dislike_count": {
                    "type": "long"
                },
                "favorite_count": {
                    "type": "long"
                },
                "youtube_view_count": {
                    "type": "long"
                },
                "youtube_like_count": {
                    "type": "long"
                },
                "youtube_dislike_count": {
                    "type": "long"
                },
                "youtube_favorite_count": {
                    "type": "long"
                },
                "wilsonscore_rank": {
                    "type": "float"
                },
                "hacker_hot": {
                    "type": "float"
                },
                "channel": {
                    "properties": {
                        "id": { "type": "integer" },
                        "title": {
                            "type": "text",
                            "fielddata": true
                        },
                        "description": {
                            "type": "text",
                            "fielddata": true
                        }
                    }
                },
                "playlist": {
                    "properties": {
                        "id": { "type": "integer" },
                        "title": {
                            "type": "text",
                            "fielddata": true
                        },
                        "description": {
                            "type": "text",
                            "fielddata": true
                        }
                    }
                },
                "tags": {
                    "type": "keyword"
                },
                "created" : {
                    "type" : "date",
                    "format": "epoch_millis"
                }
            }
        }
    }
}
'
