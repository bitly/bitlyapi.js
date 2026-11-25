
# BlockContentDigitalBusinessCard


## Properties

Name | Type
------------ | -------------
`digital_business_card_id` | string
`layout` | [DigitalBusinessCardLayout](DigitalBusinessCardLayout.md)
`first_name` | string
`last_name` | string
`job_title` | string
`company` | string
`pronouns` | string
`contacts` | [Array&lt;DigitalBusinessCardContact&gt;](DigitalBusinessCardContact.md)
`download_enabled` | boolean

## Example

```typescript
import type { BlockContentDigitalBusinessCard } from ''

// TODO: Update the object below with actual values
const example = {
  "digital_business_card_id": null,
  "layout": null,
  "first_name": null,
  "last_name": null,
  "job_title": null,
  "company": null,
  "pronouns": null,
  "contacts": null,
  "download_enabled": true,
} satisfies BlockContentDigitalBusinessCard

console.log(example)

// Convert the instance to a JSON string
const exampleJSON: string = JSON.stringify(example)
console.log(exampleJSON)

// Parse the JSON string back to an object
const exampleParsed = JSON.parse(exampleJSON) as BlockContentDigitalBusinessCard
console.log(exampleParsed)
```

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


