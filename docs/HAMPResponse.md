# HandyAPI::HAMPResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **state** | [**HAMPState**](HAMPState.md) |  |  |
| **slide_max** | **Float** |  |  |
| **slide_min** | **Float** |  |  |
| **velocity** | **Float** |  | [optional] |

## Example

```ruby
require 'handy_api'

instance = HandyAPI::HAMPResponse.new(
  state: null,
  slide_max: 10.5,
  slide_min: 10.5,
  velocity: 10.5
)
```

