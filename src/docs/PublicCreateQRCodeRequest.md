
# PublicCreateQRCodeRequest

Customization and content values for a QR code created through the public API

## Properties

Name | Type
------------ | -------------
`title` | string
`group_guid` | string
`render_customizations` | [QRCodeCustomizationsPublic](QRCodeCustomizationsPublic.md)
`archived` | boolean
`destination` | [QRCodeDestination](QRCodeDestination.md)
`gs1` | [GS1Metadata](GS1Metadata.md)
`expiration_at` | string
`tags` | Array&lt;string&gt;

## Example

```typescript
import type { PublicCreateQRCodeRequest } from ''

// TODO: Update the object below with actual values
const example = {
  "title": null,
  "group_guid": null,
  "render_customizations": null,
  "archived": null,
  "destination": null,
  "gs1": null,
  "expiration_at": null,
  "tags": null,
} satisfies PublicCreateQRCodeRequest

console.log(example)

// Convert the instance to a JSON string
const exampleJSON: string = JSON.stringify(example)
console.log(exampleJSON)

// Parse the JSON string back to an object
const exampleParsed = JSON.parse(exampleJSON) as PublicCreateQRCodeRequest
console.log(exampleParsed)
```

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


