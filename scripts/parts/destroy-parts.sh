#!/bin/bash

curl "http://localhost:4741/parts/${ID}" \
--include \
--request DELETE \

echo
