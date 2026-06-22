
# Organization


## Properties

Name | Type
------------ | -------------
`references` | { [key: string]: string; }
`name` | string
`is_active` | boolean
`guid` | string
`tier` | string
`tier_family` | string
`tier_display_name` | string
`role` | string
`created` | string
`modified` | string
`bsds` | Array&lt;string&gt;
`require_sso` | string
`require_2fa` | string

## Example

```typescript
import type { Organization } from ''

// TODO: Update the object below with actual values
const example = {
  "references": null,
  "name": null,
  "is_active": null,
  "guid": null,
  "tier": null,
  "tier_family": null,
  "tier_display_name": null,
  "role": null,
  "created": null,
  "modified": null,
  "bsds": null,
  "require_sso": null,
  "require_2fa": null,
} satisfies Organization

console.log(example)

// Convert the instance to a JSON string
const exampleJSON: string = JSON.stringify(example)
console.log(exampleJSON)

// Parse the JSON string back to an object
const exampleParsed = JSON.parse(exampleJSON) as Organization
console.log(exampleParsed)
```

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


