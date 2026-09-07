
# SiteBlock


## Properties

Name | Type
------------ | -------------
`site_id` | string
`block_id` | string
`sort_order` | number
`schedule_start` | string
`schedule_end` | string
`is_active` | boolean
`is_pinned` | boolean
`is_sample` | boolean
`type` | [SiteBlockTypeEnum](SiteBlockTypeEnum.md)
`container_id` | string
`scheme` | string
`content` | any
`appearance` | any

## Example

```typescript
import type { SiteBlock } from ''

// TODO: Update the object below with actual values
const example = {
  "site_id": M1234567890,
  "block_id": L1234567890,
  "sort_order": null,
  "schedule_start": null,
  "schedule_end": null,
  "is_active": null,
  "is_pinned": null,
  "is_sample": null,
  "type": null,
  "container_id": L1234567890,
  "scheme": https,
  "content": null,
  "appearance": null,
} satisfies SiteBlock

console.log(example)

// Convert the instance to a JSON string
const exampleJSON: string = JSON.stringify(example)
console.log(exampleJSON)

// Parse the JSON string back to an object
const exampleParsed = JSON.parse(exampleJSON) as SiteBlock
console.log(exampleParsed)
```

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


