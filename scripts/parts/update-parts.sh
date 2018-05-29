#!/bin/bash

curl "http://localhost:4741/parts/${ID}" \
--include \
--request PATCH \
  --header "Content-Type: application/json" \
  --data '{
    "part": {
        "name": "'"${NAME}"'",
        "description": "'"${DESC}"'",
        "sku": "'"${SKU}"'",
        "quantity": "'"${QTY}"'",
        "collection_id": "'"${CID}"'"
    }
  }'
