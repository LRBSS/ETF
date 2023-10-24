#!/bin/bash


json_data=$(cat <<EOF
{
  "data": {
    "attributes": {
      "name":  "WS" ,
      "resource-count": 0,
      "updated-at": "2017-11-29T19:18:09.976Z"
    },
    "type": "workspaces"
  }
}

EOF
)

curl \
  --header "Authorization: Bearer $1" \
  --header "Content-Type: application/vnd.api+json" \
  --request POST\
  --data "$json_data" \
  "https://app.terraform.io/api/v2/organizations/AlaEssaim/workspaces"
