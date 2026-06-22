
# BitlinkUpdate


## Properties

Name | Type
------------ | -------------
`link` | string
`id` | string
`long_url` | string
`title` | string
`archived` | boolean
`created_at` | string
`created_by` | string
`client_id` | string
`custom_bitlinks` | Array&lt;string&gt;
`tags` | Array&lt;string&gt;
`launchpad_ids` | Array&lt;string&gt;
`qr_code_ids` | Array&lt;string&gt;
`deeplinks` | [Array&lt;DeeplinkRule&gt;](DeeplinkRule.md)
`is_deleted` | boolean
`campaign_ids` | Array&lt;string&gt;
`expiration_at` | string

## Example

```typescript
import type { BitlinkUpdate } from ''

// TODO: Update the object below with actual values
const example = {
  "link": null,
  "id": null,
  "long_url": null,
  "title": null,
  "archived": null,
  "created_at": null,
  "created_by": null,
  "client_id": null,
  "custom_bitlinks": null,
  "tags": null,
  "launchpad_ids": null,
  "qr_code_ids": null,
  "deeplinks": null,
  "is_deleted": null,
  "campaign_ids": null,
  "expiration_at": null,
} satisfies BitlinkUpdate

console.log(example)

// Convert the instance to a JSON string
const exampleJSON: string = JSON.stringify(example)
console.log(exampleJSON)

// Parse the JSON string back to an object
const exampleParsed = JSON.parse(exampleJSON) as BitlinkUpdate
console.log(exampleParsed)
```

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


