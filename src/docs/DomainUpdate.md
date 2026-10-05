
# DomainUpdate

The settings to change on a custom domain. Send only the settings to change.

## Properties

Name | Type
------------ | -------------
`root_redirect` | string
`wildcard_redirect` | string
`https_enabled` | boolean
`hsts_enabled` | boolean
`upgrade_insecure_requests` | boolean

## Example

```typescript
import type { DomainUpdate } from ''

// TODO: Update the object below with actual values
const example = {
  "root_redirect": null,
  "wildcard_redirect": null,
  "https_enabled": null,
  "hsts_enabled": null,
  "upgrade_insecure_requests": null,
} satisfies DomainUpdate

console.log(example)

// Convert the instance to a JSON string
const exampleJSON: string = JSON.stringify(example)
console.log(exampleJSON)

// Parse the JSON string back to an object
const exampleParsed = JSON.parse(exampleJSON) as DomainUpdate
console.log(exampleParsed)
```

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


