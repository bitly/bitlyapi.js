
# PageLinkInfo

Versioned bitlink data from decodes_api for rendering links on Sites and Launchpads

## Properties

Name | Type
------------ | -------------
`link` | string
`long_url` | string
`expiration_at` | number
`has_override` | boolean
`is_override` | boolean
`is_deleted` | boolean
`dynamic_routing` | [Array&lt;DynamicRoutingRule&gt;](DynamicRoutingRule.md)

## Example

```typescript
import type { PageLinkInfo } from ''

// TODO: Update the object below with actual values
const example = {
  "link": null,
  "long_url": null,
  "expiration_at": null,
  "has_override": null,
  "is_override": null,
  "is_deleted": null,
  "dynamic_routing": null,
} satisfies PageLinkInfo

console.log(example)

// Convert the instance to a JSON string
const exampleJSON: string = JSON.stringify(example)
console.log(exampleJSON)

// Parse the JSON string back to an object
const exampleParsed = JSON.parse(exampleJSON) as PageLinkInfo
console.log(exampleParsed)
```

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


