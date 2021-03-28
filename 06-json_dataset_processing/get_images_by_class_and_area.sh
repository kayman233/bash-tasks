#!/bin/bash

jq --arg class "$2" --argjson bbox_area "$3" '(.categories[] | select(.name==$class) | .id) as $class_id
 | ([.annotations[] | select(.category_id==$class_id and .area>$bbox_area).image_id]) as $ids
 | .images[] | select([.id] | inside($ids))' $1
