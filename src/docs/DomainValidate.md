
# DomainValidate

custom domain in validation queue

## Properties

Name | Type
------------ | -------------
`organization_guid` | string
`custom_domain` | string
`domain` | string
`subdomain` | string
`group_guids` | Array&lt;string&gt;
`prevalidate` | boolean

## Example

```typescript
import type { DomainValidate } from ''

// TODO: Update the object below with actual values
const example = {
  "organization_guid": null,
  "custom_domain": null,
  "domain": null,
  "subdomain": null,
  "group_guids": null,
  "prevalidate": null,
} satisfies DomainValidate

console.log(example)

// Convert the instance to a JSON string
const exampleJSON: string = JSON.stringify(example)
console.log(exampleJSON)

// Parse the JSON string back to an object
const exampleParsed = JSON.parse(exampleJSON) as DomainValidate
console.log(exampleParsed)
```

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


