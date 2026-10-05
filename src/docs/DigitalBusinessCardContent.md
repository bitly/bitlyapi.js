
# DigitalBusinessCardContent


## Properties

Name | Type
------------ | -------------
`digital_business_card_id` | string
`link_title` | string
`layout` | [DigitalBusinessCardLayout](DigitalBusinessCardLayout.md)
`first_name` | string
`last_name` | string
`pronouns` | string
`company` | string
`job_title` | string
`contacts` | [Array&lt;DigitalBusinessCardContact&gt;](DigitalBusinessCardContact.md)
`download_enabled` | boolean
`file` | [DigitalBusinessCardContentFile](DigitalBusinessCardContentFile.md)

## Example

```typescript
import type { DigitalBusinessCardContent } from ''

// TODO: Update the object below with actual values
const example = {
  "digital_business_card_id": null,
  "link_title": My Contact Info,
  "layout": null,
  "first_name": Jane,
  "last_name": Doe,
  "pronouns": she/them,
  "company": Bitly,
  "job_title": Developer,
  "contacts": null,
  "download_enabled": true,
  "file": null,
} satisfies DigitalBusinessCardContent

console.log(example)

// Convert the instance to a JSON string
const exampleJSON: string = JSON.stringify(example)
console.log(exampleJSON)

// Parse the JSON string back to an object
const exampleParsed = JSON.parse(exampleJSON) as DigitalBusinessCardContent
console.log(exampleParsed)
```

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


