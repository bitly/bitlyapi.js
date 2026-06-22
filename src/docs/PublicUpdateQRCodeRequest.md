
# PublicUpdateQRCodeRequest

Customization and content values for a QR code created through the public API

## Properties

Name | Type
------------ | -------------
`title` | string
`render_customizations` | [QRCodeCustomizationsPublic](QRCodeCustomizationsPublic.md)
`archived` | boolean
`expiration_at` | string
`tags` | Array&lt;string&gt;

## Example

```typescript
import type { PublicUpdateQRCodeRequest } from ''

// TODO: Update the object below with actual values
const example = {
  "title": null,
  "render_customizations": null,
  "archived": null,
  "expiration_at": null,
  "tags": null,
} satisfies PublicUpdateQRCodeRequest

console.log(example)

// Convert the instance to a JSON string
const exampleJSON: string = JSON.stringify(example)
console.log(exampleJSON)

// Parse the JSON string back to an object
const exampleParsed = JSON.parse(exampleJSON) as PublicUpdateQRCodeRequest
console.log(exampleParsed)
```

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


