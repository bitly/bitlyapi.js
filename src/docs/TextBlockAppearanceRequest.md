
# TextBlockAppearanceRequest


## Properties

Name | Type
------------ | -------------
`background_color` | string
`text_color` | string
`alignment` | [TextBlockAppearanceRequestAlignmentEnum](TextBlockAppearanceRequestAlignmentEnum.md)
`font_size` | [TextBlockAppearanceRequestFontSizeEnum](TextBlockAppearanceRequestFontSizeEnum.md)
`text_block_style` | [TextBlockStyle](TextBlockStyle.md)

## Example

```typescript
import type { TextBlockAppearanceRequest } from ''

// TODO: Update the object below with actual values
const example = {
  "background_color": #fcba03,
  "text_color": #e30b2c,
  "alignment": null,
  "font_size": null,
  "text_block_style": null,
} satisfies TextBlockAppearanceRequest

console.log(example)

// Convert the instance to a JSON string
const exampleJSON: string = JSON.stringify(example)
console.log(exampleJSON)

// Parse the JSON string back to an object
const exampleParsed = JSON.parse(exampleJSON) as TextBlockAppearanceRequest
console.log(exampleParsed)
```

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


