
# BitlySites


## Properties

Name | Type
------------ | -------------
`group_guid` | string
`sites` | [Array&lt;BitlySite&gt;](BitlySite.md)
`pagination` | [MicrositePagination](MicrositePagination.md)

## Example

```typescript
import type { BitlySites } from ''

// TODO: Update the object below with actual values
const example = {
  "group_guid": null,
  "sites": null,
  "pagination": null,
} satisfies BitlySites

console.log(example)

// Convert the instance to a JSON string
const exampleJSON: string = JSON.stringify(example)
console.log(exampleJSON)

// Parse the JSON string back to an object
const exampleParsed = JSON.parse(exampleJSON) as BitlySites
console.log(exampleParsed)
```

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


