
# PlanLimits


## Properties

Name | Type
------------ | -------------
`references` | { [key: string]: string; }
`organization_guid` | string
`plan_limits` | [Array&lt;PlanLimit&gt;](PlanLimit.md)

## Example

```typescript
import type { PlanLimits } from ''

// TODO: Update the object below with actual values
const example = {
  "references": null,
  "organization_guid": null,
  "plan_limits": null,
} satisfies PlanLimits

console.log(example)

// Convert the instance to a JSON string
const exampleJSON: string = JSON.stringify(example)
console.log(exampleJSON)

// Parse the JSON string back to an object
const exampleParsed = JSON.parse(exampleJSON) as PlanLimits
console.log(exampleParsed)
```

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


