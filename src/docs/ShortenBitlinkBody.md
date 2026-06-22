
# ShortenBitlinkBody


## Properties

Name | Type
------------ | -------------
`references` | { [key: string]: string; }
`link` | string
`id` | string
`long_url` | string
`archived` | boolean
`created_at` | string
`custom_bitlinks` | Array&lt;string&gt;
`tags` | Array&lt;string&gt;
`deeplinks` | [Array&lt;DeeplinkRule&gt;](DeeplinkRule.md)

## Example

```typescript
import type { ShortenBitlinkBody } from ''

// TODO: Update the object below with actual values
const example = {
  "references": null,
  "link": null,
  "id": null,
  "long_url": null,
  "archived": null,
  "created_at": null,
  "custom_bitlinks": null,
  "tags": null,
  "deeplinks": null,
} satisfies ShortenBitlinkBody

console.log(example)

// Convert the instance to a JSON string
const exampleJSON: string = JSON.stringify(example)
console.log(exampleJSON)

// Parse the JSON string back to an object
const exampleParsed = JSON.parse(exampleJSON) as ShortenBitlinkBody
console.log(exampleParsed)
```

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


