
# CustomBitlink


## Properties

Name | Type
------------ | -------------
`custom_bitlink` | string
`bitlink` | [BitlinkBody](BitlinkBody.md)
`bitlink_history` | [Array&lt;CustomBitlinkHistory&gt;](CustomBitlinkHistory.md)

## Example

```typescript
import type { CustomBitlink } from ''

// TODO: Update the object below with actual values
const example = {
  "custom_bitlink": null,
  "bitlink": null,
  "bitlink_history": null,
} satisfies CustomBitlink

console.log(example)

// Convert the instance to a JSON string
const exampleJSON: string = JSON.stringify(example)
console.log(exampleJSON)

// Parse the JSON string back to an object
const exampleParsed = JSON.parse(exampleJSON) as CustomBitlink
console.log(exampleParsed)
```

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


