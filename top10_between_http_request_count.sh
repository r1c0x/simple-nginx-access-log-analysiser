#!/bin/sh
set -e

# Example: top10_between_http_request_count.sh access.log '[10/Jun/2019:00:00:00' '[10/Jun/2019:23:59:59'
awk '$4 >= "$2" && $4 < "$3"' $1 | awk '{print $1}' | sort | uniq -c | sort -nr | head -10


