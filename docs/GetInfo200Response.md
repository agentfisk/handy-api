# HandyAPI::GetInfo200Response

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'handy_api'

HandyAPI::GetInfo200Response.openapi_one_of
# =>
# [
#   :'ErrorResponse',
#   :'InfoResponse'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'handy_api'

HandyAPI::GetInfo200Response.build(data)
# => #<ErrorResponse:0x00007fdd4aab02a0>

HandyAPI::GetInfo200Response.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `ErrorResponse`
- `InfoResponse`
- `nil` (if no type matches)

