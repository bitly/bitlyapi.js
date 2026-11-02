
# BitlinkUpdateBody


## Properties

Name | Type
------------ | -------------
`title` | string
`archived` | boolean
`tags` | Array&lt;string&gt;
`deeplinks` | [Array&lt;DeeplinkRule&gt;](DeeplinkRule.md)
`long_url` | string
`expiration_at` | string
`dynamic_routing` | [Array&lt;DynamicRoutingRule&gt;](DynamicRoutingRule.md)

## Example

```typescript
import type { BitlinkUpdateBody } from ''

// TODO: Update the object below with actual values
const example = {
  "title": null,
  "archived": null,
  "tags": null,
  "deeplinks": null,
  "long_url": null,
  "expiration_at": null,
  "dynamic_routing": null,
} satisfies BitlinkUpdateBody

console.log(example)

// Convert the instance to a JSON string
const exampleJSON: string = JSON.stringify(example)
console.log(exampleJSON)

// Parse the JSON string back to an object
const exampleParsed = JSON.parse(exampleJSON) as BitlinkUpdateBody
console.log(exampleParsed)
```

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


