
# EngagementSubtotal

Engagement-count subtotal for a single bitlink or decoupled QR code. The `id` references either a bitlink (`<domain>/<hash>`) or a QR code guid, and `engagements` is the combined count of bitlink clicks or QR code scans for that entity. 

## Properties

Name | Type
------------ | -------------
`engagements` | number
`id` | string

## Example

```typescript
import type { EngagementSubtotal } from ''

// TODO: Update the object below with actual values
const example = {
  "engagements": null,
  "id": null,
} satisfies EngagementSubtotal

console.log(example)

// Convert the instance to a JSON string
const exampleJSON: string = JSON.stringify(example)
console.log(exampleJSON)

// Parse the JSON string back to an object
const exampleParsed = JSON.parse(exampleJSON) as EngagementSubtotal
console.log(exampleParsed)
```

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


