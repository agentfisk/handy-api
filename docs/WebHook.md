# HandyAPI::WebHook

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **expires** | **Float** |  | [optional] |
| **url** | **String** |  | [optional] |
| **events** | [**Array&lt;Events&gt;**](Events.md) |  | [optional] |

## Example

```ruby
require 'handy_api'

instance = HandyAPI::WebHook.new(
  id: null,
  expires: null,
  url: null,
  events: null
)
```

