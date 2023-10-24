#!/bin/bash

workspace_name="$3"
echo "Workspace name: $workspace_name"
json_data=$(cat <<EOF
{
  "data": {
    "attributes": {
      "name": "$workspace_name",
      "resource-count": 0,
      "updated-at": "2017-11-29T19:18:09.976Z"
    },
    "type": "workspaces"
  }
}

EOF
)

curl \
  --header "Authorization: Bearer $2" \
  --header "Content-Type: application/vnd.api+json" \
  --request POST\
  --data "$json_data" \
  "https://app.terraform.io/api/v2/organizations/AlaEssaim/workspaces"
