#!/bin/bash

jq '.images[] | select(.width>='"$2"' and .height>='"$3"')' "$1"
