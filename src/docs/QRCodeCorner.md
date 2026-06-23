
# QRCodeCorner

Represents one corner, both inner and outer, of a QR code, with color and shape values

## Properties

Name | Type
------------ | -------------
`inner_color` | string
`outer_color` | string
`shape` | string

## Example

```typescript
import type { QRCodeCorner } from ''

// TODO: Update the object below with actual values
const example = {
  "inner_color": null,
  "outer_color": null,
  "shape": null,
} satisfies QRCodeCorner

console.log(example)

// Convert the instance to a JSON string
const exampleJSON: string = JSON.stringify(example)
console.log(exampleJSON)

// Parse the JSON string back to an object
const exampleParsed = JSON.parse(exampleJSON) as QRCodeCorner
console.log(exampleParsed)
```

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


