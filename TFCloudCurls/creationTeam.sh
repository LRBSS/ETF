#!/bin/bash
curl \
  --header "Authorization: u4DI81zkWyqqpQ.atlasv1.MNAkQ2UHj2v4nfrFJvKZ5MvwIoaB8W0r2YfGkusSOIYu7PT9MGPO4UIXoaueb7tzyuk" \
  --header "Content-Type: application/vnd.api+json" \
  --request POST \
  --data @./TFCloudCurls/team.json \
  https://app.terraform.io/api/v2/organizations/AlaEssaim/teams
