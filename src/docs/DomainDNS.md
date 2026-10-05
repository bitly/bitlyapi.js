
# DomainDNS


## Properties

Name | Type
------------ | -------------
`domain` | string
`dns_provider` | string
`type` | string
`records` | Array&lt;string&gt;
`required_records` | [Array&lt;DomainDNSRequiredRecordsInner&gt;](DomainDNSRequiredRecordsInner.md)
`records_valid` | boolean

## Example

```typescript
import type { DomainDNS } from ''

// TODO: Update the object below with actual values
const example = {
  "domain": null,
  "dns_provider": godaddy,
  "type": null,
  "records": null,
  "required_records": null,
  "records_valid": null,
} satisfies DomainDNS

console.log(example)

// Convert the instance to a JSON string
const exampleJSON: string = JSON.stringify(example)
console.log(exampleJSON)

// Parse the JSON string back to an object
const exampleParsed = JSON.parse(exampleJSON) as DomainDNS
console.log(exampleParsed)
```

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


