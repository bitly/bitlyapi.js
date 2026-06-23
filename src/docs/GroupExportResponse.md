
# GroupExportResponse


## Properties

Name | Type
------------ | -------------
`export_type` | string
`filename` | string
`media_type` | string
`row_count` | number
`column_count` | number
`columns` | Array&lt;string&gt;
`size_bytes` | number
`data_uri` | string
`unix_from` | number
`unix_to` | number
`truncated` | boolean

## Example

```typescript
import type { GroupExportResponse } from ''

// TODO: Update the object below with actual values
const example = {
  "export_type": null,
  "filename": null,
  "media_type": text/csv,
  "row_count": null,
  "column_count": null,
  "columns": null,
  "size_bytes": null,
  "data_uri": null,
  "unix_from": null,
  "unix_to": null,
  "truncated": null,
} satisfies GroupExportResponse

console.log(example)

// Convert the instance to a JSON string
const exampleJSON: string = JSON.stringify(example)
console.log(exampleJSON)

// Parse the JSON string back to an object
const exampleParsed = JSON.parse(exampleJSON) as GroupExportResponse
console.log(exampleParsed)
```

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


