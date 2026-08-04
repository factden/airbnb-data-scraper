// Run the Airbnb Data Scraper: https://apify.com/factden/airbnb-data-scraper
import { ApifyClient } from 'apify-client';

const client = new ApifyClient({ token: 'YOUR_APIFY_TOKEN' });
const run = await client.actor('factden/airbnb-data-scraper').call({
    mode: 'market',
    location: 'Lisbon, Portugal',
    sampleSize: 100,
    currency: 'USD',
});
const { items } = await client.dataset(run.defaultDatasetId).listItems();
console.log(items);
