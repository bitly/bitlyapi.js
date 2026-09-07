
# BitlySite


## Properties

Name | Type
------------ | -------------
`site_guid` | string
`group_guid` | string
`status` | string
`is_edited` | boolean
`url` | string
`content` | [BitlySiteContent](BitlySiteContent.md)
`appearance` | [BitlySiteAppearance](BitlySiteAppearance.md)
`button_count` | number
`last_published` | string
`created` | string
`modified` | string
`qr_code_id` | string
`redirects` | [Array&lt;SiteRedirects&gt;](SiteRedirects.md)

## Example

```typescript
import type { BitlySite } from ''

// TODO: Update the object below with actual values
const example = {
  "site_guid": null,
  "group_guid": null,
  "status": null,
  "is_edited": null,
  "url": null,
  "content": null,
  "appearance": null,
  "button_count": null,
  "last_published": null,
  "created": null,
  "modified": null,
  "qr_code_id": null,
  "redirects": null,
} satisfies BitlySite

console.log(example)

// Convert the instance to a JSON string
const exampleJSON: string = JSON.stringify(example)
console.log(exampleJSON)

// Parse the JSON string back to an object
const exampleParsed = JSON.parse(exampleJSON) as BitlySite
console.log(exampleParsed)
```

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


