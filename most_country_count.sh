#!/bin/bash
set -e

curl -s https://ipvigilante.com/$(awk '{print $1}' $1 | sort | uniq -c | sort -nr | head -1 | awk '{print $2}') | jq .data.country_name 
