
# Webhook


## Properties

Name | Type
------------ | -------------
`references` | { [key: string]: string; }
`guid` | string
`created` | string
`modified` | string
`modified_by` | string
`alerted` | string
`deactivated` | string
`is_active` | boolean
`is_alert` | boolean
`organization_guid` | string
`group_guid` | string
`name` | string
`event` | string
`url` | string
`status` | string
`oauth_url` | string
`client_id` | string
`client_secret` | string
`fetch_tags` | boolean

## Example

```typescript
import type { Webhook } from ''

// TODO: Update the object below with actual values
const example = {
  "references": null,
  "guid": null,
  "created": null,
  "modified": null,
  "modified_by": null,
  "alerted": null,
  "deactivated": null,
  "is_active": null,
  "is_alert": null,
  "organization_guid": null,
  "group_guid": null,
  "name": null,
  "event": null,
  "url": null,
  "status": null,
  "oauth_url": null,
  "client_id": null,
  "client_secret": null,
  "fetch_tags": null,
} satisfies Webhook

console.log(example)

// Convert the instance to a JSON string
const exampleJSON: string = JSON.stringify(example)
console.log(exampleJSON)

// Parse the JSON string back to an object
const exampleParsed = JSON.parse(exampleJSON) as Webhook
console.log(exampleParsed)
```

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


