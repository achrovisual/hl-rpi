#!/bin/bash

curl -s "$UPSNAP_URL/api/upsnap/shutdown/$UPSNAP_DEVICE_ID" \
    -H "Authorization: Bearer $(curl -s -X POST "$UPSNAP_URL/api/collections/_superusers/auth-with-password" \
        -H "Content-Type: application/json" \
        -d "{\"identity\": \"$UPSNAP_USERNAME\", \"password\": \"$UPSNAP_PASSWORD\"}" | jq -r '.token')"