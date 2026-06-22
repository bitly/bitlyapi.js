
# FullShorten

Either long_url (for new bitlinks) or bitlink_id (for adding keywords to existing bitlinks) must be provided, but not both.

## Properties

Name | Type
------------ | -------------
`long_url` | string
`domain` | string
`group_guid` | string
`title` | string
`tags` | Array&lt;string&gt;
`deeplinks` | [Array&lt;Deeplink&gt;](Deeplink.md)
`force_new_link` | boolean
`keyword` | string
`bitlink_id` | string
`expiration_at` | string

## Example

```typescript
import type { FullShorten } from ''

// TODO: Update the object below with actual values
const example = {
  "long_url": null,
  "domain": null,
  "group_guid": null,
  "title": null,
  "tags": null,
  "deeplinks": null,
  "force_new_link": null,
  "keyword": null,
  "bitlink_id": null,
  "expiration_at": null,
} satisfies FullShorten

console.log(example)

// Convert the instance to a JSON string
const exampleJSON: string = JSON.stringify(example)
console.log(exampleJSON)

// Parse the JSON string back to an object
const exampleParsed = JSON.parse(exampleJSON) as FullShorten
console.log(exampleParsed)
```

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


