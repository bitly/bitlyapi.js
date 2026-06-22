
# TopLinksAndQRCodes

Response shape for top bitlinks and decoupled QR codes in a group, ranked together by engagement count. `links` and `qr_codes` are independent lists (a link and a decoupled QR code are never the same entity); `sorted_engagements` is the unified descending-by-engagement ordering across both, with each entry\'s id referencing either a bitlink or a QR code guid. Coupled QRCs are listed by their bitlink ID. 

## Properties

Name | Type
------------ | -------------
`links` | [Array&lt;BitlinkBody&gt;](BitlinkBody.md)
`qr_codes` | [Array&lt;QRCodeMinimal&gt;](QRCodeMinimal.md)
`sorted_engagements` | [Array&lt;EngagementSubtotal&gt;](EngagementSubtotal.md)

## Example

```typescript
import type { TopLinksAndQRCodes } from ''

// TODO: Update the object below with actual values
const example = {
  "links": null,
  "qr_codes": null,
  "sorted_engagements": null,
} satisfies TopLinksAndQRCodes

console.log(example)

// Convert the instance to a JSON string
const exampleJSON: string = JSON.stringify(example)
console.log(exampleJSON)

// Parse the JSON string back to an object
const exampleParsed = JSON.parse(exampleJSON) as TopLinksAndQRCodes
console.log(exampleParsed)
```

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


