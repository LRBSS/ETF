#!/bin/bash
curl \
  --header "Authorization: 8RFBPtDNVAhKvg.atlasv1.LQL14jwCaxAzLuVIvydoTZeZ8pg2Qi5KtGViwRPZ1m1L4kV65yV0dJPQKpkL6MhSc04" \
  --header "Content-Type: application/vnd.api+json" \
  --request POST \
  --data @./TFCloudCurls/team.json \
  https://app.terraform.io/api/v2/organizations/AlaEssaim/teams
