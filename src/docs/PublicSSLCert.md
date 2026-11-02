
# PublicSSLCert

SSL Certification

## Properties

Name | Type
------------ | -------------
`valid_end` | string
`custom_cert` | boolean
`issuer` | string

## Example

```typescript
import type { PublicSSLCert } from ''

// TODO: Update the object below with actual values
const example = {
  "valid_end": null,
  "custom_cert": null,
  "issuer": null,
} satisfies PublicSSLCert

console.log(example)

// Convert the instance to a JSON string
const exampleJSON: string = JSON.stringify(example)
console.log(exampleJSON)

// Parse the JSON string back to an object
const exampleParsed = JSON.parse(exampleJSON) as PublicSSLCert
console.log(exampleParsed)
```

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


