# Run the Airbnb Data Scraper: https://apify.com/factden/airbnb-data-scraper
from apify_client import ApifyClient

client = ApifyClient("YOUR_APIFY_TOKEN")
run = client.actor("factden/airbnb-data-scraper").call(run_input={
    "mode": "market",
    "location": "Lisbon, Portugal",
    "sampleSize": 300,
    "currency": "USD",
})
for item in client.dataset(run["defaultDatasetId"]).iterate_items():
    print(item)
