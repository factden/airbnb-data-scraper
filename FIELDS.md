# Field dictionary

`markdownContent` (last in every dataset) = an LLM-ready markdown rendering of the row.

## listings (Discover mode)
| Field | Type | Notes |
|---|---|---|
| listingId | string | numeric Airbnb id |
| name / title | string | listing name; card title |
| url | string | airbnb.com/rooms/<id> |
| latitude / longitude | number | approximate (platform privacy circle) |
| roomType / propertyType | string | e.g. Apartment, Room |
| rating / reviewsCount | number / int | |
| price / pricePerNight / currency | string / number / string | |
| isSuperhost | bool | |
| pictureUrl | string | |
| markdownContent | string | LLM-ready |

## reviews (Reviews mode)
| Field | Type | Notes |
|---|---|---|
| listingId / reviewId | string | |
| reviewRating | int | 1-5 |
| reviewText | string | |
| reviewDate / createdAt | string | |
| reviewerName / reviewerId | string | first name (public) |
| hostResponse / respondedAt | string | |
| reviewPhotoUrls | array | |
| language / roomTypeListingId | string | |

## occupancy (Occupancy mode)
| Field | Type | Notes |
|---|---|---|
| listingId | string | |
| occupancyRate | number | 0-1, transparent estimate |
| adr / revpar / estAnnualRevenue | number | ADR from a BookIt price quote |
| bookedNights / availableNights / horizonDays | int | |

## availability (Availability mode)
| Field | Type | Notes |
|---|---|---|
| listingId / calendarDate | string | |
| available / bookable / availableForCheckin / availableForCheckout | bool | |
| minNights / maxNights | int | |
| price / pricePerNight | string / number | often null on Airbnb's calendar |

## market (Market report mode)
one aggregate row: market, listingCount, roomTypeMix, adrMedian/adrMean, priceP25/P50/P75, occupancyAvg, revpar,
revenueMedian, revenueTopQuartile, ratingAvg, sampleSize.
