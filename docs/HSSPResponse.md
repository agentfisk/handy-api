# HandyAPI::HSSPResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **state** | [**HSSPState**](HSSPState.md) |  |  |
| **slide_max** | **Float** |  |  |
| **slide_min** | **Float** |  |  |
| **offset** | **Float** |  |  |

## Example

```ruby
require 'handy_api'

instance = HandyAPI::HSSPResponse.new(
  state: null,
  slide_max: 10.5,
  slide_min: 10.5,
  offset: null
)
```

