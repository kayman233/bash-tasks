#!/bin/bash

jq --arg class "$2" '(.categories[] | select(.name==$class) | .id) as $class_id
 | ([.annotations[] | select(.category_id==$class_id).image_id]) as $ids
 | .images[] | select([.id] | inside($ids))' $1
