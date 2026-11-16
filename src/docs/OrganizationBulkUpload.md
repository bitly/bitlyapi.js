
# OrganizationBulkUpload


## Properties

Name | Type
------------ | -------------
`id` | string
`group_guid` | string
`upload_type` | string
`domain` | string
`status` | string
`created_at` | string
`upload_url` | string
`headers` | { [key: string]: string; }
`upload_url_expires_at` | string
`report_url` | string

## Example

```typescript
import type { OrganizationBulkUpload } from ''

// TODO: Update the object below with actual values
const example = {
  "id": null,
  "group_guid": null,
  "upload_type": null,
  "domain": null,
  "status": null,
  "created_at": null,
  "upload_url": null,
  "headers": null,
  "upload_url_expires_at": null,
  "report_url": null,
} satisfies OrganizationBulkUpload

console.log(example)

// Convert the instance to a JSON string
const exampleJSON: string = JSON.stringify(example)
console.log(exampleJSON)

// Parse the JSON string back to an object
const exampleParsed = JSON.parse(exampleJSON) as OrganizationBulkUpload
console.log(exampleParsed)
```

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


