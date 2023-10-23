#!/bin/bash
curl \
  --header "Authorization: zVn2HpBDItPOjw.atlasv1.O6GsHJjjMq0byozz4VPjx9Qa0O471GjWla0JBCrd0cyTNzS9tZEMZHq23GPpBEQ2mzk" \
  --header "Content-Type: application/vnd.api+json" \
  --request POST \
  --data @./TFCloudCurls/team.json \
  https://app.terraform.io/api/v2/organizations/AlaEssaim/teams
