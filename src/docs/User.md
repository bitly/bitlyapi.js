
# User


## Properties

Name | Type
------------ | -------------
`login` | string
`name` | string
`is_active` | boolean
`created` | string
`modified` | string
`is_sso_user` | boolean
`emails` | [Array&lt;Email&gt;](Email.md)
`is_2fa_enabled` | boolean
`default_group_guid` | string

## Example

```typescript
import type { User } from ''

// TODO: Update the object below with actual values
const example = {
  "login": null,
  "name": null,
  "is_active": null,
  "created": null,
  "modified": null,
  "is_sso_user": null,
  "emails": null,
  "is_2fa_enabled": null,
  "default_group_guid": null,
} satisfies User

console.log(example)

// Convert the instance to a JSON string
const exampleJSON: string = JSON.stringify(example)
console.log(exampleJSON)

// Parse the JSON string back to an object
const exampleParsed = JSON.parse(exampleJSON) as User
console.log(exampleParsed)
```

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


