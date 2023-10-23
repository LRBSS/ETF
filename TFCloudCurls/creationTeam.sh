#!/bin/bash



# Utilisez `curl` pour effectuer la demande POST avec les données JSON intégrées
curl \
  --header "Authorization: Bearer rdutBXOCUC5Cmw.atlasv1.KePN9Tvkrytt77WT97eBPPnd53yZoUpgfJlPqr8yyyoLCnhfQBX1p4p5rGDzIOo9L0g" \
  --header "Content-Type: application/vnd.api+json" \
  --request POST\
  --data "@./TFCloudCurls/team.json" \
  https://app.terraform.io/api/v2/organizations/AlaEssaim/teams
