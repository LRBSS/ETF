#!/bin/bash

# Utilisez une Here Document pour inclure les données JSON directement dans le script
json_data=$(cat <<EOF
{
  "data": {
    "type": "teams",
    "attributes": {
      "name": "FirstTeam5",
      "organization-access": {
        "manage-workspaces": true
      }
    }
  }
}
EOF
)

# Utilisez `echo` pour afficher les données JSON (à des fins de débogage, si nécessaire)
echo "$json_data"

# Utilisez `curl` pour effectuer la demande POST avec les données JSON intégrées
curl \
  --header "Authorization: Bearer $1" \
  --header "Content-Type: application/vnd.api+json" \
  --request POST \
  --data "$json_data" \
  https://app.terraform.io/api/v2/organizations/AlaEssaim/teams
