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
          "id": "$WORKSPACE_ID"
        }
      },
      "team": {
        "data": {
          "type": "teams",
          "id": "TEAM_ID"
        }
      }
    },
    "type": "team-workspaces"
  }
}
EOF
)





curl \
  --header "Authorization: Bearer $1" \
  --header "Content-Type: application/vnd.api+json" \
  --request POST \
  --data "$json_data"\
  https://app.terraform.io/api/v2/team-workspaces
