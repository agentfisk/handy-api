# HandyAPI::StatusResponseState

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'handy_api'

HandyAPI::StatusResponseState.openapi_one_of
# =>
# [
#   :'HAMPState',
#   :'HSSPState'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'handy_api'

HandyAPI::StatusResponseState.build(data)
# => #<HAMPState:0x00007fdd4aab02a0>

HandyAPI::StatusResponseState.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `HAMPState`
- `HSSPState`
- `nil` (if no type matches)

