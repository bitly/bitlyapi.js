
# SiteLinkPerformance


## Properties

Name | Type
------------ | -------------
`total` | number
`link_clicks` | [Array&lt;SiteClicks&gt;](SiteClicks.md)
`performance_start` | string
`performance_end` | string
`units` | number
`unit` | string
`unit_reference` | string
`page` | [SitesPagination](SitesPagination.md)

## Example

```typescript
import type { SiteLinkPerformance } from ''

// TODO: Update the object below with actual values
const example = {
  "total": null,
  "link_clicks": null,
  "performance_start": null,
  "performance_end": null,
  "units": null,
  "unit": null,
  "unit_reference": null,
  "page": null,
} satisfies SiteLinkPerformance

console.log(example)

// Convert the instance to a JSON string
const exampleJSON: string = JSON.stringify(example)
console.log(exampleJSON)

// Parse the JSON string back to an object
const exampleParsed = JSON.parse(exampleJSON) as SiteLinkPerformance
console.log(exampleParsed)
```

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


