
# BitlinkContent


## Properties

Name | Type
------------ | -------------
`bitlink_id` | string
`link_title` | string
`description` | string
`is_pinned` | boolean
`image_url` | string
`image_guid` | string
`crop` | string

## Example

```typescript
import type { BitlinkContent } from ''

// TODO: Update the object below with actual values
const example = {
  "bitlink_id": bit.ly/GzmMT6,
  "link_title": Short links, big results,
  "description": my description,
  "is_pinned": null,
  "image_url": null,
  "image_guid": null,
  "crop": {"Min": {"X": 0, "Y": 0}, "Max": {"X": 1, "Y": 1}},
} satisfies BitlinkContent

console.log(example)

// Convert the instance to a JSON string
const exampleJSON: string = JSON.stringify(example)
console.log(exampleJSON)

// Parse the JSON string back to an object
const exampleParsed = JSON.parse(exampleJSON) as BitlinkContent
console.log(exampleParsed)
```

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


