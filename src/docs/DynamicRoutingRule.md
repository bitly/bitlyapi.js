
# DynamicRoutingRule

A dynamic routing rule that redirects traffic to a different destination based on user attributes.

## Properties

Name | Type
------------ | -------------
`long_url` | string
`country_match` | Array&lt;string&gt;
`country_exclude` | Array&lt;string&gt;
`region_match` | Array&lt;string&gt;
`region_exclude` | Array&lt;string&gt;
`device_match` | [Array&lt;DynamicRoutingDeviceEnum&gt;](DynamicRoutingDeviceEnum.md)
`device_exclude` | [Array&lt;DynamicRoutingDeviceEnum&gt;](DynamicRoutingDeviceEnum.md)
`os_match` | [Array&lt;DynamicRoutingPlatformEnum&gt;](DynamicRoutingPlatformEnum.md)
`os_exclude` | [Array&lt;DynamicRoutingPlatformEnum&gt;](DynamicRoutingPlatformEnum.md)

## Example

```typescript
import type { DynamicRoutingRule } from ''

// TODO: Update the object below with actual values
const example = {
  "long_url": null,
  "country_match": null,
  "country_exclude": null,
  "region_match": null,
  "region_exclude": null,
  "device_match": null,
  "device_exclude": null,
  "os_match": null,
  "os_exclude": null,
} satisfies DynamicRoutingRule

console.log(example)

// Convert the instance to a JSON string
const exampleJSON: string = JSON.stringify(example)
console.log(exampleJSON)

// Parse the JSON string back to an object
const exampleParsed = JSON.parse(exampleJSON) as DynamicRoutingRule
console.log(exampleParsed)
```

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


