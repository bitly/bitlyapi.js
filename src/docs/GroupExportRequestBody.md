
# GroupExportRequestBody


## Properties

Name | Type
------------ | -------------
`export_type` | string
`bitlinks` | Array&lt;string&gt;
`unix_from` | number
`unix_to` | number
`filter` | [GroupExportFilter](GroupExportFilter.md)
`include_metrics` | boolean

## Example

```typescript
import type { GroupExportRequestBody } from ''

// TODO: Update the object below with actual values
const example = {
  "export_type": null,
  "bitlinks": null,
  "unix_from": null,
  "unix_to": null,
  "filter": null,
  "include_metrics": null,
} satisfies GroupExportRequestBody

console.log(example)

// Convert the instance to a JSON string
const exampleJSON: string = JSON.stringify(example)
console.log(exampleJSON)

// Parse the JSON string back to an object
const exampleParsed = JSON.parse(exampleJSON) as GroupExportRequestBody
console.log(exampleParsed)
```

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


