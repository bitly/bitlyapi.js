
# GroupHistoricalUsage


## Properties

Name | Type
------------ | -------------
`group_guid` | string
`unit` | string
`start_date` | string
`end_date` | string
`historical_limit_usage` | [Array&lt;HistoricalFeatureUsage&gt;](HistoricalFeatureUsage.md)

## Example

```typescript
import type { GroupHistoricalUsage } from ''

// TODO: Update the object below with actual values
const example = {
  "group_guid": null,
  "unit": null,
  "start_date": null,
  "end_date": null,
  "historical_limit_usage": null,
} satisfies GroupHistoricalUsage

console.log(example)

// Convert the instance to a JSON string
const exampleJSON: string = JSON.stringify(example)
console.log(exampleJSON)

// Parse the JSON string back to an object
const exampleParsed = JSON.parse(exampleJSON) as GroupHistoricalUsage
console.log(exampleParsed)
```

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


