
# ImageContent


## Properties

Name | Type
------------ | -------------
`image_guid` | string
`image_url` | string
`crop` | string
`aspect_ratio` | string
`link_title` | string
`description` | string
`bitlink_id` | string

## Example

```typescript
import type { ImageContent } from ''

// TODO: Update the object below with actual values
const example = {
  "image_guid": null,
  "image_url": null,
  "crop": {"Min": {"X": 0, "Y": 0}, "Max": {"X": 1, "Y": 1}},
  "aspect_ratio": 1:1,
  "link_title": my image,
  "description": more about my image,
  "bitlink_id": bit.ly/123,
} satisfies ImageContent

console.log(example)

// Convert the instance to a JSON string
const exampleJSON: string = JSON.stringify(example)
console.log(exampleJSON)

// Parse the JSON string back to an object
const exampleParsed = JSON.parse(exampleJSON) as ImageContent
console.log(exampleParsed)
```

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


