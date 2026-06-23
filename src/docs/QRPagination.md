
# QRPagination

This object specifies how to query the next set of results.

## Properties

Name | Type
------------ | -------------
`next` | string
`search_after` | string
`size` | number

## Example

```typescript
import type { QRPagination } from ''

// TODO: Update the object below with actual values
const example = {
  "next": null,
  "search_after": Qn8sfFRC2tm,
  "size": 50,
} satisfies QRPagination

console.log(example)

// Convert the instance to a JSON string
const exampleJSON: string = JSON.stringify(example)
console.log(exampleJSON)

// Parse the JSON string back to an object
const exampleParsed = JSON.parse(exampleJSON) as QRPagination
console.log(exampleParsed)
```

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


