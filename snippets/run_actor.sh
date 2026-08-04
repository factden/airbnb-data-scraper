#!/usr/bin/env bash
# Run the Airbnb Data Scraper and print the run's dataset items.
# Requires: APIFY_TOKEN in the environment.
set -euo pipefail
curl -s -X POST "https://api.apify.com/v2/acts/factden~airbnb-data-scraper/run-sync-get-dataset-items?token=${APIFY_TOKEN}" \
  -H 'Content-Type: application/json' \
  -d '{"mode":"occupancy","startUrls":["https://www.airbnb.com/rooms/39896685"],"currency":"USD"}'
