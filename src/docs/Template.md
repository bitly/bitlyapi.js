
# Template


## Properties

Name | Type
------------ | -------------
`template_guid` | string
`content` | [BitlySiteContent](BitlySiteContent.md)
`appearance` | [BitlySiteAppearance](BitlySiteAppearance.md)
`blocks` | [Array&lt;SiteBlock&gt;](SiteBlock.md)
`status` | string
`categories` | Array&lt;string&gt;
`created` | string
`modified` | string
`is_active` | boolean
`is_paid` | boolean

## Example

```typescript
import type { Template } from ''

// TODO: Update the object below with actual values
const example = {
  "template_guid": T1234567890,
  "content": null,
  "appearance": null,
  "blocks": null,
  "status": null,
  "categories": null,
  "created": null,
  "modified": null,
  "is_active": null,
  "is_paid": null,
} satisfies Template

console.log(example)

// Convert the instance to a JSON string
const exampleJSON: string = JSON.stringify(example)
console.log(exampleJSON)

// Parse the JSON string back to an object
const exampleParsed = JSON.parse(exampleJSON) as Template
console.log(exampleParsed)
```

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


