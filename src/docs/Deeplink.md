
# Deeplink


## Properties

Name | Type
------------ | -------------
`app_id` | string
`app_uri_path` | string
`install_url` | string
`install_type` | [InstallPreference](InstallPreference.md)

## Example

```typescript
import type { Deeplink } from ''

// TODO: Update the object below with actual values
const example = {
  "app_id": null,
  "app_uri_path": null,
  "install_url": null,
  "install_type": null,
} satisfies Deeplink

console.log(example)

// Convert the instance to a JSON string
const exampleJSON: string = JSON.stringify(example)
console.log(exampleJSON)

// Parse the JSON string back to an object
const exampleParsed = JSON.parse(exampleJSON) as Deeplink
console.log(exampleParsed)
```

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


