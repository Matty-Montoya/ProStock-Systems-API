#!/bin/bash

curl "http://localhost:4741/parts/${ID}" \
--include \
--request DELETE \
--headers "Content-Type: application/json" \
--headers "Authorization: Token token=${TOKEN}"

echo
