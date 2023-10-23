#!/bin/bash



# Utilisez `curl` pour effectuer la demande POST avec les données JSON intégrées
curl \
  --header "Authorization: Bearer 15kqspX0oSjHwA.atlasv1.sFkNWNeSLXxWb3Z4gDxG8kRVtY4owryA3hCYh14gXFijmkOAni27k3ff6dN7MycbZ3k" \
  --header "Content-Type: application/vnd.api+json" \
  --request POST\
  --data "@./TFCloudCurls/team.json" \
  https://app.terraform.io/api/v2/organizations/AlaEssaim/teams
