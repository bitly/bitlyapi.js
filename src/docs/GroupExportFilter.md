
# GroupExportFilter

Search constraints used to resolve links or QR codes for export. Required for links_list and qr_codes_list.

## Properties

Name | Type
------------ | -------------
`tags` | Array&lt;string&gt;
`domain` | string
`archived` | string
`query` | string
`created_after` | number
`created_before` | number
`campaign_guid` | string

## Example

```typescript
import type { GroupExportFilter } from ''

// TODO: Update the object below with actual values
const example = {
  "tags": null,
  "domain": null,
  "archived": null,
  "query": null,
  "created_after": null,
  "created_before": null,
  "campaign_guid": null,
} satisfies GroupExportFilter

console.log(example)

// Convert the instance to a JSON string
const exampleJSON: string = JSON.stringify(example)
console.log(exampleJSON)

// Parse the JSON string back to an object
const exampleParsed = JSON.parse(exampleJSON) as GroupExportFilter
console.log(exampleParsed)
```

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


