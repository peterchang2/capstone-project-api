curl "http://localhost:4741/favorites/${ID}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "favorite": {
      "user_score": "'"${NUM}"'"
    }
  }'

echo
