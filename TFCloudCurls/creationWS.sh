#!/bin/bash

workspace_name="$2"

json_data=$(cat <<EOF
{
  "data": {
    "type": "workspaces",
    "attributes": {
      "name": "$workspace_name",
      "resource-count": 0,
      "updated-at": "2017-11-29T19:18:09.976Z"
    }
  }
}
EOF
)

curl \
  --header "Authorization: Bearer $3" \
  --header "Content-Type: application/vnd.api+json" \
  --request POST \
  --data @json.data \
  https://app.terraform.io/api/v2/organizations/AlaEssaim/workspaces
