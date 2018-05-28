#!/bin/bash


curl "http://localhost:4741/parts" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
    "part": {
      "name": "'"${NAME}"'"
    }
  }'

echo
