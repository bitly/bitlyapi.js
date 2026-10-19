
# CreateLaunchpad

@deprecated LL-2507

## Properties

Name | Type
------------ | -------------
`group_guid` | string
`domain` | string
`keyword` | string
`uri` | string

## Example

```typescript
import type { CreateLaunchpad } from ''

// TODO: Update the object below with actual values
const example = {
  "group_guid": B1234567890,
  "domain": bit.ly,
  "keyword": bitlySocial,
  "uri": bit.ly/m/bitlySocial,
} satisfies CreateLaunchpad

console.log(example)

// Convert the instance to a JSON string
const exampleJSON: string = JSON.stringify(example)
console.log(exampleJSON)

// Parse the JSON string back to an object
const exampleParsed = JSON.parse(exampleJSON) as CreateLaunchpad
console.log(exampleParsed)
```

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


