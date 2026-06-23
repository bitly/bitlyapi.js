
# PublicCreateStaticQRCodeRequest

Request body for generating a static QR code image. Customizations such as gradient, background_gradient, frame, text and logo are not supported.

## Properties

Name | Type
------------ | -------------
`content` | string
`group_guid` | string
`render_customizations` | [QRCodeCustomizationsStaticPublic](QRCodeCustomizationsStaticPublic.md)

## Example

```typescript
import type { PublicCreateStaticQRCodeRequest } from ''

// TODO: Update the object below with actual values
const example = {
  "content": https://bitly.com,
  "group_guid": Ba1bc23dE4F,
  "render_customizations": null,
} satisfies PublicCreateStaticQRCodeRequest

console.log(example)

// Convert the instance to a JSON string
const exampleJSON: string = JSON.stringify(example)
console.log(exampleJSON)

// Parse the JSON string back to an object
const exampleParsed = JSON.parse(exampleJSON) as PublicCreateStaticQRCodeRequest
console.log(exampleParsed)
```

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


