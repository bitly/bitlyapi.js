
# GetGroupTopCodeScans200Response


## Properties

Name | Type
------------ | -------------
`links` | [Array&lt;BitlinkBody&gt;](BitlinkBody.md)
`sorted_links` | [Array&lt;ClickLink&gt;](ClickLink.md)
`qr_codes` | [Array&lt;QRCodeMinimal&gt;](QRCodeMinimal.md)
`sorted_engagements` | [Array&lt;EngagementSubtotal&gt;](EngagementSubtotal.md)

## Example

```typescript
import type { GetGroupTopCodeScans200Response } from ''

// TODO: Update the object below with actual values
const example = {
  "links": null,
  "sorted_links": null,
  "qr_codes": null,
  "sorted_engagements": null,
} satisfies GetGroupTopCodeScans200Response

console.log(example)

// Convert the instance to a JSON string
const exampleJSON: string = JSON.stringify(example)
console.log(exampleJSON)

// Parse the JSON string back to an object
const exampleParsed = JSON.parse(exampleJSON) as GetGroupTopCodeScans200Response
console.log(exampleParsed)
```

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


