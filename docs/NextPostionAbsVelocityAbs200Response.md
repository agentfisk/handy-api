# HandyAPI::NextPostionAbsVelocityAbs200Response

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'handy_api'

HandyAPI::NextPostionAbsVelocityAbs200Response.openapi_one_of
# =>
# [
#   :'ErrorResponse',
#   :'HDSPResponse'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'handy_api'

HandyAPI::NextPostionAbsVelocityAbs200Response.build(data)
# => #<ErrorResponse:0x00007fdd4aab02a0>

HandyAPI::NextPostionAbsVelocityAbs200Response.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `ErrorResponse`
- `HDSPResponse`
- `nil` (if no type matches)

