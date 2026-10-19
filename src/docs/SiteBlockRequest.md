
# SiteBlockRequest


## Properties

Name | Type
------------ | -------------
`content` | [SiteContentUnion](SiteContentUnion.md)
`appearance` | [TextBlockAppearanceRequest](TextBlockAppearanceRequest.md)
`schedule_start` | string
`schedule_end` | string
`is_active` | boolean
`is_pinned` | boolean
`parent` | string

## Example

```typescript
import type { SiteBlockRequest } from ''

// TODO: Update the object below with actual values
const example = {
  "content": null,
  "appearance": null,
  "schedule_start": null,
  "schedule_end": null,
  "is_active": null,
  "is_pinned": null,
  "parent": null,
} satisfies SiteBlockRequest

console.log(example)

// Convert the instance to a JSON string
const exampleJSON: string = JSON.stringify(example)
console.log(exampleJSON)

// Parse the JSON string back to an object
const exampleParsed = JSON.parse(exampleJSON) as SiteBlockRequest
console.log(exampleParsed)
```

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


