
# SiteRedirects


## Properties

Name | Type
------------ | -------------
`redirect_guid` | string
`microsite_guid` | string
`uri` | string
`domain` | string
`keyword` | string
`redirect_uri` | string
`redirect_domain` | string
`redirect_keyword` | string
`status` | string
`created` | string
`modified` | string

## Example

```typescript
import type { SiteRedirects } from ''

// TODO: Update the object below with actual values
const example = {
  "redirect_guid": E0000guid01,
  "microsite_guid": M1234567890,
  "uri": bit.ly/m/newKeyword,
  "domain": bit.ly,
  "keyword": newKeyword,
  "redirect_uri": bit.ly/m/oldKeyword,
  "redirect_domain": bit.ly,
  "redirect_keyword": oldKeyword,
  "status": active,
  "created": null,
  "modified": null,
} satisfies SiteRedirects

console.log(example)

// Convert the instance to a JSON string
const exampleJSON: string = JSON.stringify(example)
console.log(exampleJSON)

// Parse the JSON string back to an object
const exampleParsed = JSON.parse(exampleJSON) as SiteRedirects
console.log(exampleParsed)
```

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


