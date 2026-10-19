
# CustomDomainBody

information about given custom domain

## Properties

Name | Type
------------ | -------------
`custom_domain` | string
`is_active` | boolean
`group_guids` | Array&lt;string&gt;
`ssl_configuration_error` | string
`configuration_last_check_ts` | string
`root_redirect` | string
`https_bitlinks` | boolean
`ssl_autoconfigure_error` | boolean
`https_enabled` | boolean
`hsts_enabled` | boolean
`created` | string
`wildcard_redirect` | string
`validation_status` | string
`validation_error` | string
`deeplink_apps` | [Array&lt;MinimalDeeplinkApp&gt;](MinimalDeeplinkApp.md)
`upgrade_insecure_requests` | boolean
`ssl_cert` | [PublicSSLCert](PublicSSLCert.md)

## Example

```typescript
import type { CustomDomainBody } from ''

// TODO: Update the object below with actual values
const example = {
  "custom_domain": null,
  "is_active": null,
  "group_guids": null,
  "ssl_configuration_error": null,
  "configuration_last_check_ts": null,
  "root_redirect": null,
  "https_bitlinks": null,
  "ssl_autoconfigure_error": null,
  "https_enabled": null,
  "hsts_enabled": null,
  "created": null,
  "wildcard_redirect": null,
  "validation_status": null,
  "validation_error": null,
  "deeplink_apps": null,
  "upgrade_insecure_requests": null,
  "ssl_cert": null,
} satisfies CustomDomainBody

console.log(example)

// Convert the instance to a JSON string
const exampleJSON: string = JSON.stringify(example)
console.log(exampleJSON)

// Parse the JSON string back to an object
const exampleParsed = JSON.parse(exampleJSON) as CustomDomainBody
console.log(exampleParsed)
```

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


