
# SiteViewMetrics


## Properties

Name | Type
------------ | -------------
`site_views` | [Array&lt;ViewMetric&gt;](ViewMetric.md)
`units` | number
`unit` | string
`unit_reference` | string
`facet` | string

## Example

```typescript
import type { SiteViewMetrics } from ''

// TODO: Update the object below with actual values
const example = {
  "site_views": null,
  "units": null,
  "unit": null,
  "unit_reference": null,
  "facet": null,
} satisfies SiteViewMetrics

console.log(example)

// Convert the instance to a JSON string
const exampleJSON: string = JSON.stringify(example)
console.log(exampleJSON)

// Parse the JSON string back to an object
const exampleParsed = JSON.parse(exampleJSON) as SiteViewMetrics
console.log(exampleParsed)
```

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


