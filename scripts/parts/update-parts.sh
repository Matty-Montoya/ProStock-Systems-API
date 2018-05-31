#!/bin/bash

curl "http://localhost:4741/parts/${ID}" \
--include \
--request PATCH \
  --headers "Content-Type: application/json" \
  --headers "Authorization: Token token=${TOKEN}" \
  --data '{
    "part": {
        "name": "'"${NAME}"'",
        "description": "'"${DESC}"'",
        "sku": "'"${SKU}"'",
        "quantity": "'"${QTY}"'"
    }
  }'
