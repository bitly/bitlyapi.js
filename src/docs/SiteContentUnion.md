
# SiteContentUnion


## Properties

Name | Type
------------ | -------------
`bitlink_id` | string
`link_title` | string
`description` | string
`is_pinned` | boolean
`image_url` | string
`image_guid` | string
`crop` | string
`video_url` | string
`thumbnail_url` | string
`domain` | string
`url` | string
`channel` | string
`aspect_ratio` | string
`digital_business_card_id` | string
`layout` | [DigitalBusinessCardLayout](DigitalBusinessCardLayout.md)
`first_name` | string
`last_name` | string
`pronouns` | string
`company` | string
`job_title` | string
`contacts` | [Array&lt;DigitalBusinessCardContact&gt;](DigitalBusinessCardContact.md)
`download_enabled` | boolean
`file` | [DigitalBusinessCardContentFile](DigitalBusinessCardContentFile.md)
`text` | string

## Example

```typescript
import type { SiteContentUnion } from ''

// TODO: Update the object below with actual values
const example = {
  "bitlink_id": bit.ly/123,
  "link_title": My Contact Info,
  "description": more about my image,
  "is_pinned": null,
  "image_url": null,
  "image_guid": null,
  "crop": {"Min": {"X": 0, "Y": 0}, "Max": {"X": 1, "Y": 1}},
  "video_url": youtube.com/embed/,
  "thumbnail_url": https://i.ytimg.com,
  "domain": bit.ly,
  "url": facebook.com/profile,
  "channel": facebook,
  "aspect_ratio": 1:1,
  "digital_business_card_id": null,
  "layout": null,
  "first_name": Jane,
  "last_name": Doe,
  "pronouns": she/them,
  "company": Bitly,
  "job_title": Developer,
  "contacts": null,
  "download_enabled": true,
  "file": null,
  "text": Hello, world!,
} satisfies SiteContentUnion

console.log(example)

// Convert the instance to a JSON string
const exampleJSON: string = JSON.stringify(example)
console.log(exampleJSON)

// Parse the JSON string back to an object
const exampleParsed = JSON.parse(exampleJSON) as SiteContentUnion
console.log(exampleParsed)
```

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


