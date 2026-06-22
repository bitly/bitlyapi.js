
# ChannelModify


## Properties

Name | Type
------------ | -------------
`name` | string
`guid` | string
`created` | string
`modified` | string
`group_guid` | string
`bitlinks` | [Array&lt;BaseChannelBitlink&gt;](BaseChannelBitlink.md)

## Example

```typescript
import type { ChannelModify } from ''

// TODO: Update the object below with actual values
const example = {
  "name": null,
  "guid": null,
  "created": null,
  "modified": null,
  "group_guid": null,
  "bitlinks": null,
} satisfies ChannelModify

console.log(example)

// Convert the instance to a JSON string
const exampleJSON: string = JSON.stringify(example)
console.log(exampleJSON)

// Parse the JSON string back to an object
const exampleParsed = JSON.parse(exampleJSON) as ChannelModify
console.log(exampleParsed)
```

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


