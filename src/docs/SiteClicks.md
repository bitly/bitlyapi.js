
# SiteClicks


## Properties

Name | Type
------------ | -------------
`clicks` | number
`title` | string
`is_active` | boolean
`long_url` | string
`type` | [SiteButtonTypeEnum](SiteButtonTypeEnum.md)
`bitlink_id` | string
`domain` | string
`keyword` | string

## Example

```typescript
import type { SiteClicks } from ''

// TODO: Update the object below with actual values
const example = {
  "clicks": null,
  "title": null,
  "is_active": null,
  "long_url": null,
  "type": null,
  "bitlink_id": null,
  "domain": null,
  "keyword": null,
} satisfies SiteClicks

console.log(example)

// Convert the instance to a JSON string
const exampleJSON: string = JSON.stringify(example)
console.log(exampleJSON)

// Parse the JSON string back to an object
const exampleParsed = JSON.parse(exampleJSON) as SiteClicks
console.log(exampleParsed)
```

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


