
# YoutubeVideoRequest


## Properties

Name | Type
------------ | -------------
`video_url` | string
`thumbnail_url` | string
`link_title` | string
`domain` | string

## Example

```typescript
import type { YoutubeVideoRequest } from ''

// TODO: Update the object below with actual values
const example = {
  "video_url": youtube.com/embed/,
  "thumbnail_url": https://i.ytimg.com,
  "link_title": myvideo,
  "domain": bit.ly,
} satisfies YoutubeVideoRequest

console.log(example)

// Convert the instance to a JSON string
const exampleJSON: string = JSON.stringify(example)
console.log(exampleJSON)

// Parse the JSON string back to an object
const exampleParsed = JSON.parse(exampleJSON) as YoutubeVideoRequest
console.log(exampleParsed)
```

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


