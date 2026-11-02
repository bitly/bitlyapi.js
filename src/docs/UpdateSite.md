
# UpdateSite


## Properties

Name | Type
------------ | -------------
`uri` | string
`display_name` | string
`description` | string
`qr_code_id` | string

## Example

```typescript
import type { UpdateSite } from ''

// TODO: Update the object below with actual values
const example = {
  "uri": bit.ly/m/bitlySocial,
  "display_name": Bitly Social,
  "description": All of our social links in one place,
  "qr_code_id": Qabc123,
} satisfies UpdateSite

console.log(example)

// Convert the instance to a JSON string
const exampleJSON: string = JSON.stringify(example)
console.log(exampleJSON)

// Parse the JSON string back to an object
const exampleParsed = JSON.parse(exampleJSON) as UpdateSite
console.log(exampleParsed)
```

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


