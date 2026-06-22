
# QRCodeCustomizationsStaticPublic

Appearance options for a static QR code. gradient, background_gradient, frame, text, and logo are not supported.

## Properties

Name | Type
------------ | -------------
`background_color` | string
`dot_pattern_color` | string
`dot_pattern_type` | [QRCodeDotPatternType](QRCodeDotPatternType.md)
`corners` | [QRCodeCorners](QRCodeCorners.md)
`branding` | [QRCodeBranding](QRCodeBranding.md)
`spec_settings` | [QRCodeSpecSettingsPublic](QRCodeSpecSettingsPublic.md)

## Example

```typescript
import type { QRCodeCustomizationsStaticPublic } from ''

// TODO: Update the object below with actual values
const example = {
  "background_color": #ff07d280,
  "dot_pattern_color": #ff07d2,
  "dot_pattern_type": null,
  "corners": null,
  "branding": null,
  "spec_settings": null,
} satisfies QRCodeCustomizationsStaticPublic

console.log(example)

// Convert the instance to a JSON string
const exampleJSON: string = JSON.stringify(example)
console.log(exampleJSON)

// Parse the JSON string back to an object
const exampleParsed = JSON.parse(exampleJSON) as QRCodeCustomizationsStaticPublic
console.log(exampleParsed)
```

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


