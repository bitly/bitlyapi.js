
# QRCodeCustomizationsPublic

Options for customizing a QR Code\'s appearance

## Properties

Name | Type
------------ | -------------
`background_color` | string
`dot_pattern_color` | string
`dot_pattern_type` | [QRCodeDotPatternType](QRCodeDotPatternType.md)
`corners` | [QRCodeCorners](QRCodeCorners.md)
`gradient` | [QRCodeGradient](QRCodeGradient.md)
`background_gradient` | [QRCodeGradient](QRCodeGradient.md)
`logo` | [QRCodeLogoPublic](QRCodeLogoPublic.md)
`frame` | [QRCodeFrameRequest](QRCodeFrameRequest.md)
`text` | [QRCodeText](QRCodeText.md)
`branding` | [QRCodeBranding](QRCodeBranding.md)
`spec_settings` | [QRCodeSpecSettingsPublic](QRCodeSpecSettingsPublic.md)

## Example

```typescript
import type { QRCodeCustomizationsPublic } from ''

// TODO: Update the object below with actual values
const example = {
  "background_color": #ff07d280,
  "dot_pattern_color": #ff07d2,
  "dot_pattern_type": null,
  "corners": null,
  "gradient": null,
  "background_gradient": null,
  "logo": null,
  "frame": null,
  "text": null,
  "branding": null,
  "spec_settings": null,
} satisfies QRCodeCustomizationsPublic

console.log(example)

// Convert the instance to a JSON string
const exampleJSON: string = JSON.stringify(example)
console.log(exampleJSON)

// Parse the JSON string back to an object
const exampleParsed = JSON.parse(exampleJSON) as QRCodeCustomizationsPublic
console.log(exampleParsed)
```

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


