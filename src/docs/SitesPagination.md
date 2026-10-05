
# SitesPagination


## Properties

Name | Type
------------ | -------------
`prev` | string
`next` | string
`page` | number
`total` | number
`size` | number

## Example

```typescript
import type { SitesPagination } from ''

// TODO: Update the object below with actual values
const example = {
  "prev": null,
  "next": null,
  "page": null,
  "total": null,
  "size": null,
} satisfies SitesPagination

console.log(example)

// Convert the instance to a JSON string
const exampleJSON: string = JSON.stringify(example)
console.log(exampleJSON)

// Parse the JSON string back to an object
const exampleParsed = JSON.parse(exampleJSON) as SitesPagination
console.log(exampleParsed)
```

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


