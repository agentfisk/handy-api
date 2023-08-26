# HandyAPI::ErrorResponseError

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **connected** | **Boolean** |  |  |
| **name** | **String** |  |  |
| **message** | **String** |  |  |
| **code** | [**ErrorResponseErrorCode**](ErrorResponseErrorCode.md) |  |  |
| **data** | **Object** |  | [optional] |

## Example

```ruby
require 'handy_api'

instance = HandyAPI::ErrorResponseError.new(
  connected: null,
  name: null,
  message: null,
  code: null,
  data: null
)
```

