
# QRCodeCorners

An object representing all three corners of the QR code. The corners corresponding to each property are: corner_1 = top left, corner_2 = top right, and corner_3 = bottom right

## Properties

Name | Type
------------ | -------------
`corner_1` | [QRCodeCorner](QRCodeCorner.md)
`corner_2` | [QRCodeCorner](QRCodeCorner.md)
`corner_3` | [QRCodeCorner](QRCodeCorner.md)

## Example

```typescript
import type { QRCodeCorners } from ''

// TODO: Update the object below with actual values
const example = {
  "corner_1": null,
  "corner_2": null,
  "corner_3": null,
} satisfies QRCodeCorners

console.log(example)

// Convert the instance to a JSON string
const exampleJSON: string = JSON.stringify(example)
console.log(exampleJSON)

// Parse the JSON string back to an object
const exampleParsed = JSON.parse(exampleJSON) as QRCodeCorners
console.log(exampleParsed)
```

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


