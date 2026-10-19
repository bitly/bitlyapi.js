
# BitlySiteHeaderAppearance


## Properties

Name | Type
------------ | -------------
`banner_type` | [SiteBannerType](SiteBannerType.md)
`profile_image_size` | [SiteProfileImageSize](SiteProfileImageSize.md)
`profile_image_shape` | [SiteProfileImageShape](SiteProfileImageShape.md)
`profile_image_border_size` | [SiteProfileImageBorderSize](SiteProfileImageBorderSize.md)
`profile_image_type` | [SiteProfileImageType](SiteProfileImageType.md)
`profile_image_location` | [SiteProfileImageLocation](SiteProfileImageLocation.md)
`profile_image_overflow` | boolean
`text_location` | [SiteTextLocation](SiteTextLocation.md)
`title_size` | [SiteTextSizeEnum](SiteTextSizeEnum.md)
`title_alignment` | [SiteTextAlignmentEnum](SiteTextAlignmentEnum.md)
`title_weight` | [SiteTextWeightEnum](SiteTextWeightEnum.md)
`title_border_type` | [SiteTextBorderTypeEnum](SiteTextBorderTypeEnum.md)
`description_size` | [SiteTextSizeEnum](SiteTextSizeEnum.md)
`description_alignment` | [SiteTextAlignmentEnum](SiteTextAlignmentEnum.md)
`description_weight` | [SiteTextWeightEnum](SiteTextWeightEnum.md)
`description_border_type` | [SiteTextBorderTypeEnum](SiteTextBorderTypeEnum.md)
`header_background_color` | string
`banner_image_url` | string
`header_style_preference` | [SiteStylePreference](SiteStylePreference.md)
`banner_image_alignment` | [SiteImageAlignment](SiteImageAlignment.md)

## Example

```typescript
import type { BitlySiteHeaderAppearance } from ''

// TODO: Update the object below with actual values
const example = {
  "banner_type": null,
  "profile_image_size": null,
  "profile_image_shape": null,
  "profile_image_border_size": null,
  "profile_image_type": null,
  "profile_image_location": null,
  "profile_image_overflow": null,
  "text_location": null,
  "title_size": null,
  "title_alignment": null,
  "title_weight": null,
  "title_border_type": null,
  "description_size": null,
  "description_alignment": null,
  "description_weight": null,
  "description_border_type": null,
  "header_background_color": null,
  "banner_image_url": null,
  "header_style_preference": null,
  "banner_image_alignment": null,
} satisfies BitlySiteHeaderAppearance

console.log(example)

// Convert the instance to a JSON string
const exampleJSON: string = JSON.stringify(example)
console.log(exampleJSON)

// Parse the JSON string back to an object
const exampleParsed = JSON.parse(exampleJSON) as BitlySiteHeaderAppearance
console.log(exampleParsed)
```

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


