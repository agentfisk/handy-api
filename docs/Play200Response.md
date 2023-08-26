# HandyAPI::Play200Response

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'handy_api'

HandyAPI::Play200Response.openapi_one_of
# =>
# [
#   :'ErrorResponse',
#   :'HSSPPlayResponse'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'handy_api'

HandyAPI::Play200Response.build(data)
# => #<ErrorResponse:0x00007fdd4aab02a0>

HandyAPI::Play200Response.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `ErrorResponse`
- `HSSPPlayResponse`
- `nil` (if no type matches)

