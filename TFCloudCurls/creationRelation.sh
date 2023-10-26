#!/bin/bash

json_data=$(cat <<EOF
{
  "data": {
    "attributes": {
      "access": "custom",
      "runs": "apply",
      "variables": "none",
      "state-versions": "read-outputs",
      "plan-outputs": "none",
      "sentinel-mocks": "read",
      "workspace-locking": false,
      "run-tasks": false
    },
    "relationships": {
      "workspace": {
        "data": {
          "type": "workspaces",
          "id": "$2"
        }
      },
      "team": {
        "data": {
          "type": "teams",
          "id": "$1"
        }
      }
    },
    "type": "team-workspaces"
  }
}
EOF
)





curl \
  --header "Authorization: Bearer $3" \
  --header "Content-Type: application/vnd.api+json" \
  --request POST \
  --data "$json_data"\
  https://app.terraform.io/api/v2/team-workspaces
