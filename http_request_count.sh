#!/bin/bash
set -e

echo "Total number of HTTP requests: $(grep 'HTTP/' $1 | wc -l)"
