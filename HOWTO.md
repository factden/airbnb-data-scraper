# How to scrape Airbnb data — step by step

1. **Open the actor** — [apify.com/factden/airbnb-data-scraper](https://apify.com/factden/airbnb-data-scraper?fpr=factden) and sign in (a free Apify account includes trial credit).
2. **Pick a Mode.** Each run does one:
   - `discover` — every listing in a market (needs a **location**).
   - `availability` — 12-month calendar per listing (needs **listing URLs/IDs**); toggle *Price each available date* for real nightly prices.
   - `occupancy` — occupancy %, ADR, RevPAR, estimated annual revenue per listing.
   - `reviews` — full guest reviews with ratings, host replies and language.
   - `market` — one aggregate KPI row for a whole market.
3. **Fill the one input the mode needs** — a **Location** (Discover / Market) or **Listing URLs / IDs** (Availability / Occupancy / Reviews).
4. **Optional filters** — dates, price range, room type, review sort/date/rating, sample size, currency (20) and locale (9).
5. **Run** — from the Console, the [API](https://docs.apify.com/api/v2), a [schedule](https://docs.apify.com/platform/schedules), or [MCP](https://mcp.apify.com/). Rows stream to the default dataset plus a clean per-mode dataset.
6. **Export** — JSON, CSV, Excel or HTML from the Output tab, or pull via the dataset API. Every row includes `markdownContent` for LLMs.

Cost scales with what you pull (pay-per-event, no monthly fee, no start fee) — see the [pricing on the actor page](https://apify.com/factden/airbnb-data-scraper?fpr=factden).
