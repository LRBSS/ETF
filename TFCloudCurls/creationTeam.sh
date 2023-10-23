#!/bin/bash
curl \
  --header "Authorization: ZQ4HzHvKPGnePg.atlasv1.Kcn2IfzIgspz7zJYMNdKNF2ZIteYHmTg8eX2g544VBa8QIULNFVseKmWEjNRfOnAlIg" \
  --header "Content-Type: application/vnd.api+json" \
  --request POST \
  --data @./TFCloudCurls/team.json \
  https://app.terraform.io/api/v2/organizations/AlaEssaim/teams
