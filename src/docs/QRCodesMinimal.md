
# QRCodesMinimal

QR code paginated list Response

## Properties

Name | Type
------------ | -------------
`qr_codes` | [Array&lt;QRCodeMinimal&gt;](QRCodeMinimal.md)
`pagination` | [QRPagination](QRPagination.md)

## Example

```typescript
import type { QRCodesMinimal } from ''

// TODO: Update the object below with actual values
const example = {
  "qr_codes": null,
  "pagination": null,
} satisfies QRCodesMinimal

console.log(example)

// Convert the instance to a JSON string
const exampleJSON: string = JSON.stringify(example)
console.log(exampleJSON)

// Parse the JSON string back to an object
const exampleParsed = JSON.parse(exampleJSON) as QRCodesMinimal
console.log(exampleParsed)
```

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


