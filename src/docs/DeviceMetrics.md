
# DeviceMetrics


## Properties

Name | Type
------------ | -------------
`unit` | string
`units` | number
`facet` | string
`unit_reference` | string
`metrics` | [Array&lt;DeviceMetric&gt;](DeviceMetric.md)

## Example

```typescript
import type { DeviceMetrics } from ''

// TODO: Update the object below with actual values
const example = {
  "unit": null,
  "units": null,
  "facet": null,
  "unit_reference": null,
  "metrics": null,
} satisfies DeviceMetrics

console.log(example)

// Convert the instance to a JSON string
const exampleJSON: string = JSON.stringify(example)
console.log(exampleJSON)

// Parse the JSON string back to an object
const exampleParsed = JSON.parse(exampleJSON) as DeviceMetrics
console.log(exampleParsed)
```

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


