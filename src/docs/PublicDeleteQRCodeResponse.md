
# PublicDeleteQRCodeResponse

QR Code delete response

## Properties

Name | Type
------------ | -------------
`qrcodes_deleted` | [Array&lt;DeletedQRCode&gt;](DeletedQRCode.md)
`links_deleted` | [Array&lt;DeletedLink&gt;](DeletedLink.md)

## Example

```typescript
import type { PublicDeleteQRCodeResponse } from ''

// TODO: Update the object below with actual values
const example = {
  "qrcodes_deleted": null,
  "links_deleted": null,
} satisfies PublicDeleteQRCodeResponse

console.log(example)

// Convert the instance to a JSON string
const exampleJSON: string = JSON.stringify(example)
console.log(exampleJSON)

// Parse the JSON string back to an object
const exampleParsed = JSON.parse(exampleJSON) as PublicDeleteQRCodeResponse
console.log(exampleParsed)
```

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


