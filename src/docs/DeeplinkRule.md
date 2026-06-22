
# DeeplinkRule


## Properties

Name | Type
------------ | -------------
`guid` | string
`bitlink` | string
`app_uri_path` | string
`install_url` | string
`app_guid` | string
`os` | [MobileOS](MobileOS.md)
`install_type` | [InstallPreference](InstallPreference.md)
`created` | string
`modified` | string
`brand_guid` | string

## Example

```typescript
import type { DeeplinkRule } from ''

// TODO: Update the object below with actual values
const example = {
  "guid": null,
  "bitlink": null,
  "app_uri_path": null,
  "install_url": null,
  "app_guid": null,
  "os": null,
  "install_type": null,
  "created": null,
  "modified": null,
  "brand_guid": null,
} satisfies DeeplinkRule

console.log(example)

// Convert the instance to a JSON string
const exampleJSON: string = JSON.stringify(example)
console.log(exampleJSON)

// Parse the JSON string back to an object
const exampleParsed = JSON.parse(exampleJSON) as DeeplinkRule
console.log(exampleParsed)
```

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


