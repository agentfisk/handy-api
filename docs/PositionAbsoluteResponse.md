# HandyAPI::PositionAbsoluteResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **result** | [**GenericResult**](GenericResult.md) |  |  |
| **position** | **Float** | Absolute position in millimeter (mm). 0 &#x3D; absolute bottom position. |  |

## Example

```ruby
require 'handy_api'

instance = HandyAPI::PositionAbsoluteResponse.new(
  result: null,
  position: null
)
```

