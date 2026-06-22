
# WebhookCreate


## Properties

Name | Type
------------ | -------------
`is_active` | boolean
`organization_guid` | string
`group_guid` | string
`name` | string
`event` | string
`url` | string
`oauth_url` | string
`client_id` | string
`client_secret` | string
`fetch_tags` | boolean

## Example

```typescript
import type { WebhookCreate } from ''

// TODO: Update the object below with actual values
const example = {
  "is_active": null,
  "organization_guid": null,
  "group_guid": null,
  "name": null,
  "event": null,
  "url": null,
  "oauth_url": null,
  "client_id": null,
  "client_secret": null,
  "fetch_tags": null,
} satisfies WebhookCreate

console.log(example)

// Convert the instance to a JSON string
const exampleJSON: string = JSON.stringify(example)
console.log(exampleJSON)

// Parse the JSON string back to an object
const exampleParsed = JSON.parse(exampleJSON) as WebhookCreate
console.log(exampleParsed)
```

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


