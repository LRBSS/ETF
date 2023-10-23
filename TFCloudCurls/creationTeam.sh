#!/bin/bash



# Utilisez `curl` pour effectuer la demande POST avec les données JSON intégrées
curl \
  --header "Authorization: Bearer $1" \
  --header "Content-Type: application/vnd.api+json" \
  --request POST\
  --data "@./TFCloudCurls/team.json" \
  https://app.terraform.io/api/v2/organizations/AlaEssaim/teams
