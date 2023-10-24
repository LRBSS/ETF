#!/bin/bash

# Check if the team name argument is provided


team_name="$1"

# Utilize a Here Document for JSON data
json_data=$(cat <<EOF
{
  "data": {
    "type": "teams",
    "attributes": {
      "name": "$team_name",
      "organization-access": {
        "manage-workspaces": true
      }
    }
  }
}
EOF
)

# Use `curl` to perform the POST request with the embedded JSON data
curl \
  --header "Authorization: Bearer $2" \
  --header "Content-Type: application/vnd.api+json" \
  --request POST \
  --data "$json_data" \
  "https://app.terraform.io/api/v2/organizations/AlaEssaim/teams"
