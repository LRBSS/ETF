#!/bin/bash
curl \
  --header "Authorization: yUHyk0e2BWPaZA.atlasv1.P7sorF2GIy4VY9MyoGnjw6HaWkinysyH8v93hJZYoNP5QI0gZN0LxwvlYi1qGvi1BcE" \
  --header "Content-Type: application/vnd.api+json" \
  --request POST \
  --data @./TFCloudCurls/team.json \
  https://app.terraform.io/api/v2/organizations/AlaEssaim/teams
