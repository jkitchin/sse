#!/bin/bash
query=$1
shift 1
for word in "$@"; do
    query+="+$word"
done

curl -s https://api.openalex.org/institutions?search=$query | jq '.results[] | {name: .display_name, count: .works_count, cites: .cited_by_count}' | jq '(.name) + ": documents (" + (.count | tostring) + ") citations (" + (.cites | tostring) + ")"'
