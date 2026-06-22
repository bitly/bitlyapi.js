
# OAuthApp


## Properties

Name | Type
------------ | -------------
`name` | string
`client_id` | string
`description` | string
`link` | string
`require_oauth_pkce` | boolean

## Example

```typescript
import type { OAuthApp } from ''

// TODO: Update the object below with actual values
const example = {
  "name": null,
  "client_id": null,
  "description": null,
  "link": null,
  "require_oauth_pkce": null,
} satisfies OAuthApp

console.log(example)

// Convert the instance to a JSON string
const exampleJSON: string = JSON.stringify(example)
console.log(exampleJSON)

// Parse the JSON string back to an object
const exampleParsed = JSON.parse(exampleJSON) as OAuthApp
console.log(exampleParsed)
```

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


