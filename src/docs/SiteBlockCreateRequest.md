
# SiteBlockCreateRequest


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
`type` | [SiteBlockCreateTypeEnum](SiteBlockCreateTypeEnum.md)

## Example

```typescript
import type { SiteBlockCreateRequest } from ''

// TODO: Update the object below with actual values
const example = {
  "content": null,
  "appearance": null,
  "schedule_start": null,
  "schedule_end": null,
  "is_active": null,
  "is_pinned": null,
  "parent": null,
  "type": null,
} satisfies SiteBlockCreateRequest

console.log(example)

// Convert the instance to a JSON string
const exampleJSON: string = JSON.stringify(example)
console.log(exampleJSON)

// Parse the JSON string back to an object
const exampleParsed = JSON.parse(exampleJSON) as SiteBlockCreateRequest
console.log(exampleParsed)
```

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


