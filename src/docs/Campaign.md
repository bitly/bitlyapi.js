
# Campaign


## Properties

Name | Type
------------ | -------------
`references` | { [key: string]: string; }
`guid` | string
`group_guid` | string
`created_by` | string
`name` | string
`description` | string
`created` | string
`modified` | string

## Example

```typescript
import type { Campaign } from ''

// TODO: Update the object below with actual values
const example = {
  "references": null,
  "guid": null,
  "group_guid": null,
  "created_by": null,
  "name": null,
  "description": null,
  "created": null,
  "modified": null,
} satisfies Campaign

console.log(example)

// Convert the instance to a JSON string
const exampleJSON: string = JSON.stringify(example)
console.log(exampleJSON)

// Parse the JSON string back to an object
const exampleParsed = JSON.parse(exampleJSON) as Campaign
console.log(exampleParsed)
```

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


