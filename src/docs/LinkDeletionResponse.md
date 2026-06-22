
# LinkDeletionResponse


## Properties

Name | Type
------------ | -------------
`links_deleted` | [Array&lt;DeletedLink&gt;](DeletedLink.md)

## Example

```typescript
import type { LinkDeletionResponse } from ''

// TODO: Update the object below with actual values
const example = {
  "links_deleted": [{"id":"bit.ly/12a4b6c"},{"id":"chauncey.ly/documentation"}],
} satisfies LinkDeletionResponse

console.log(example)

// Convert the instance to a JSON string
const exampleJSON: string = JSON.stringify(example)
console.log(exampleJSON)

// Parse the JSON string back to an object
const exampleParsed = JSON.parse(exampleJSON) as LinkDeletionResponse
console.log(exampleParsed)
```

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


