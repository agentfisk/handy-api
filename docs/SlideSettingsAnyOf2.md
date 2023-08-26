# HandyAPI::SlideSettingsAnyOf2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **max** | **Float** |  |  |
| **fixed** | **Boolean** | Flag to indicate if the slide operation is fixed. A fixed operation moves the active slider area (min-max) offset to the new min or max value. | [optional][default to false] |

## Example

```ruby
require 'handy_api'

instance = HandyAPI::SlideSettingsAnyOf2.new(
  max: 10.5,
  fixed: null
)
```

