# Airbnb Data Scraper

Extract **Airbnb** listings, prices, 12-month availability, **occupancy / ADR / RevPAR**, and reviews with
sentiment — as structured JSON/CSV, no login and no Airbnb API key. A pay-per-use **AirDNA alternative** that runs
on the [Apify](https://apify.com) platform with an API, scheduling, integrations and proxy rotation.

▶️ **Run it:** [apify.com/factden/airbnb-data-scraper?fpr=factden](https://apify.com/factden/airbnb-data-scraper?fpr=factden)
· Step-by-step: [`HOWTO.md`](HOWTO.md) · License: MIT

![Airbnb occupancy scraper output — occupancy rate, ADR, RevPAR and estimated annual revenue per Airbnb listing, a pay-per-use AirDNA alternative](https://raw.githubusercontent.com/factden/apify-actor-assets/main/airbnb-data-scraper/04-occupancy.png?v=1)

## What it extracts

Pick one **Mode** per run:

- **Discover** (by location) — listings + prices + full property details.
- **Availability & price-by-date** (by listing URL/ID) — 12-month forward calendar.
- **Occupancy, ADR & RevPAR** (by listing URL/ID) — revenue signals derived from the calendar + a live price quote.
- **Reviews & sentiment** (by listing URL/ID) — full review history + topic tags.
- **Market report** (by location) — one aggregate KPI row (median ADR, price percentiles, occupancy, revenue).

## Quick start

**API**

```bash
curl -X POST "https://api.apify.com/v2/acts/factden~airbnb-data-scraper/runs?token=YOUR_TOKEN" \
  -H 'Content-Type: application/json' \
  -d '{"mode":"discover","location":"Lisbon, Portugal","maxListings":50,"currency":"USD"}'
```

**Python** — see [`snippets/run_actor.py`](snippets/run_actor.py).

## Output

One flat row per result; every row also carries a `markdownContent` field for LLM/RAG ingestion. Field dictionary:
[`FIELDS.md`](FIELDS.md). Samples: [`examples/`](examples/).

![Airbnb market report output — one aggregate row per market with median ADR, price percentiles, occupancy, RevPAR and revenue quartiles](https://raw.githubusercontent.com/factden/apify-actor-assets/main/airbnb-data-scraper/06-market.png?v=1)

![Airbnb Discover mode output — every listing in a market with name, property type, nightly price, rating, review count and superhost status](https://raw.githubusercontent.com/factden/apify-actor-assets/main/airbnb-data-scraper/02-discover.png?v=1)

## Use cases

- Short-term-rental **investment analysis** (occupancy, ADR, RevPAR, revenue).
- **Revenue management** / comp benchmarking for hosts and PMs.
- **Market research** and alt-data on STR supply, pricing and demand.

## Cost

Pay-per-result, no monthly fee (new Apify accounts get free platform credit): Listing $0.004 · Calendar $0.006 ·
Occupancy $0.010 · Review $0.004 · Market report $0.39. A 500-listing market discovery ≈ $2.

## FAQ

- **Airbnb API?** There's no public Airbnb data API — this scraper is the programmatic route.
- **Account/key needed?** No.
- **AirDNA alternative?** Yes; occupancy is a transparent estimate from the availability calendar, pay-per-use.
- **Schedule / MCP?** Yes — Apify Schedules, API, and MCP for AI agents.

## Other FactDen scrapers

- Google Hotels Scraper — [store](https://apify.com/factden/google-hotels-scraper?fpr=factden) · ([docs](https://github.com/factden/google-hotels-scraper))
- Expedia Reviews Scraper — [store](https://apify.com/factden/expedia-hotel-reviews-scraper?fpr=factden) · ([docs](https://github.com/factden/expedia-hotel-reviews-scraper))
- Hotels.com Reviews Scraper — [store](https://apify.com/factden/hotels-com-reviews-scraper?fpr=factden) · ([docs](https://github.com/factden/hotels-com-reviews-scraper))
- Ctrip / Trip.com Reviews — [store](https://apify.com/factden/ctrip-trip-reviews-scraper?fpr=factden)

[All FactDen actors →](https://apify.com/factden?fpr=factden)
