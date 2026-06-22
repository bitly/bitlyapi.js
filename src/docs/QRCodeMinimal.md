
# QRCodeMinimal


## Properties

Name | Type
------------ | -------------
`qrcode_id` | string
`group_guid` | string
`title` | string
`is_customized` | boolean
`serialized_content` | string
`qr_code_type` | [QRCodeTypeEnum](QRCodeTypeEnum.md)
`long_urls` | Array&lt;string&gt;
`bitlink_id` | string
`is_gs1` | boolean
`created_by` | string
`tags` | Array&lt;string&gt;
`archived` | boolean
`expiration_at` | string
`created` | string
`modified` | string

## Example

```typescript
import type { QRCodeMinimal } from ''

// TODO: Update the object below with actual values
const example = {
  "qrcode_id": null,
  "group_guid": null,
  "title": null,
  "is_customized": null,
  "serialized_content": null,
  "qr_code_type": null,
  "long_urls": null,
  "bitlink_id": null,
  "is_gs1": null,
  "created_by": null,
  "tags": null,
  "archived": null,
  "expiration_at": null,
  "created": null,
  "modified": null,
} satisfies QRCodeMinimal

console.log(example)

// Convert the instance to a JSON string
const exampleJSON: string = JSON.stringify(example)
console.log(exampleJSON)

// Parse the JSON string back to an object
const exampleParsed = JSON.parse(exampleJSON) as QRCodeMinimal
console.log(exampleParsed)
```

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


