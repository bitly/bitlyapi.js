
# BulkUpdateRequest


## Properties

Name | Type
------------ | -------------
`action` | string
`archive` | boolean
`add_tags` | Array&lt;string&gt;
`remove_tags` | Array&lt;string&gt;
`links` | Array&lt;string&gt;

## Example

```typescript
import type { BulkUpdateRequest } from ''

// TODO: Update the object below with actual values
const example = {
  "action": null,
  "archive": null,
  "add_tags": null,
  "remove_tags": null,
  "links": null,
} satisfies BulkUpdateRequest

console.log(example)

// Convert the instance to a JSON string
const exampleJSON: string = JSON.stringify(example)
console.log(exampleJSON)

// Parse the JSON string back to an object
const exampleParsed = JSON.parse(exampleJSON) as BulkUpdateRequest
console.log(exampleParsed)
```

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


