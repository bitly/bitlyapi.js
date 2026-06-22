
# GroupFeatureUsage


## Properties

Name | Type
------------ | -------------
`group_guid` | string
`limit_usage` | [Array&lt;GroupConsumableFeatureUsage&gt;](GroupConsumableFeatureUsage.md)

## Example

```typescript
import type { GroupFeatureUsage } from ''

// TODO: Update the object below with actual values
const example = {
  "group_guid": null,
  "limit_usage": null,
} satisfies GroupFeatureUsage

console.log(example)

// Convert the instance to a JSON string
const exampleJSON: string = JSON.stringify(example)
console.log(exampleJSON)

// Parse the JSON string back to an object
const exampleParsed = JSON.parse(exampleJSON) as GroupFeatureUsage
console.log(exampleParsed)
```

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


