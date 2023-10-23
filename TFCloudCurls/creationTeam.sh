#!/bin/bash
curl \
  --header "Authorization: BearerAl7SpcB3yS4EoQ.atlasv1.09PUKpXic4FzOo4LKLzgMhoyQQfBzrJxTJLw77NBEWxa0GjLUZsaZCruTj3Mszmw4nM" \
  --header "Content-Type: application/vnd.api+json" \
  --request POST \
  --data @./TFCloudCurls/team.json \
  https://app.terraform.io/api/v2/organizations/AlaEssaim/teams
