# Algolia Docsearch Action

This action runs the docsearch scraper and updates an index.

## Inputs

### `algolia_application_id`
**Required** Algolia docsearch `APPLICATION_ID`

### `algolia_api_key`
**Required** Algolia docsearch `API_KEY`

### `file`
**Required** File able to be accessed from $GITHUB_WORKSPACE, used in tandem with `actions/checkout@master`

## Example usage

```yaml
- uses: actions/checkout@v2
- uses: darrenjennings/algolia-docsearch-action@master
  with:
    algolia_application_id: 'XXXXX83LWT'
    algolia_api_key: 'xxxxxxxxxxxxxxxxxxxx42935deb8d9d'
    file: 'algolia/my-algolia-config.json'
```
