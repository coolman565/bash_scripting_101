#!/bin/bash

set -o verbose
set -o nounset
set -o errexit

# Count HTTP requests from nginx log file
#cat /var/log/nginx/access.log.1

#cat /var/log/nginx/access.log.1 | sed -E 's#^.*"([[:alpha:]]+)\s+.*#\1#'

#cat /var/log/nginx/access.log.1 | sed -E 's#^.*"([[:alpha:]]+)\s+.*#\1#'  | uniq -c

cat /var/log/nginx/access.log.1 | sed -E 's#^.*"([[:alpha:]]+)\s+.*#\1#'  | sort | uniq -c


