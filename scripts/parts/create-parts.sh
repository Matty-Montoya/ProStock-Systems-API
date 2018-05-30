#!/bin/bash


curl "http://localhost:4741/parts" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "part": {
      "name": "'"${NAME}"'",
      "description": "'"${DESC}"'",
      "sku": "'"${SKU}"'",
      "quantity": "'"${QTY}"'",
      "collection_id": "'"${CID}"'"
    }
  }'

echo
