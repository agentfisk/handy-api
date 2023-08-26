# HandyAPI::GetRoundTripDelay200Response

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'handy_api'

HandyAPI::GetRoundTripDelay200Response.openapi_one_of
# =>
# [
#   :'ErrorResponse',
#   :'GetRoundTripDelay200ResponseOneOf'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'handy_api'

HandyAPI::GetRoundTripDelay200Response.build(data)
# => #<ErrorResponse:0x00007fdd4aab02a0>

HandyAPI::GetRoundTripDelay200Response.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `ErrorResponse`
- `GetRoundTripDelay200ResponseOneOf`
- `nil` (if no type matches)

