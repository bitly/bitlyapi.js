
# SiteBlockContent


## Properties

Name | Type
------------ | -------------
`thumbnail_url` | string
`channel` | string
`channel_url` | string
`digital_business_card_id` | string
`layout` | [DigitalBusinessCardLayout](DigitalBusinessCardLayout.md)
`first_name` | string
`last_name` | string
`job_title` | string
`company` | string
`pronouns` | string
`contacts` | [Array&lt;DigitalBusinessCardContact&gt;](DigitalBusinessCardContact.md)
`download_enabled` | boolean
`link_title` | string
`description` | string
`bitlink_id` | string
`image_guid` | string
`image_url` | string
`crop` | string
`aspect_ratio` | string
`link_info` | [PageLinkInfo](PageLinkInfo.md)

## Example

```typescript
import type { SiteBlockContent } from ''

// TODO: Update the object below with actual values
const example = {
  "thumbnail_url": null,
  "channel": null,
  "channel_url": null,
  "digital_business_card_id": null,
  "layout": null,
  "first_name": null,
  "last_name": null,
  "job_title": null,
  "company": null,
  "pronouns": null,
  "contacts": null,
  "download_enabled": true,
  "link_title": null,
  "description": null,
  "bitlink_id": null,
  "image_guid": null,
  "image_url": null,
  "crop": {"Min": {"X": 0, "Y": 0}, "Max": {"X": 1, "Y": 1}},
  "aspect_ratio": null,
  "link_info": null,
} satisfies SiteBlockContent

console.log(example)

// Convert the instance to a JSON string
const exampleJSON: string = JSON.stringify(example)
console.log(exampleJSON)

// Parse the JSON string back to an object
const exampleParsed = JSON.parse(exampleJSON) as SiteBlockContent
console.log(exampleParsed)
```

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


