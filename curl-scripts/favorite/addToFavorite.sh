#!/bin/bash

curl "http://localhost:4741/favorites" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "favorite": {
      "user_id": "'"${U_ID}"'",
      "whiskey_id": "'"${W_ID}"'"
    }
  }'

echo
