
# Group


## Properties

Name | Type
------------ | -------------
`references` | { [key: string]: string; }
`name` | string
`guid` | string
`created` | string
`modified` | string
`is_active` | boolean
`role` | string
`organization_guid` | string
`bsds` | Array&lt;string&gt;

## Example

```typescript
import type { Group } from ''

// TODO: Update the object below with actual values
const example = {
  "references": null,
  "name": null,
  "guid": null,
  "created": null,
  "modified": null,
  "is_active": null,
  "role": null,
  "organization_guid": null,
  "bsds": null,
} satisfies Group

console.log(example)

// Convert the instance to a JSON string
const exampleJSON: string = JSON.stringify(example)
console.log(exampleJSON)

// Parse the JSON string back to an object
const exampleParsed = JSON.parse(exampleJSON) as Group
console.log(exampleParsed)
```

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


