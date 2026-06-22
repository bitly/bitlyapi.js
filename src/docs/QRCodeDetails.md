
# QRCodeDetails


## Properties

Name | Type
------------ | -------------
`qrcode_id` | string
`group_guid` | string
`title` | string
`gs1` | [GS1Metadata](GS1Metadata.md)
`render_customizations` | [QRCodeCustomizationsPublic](QRCodeCustomizationsPublic.md)
`qr_code_type` | [QRCodeTypeEnum](QRCodeTypeEnum.md)
`bitlink_id` | string
`long_urls` | Array&lt;string&gt;
`serialized_content` | string
`archived` | boolean
`created` | string
`modified` | string
`expiration_at` | string
`tags` | Array&lt;string&gt;

## Example

```typescript
import type { QRCodeDetails } from ''

// TODO: Update the object below with actual values
const example = {
  "qrcode_id": null,
  "group_guid": null,
  "title": null,
  "gs1": null,
  "render_customizations": null,
  "qr_code_type": null,
  "bitlink_id": null,
  "long_urls": null,
  "serialized_content": null,
  "archived": null,
  "created": null,
  "modified": null,
  "expiration_at": null,
  "tags": null,
} satisfies QRCodeDetails

console.log(example)

// Convert the instance to a JSON string
const exampleJSON: string = JSON.stringify(example)
console.log(exampleJSON)

// Parse the JSON string back to an object
const exampleParsed = JSON.parse(exampleJSON) as QRCodeDetails
console.log(exampleParsed)
```

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


