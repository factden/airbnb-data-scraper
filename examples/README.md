# Example output

One file per mode, captured from real runs (JSON), plus a CSV export sample.

| File | Mode | What it shows |
|---|---|---|
| `input.json` | — | A ready-to-run input (Discover). |
| `discover-sample.json` / `discover-sample.csv` | Discover | One row per listing: name, property type, nightly price, rating, superhost, coordinates. |
| `availability-sample.json` | Availability | Per-day calendar: available, check-in/out, bookable, min/max nights, real nightly price. |
| `occupancy-sample.json` | Occupancy | Occupancy rate, ADR, RevPAR, estimated annual revenue per listing. |
| `reviews-sample.json` | Reviews | Guest reviews: reviewer, rating, text, date, host reply, language. |
| `market-sample.json` | Market report | One aggregate KPI row (median ADR, price percentiles, occupancy, RevPAR, revenue quartiles) + a sampled listing. |

Every row also carries a `markdownContent` field for LLM / RAG ingestion (truncated here for readability).
Full field dictionary: [`../FIELDS.md`](../FIELDS.md).
