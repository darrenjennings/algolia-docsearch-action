# Algolia Docsearch Action

This action runs the docsearch scraper and updates an index.

## Inputs

### `algolia_application_id`
**Required** 'Aloglia docsearch `APPLICATION_ID`

### `algolia_api_key`
**Required** Aloglia docsearch `API_KEY`

## Example usage

```yaml
uses: darrenjennings/algolia-docsearch-action@master
with:
  algolia_application_id: 'XXXXX83LWT'
  algolia_api_key: 'xxxxxxxxxxxxxxxxxxxx42935deb8d9d'
  file: '/github/workspace/algolia/my-algolia-config.json'
```
