# HandyAPI::HSSPPlay

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **estimated_server_time** | **Integer** | The client side estimated server time in milliseconds (Unix Epoch). |  |
| **start_time** | **Integer** | The time index to start playing from in milliseconds. |  |

## Example

```ruby
require 'handy_api'

instance = HandyAPI::HSSPPlay.new(
  estimated_server_time: 1619080355381,
  start_time: 5000
)
```

