# HandyAPI::ErrorResponseErrorCode

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'handy_api'

HandyAPI::ErrorResponseErrorCode.openapi_one_of
# =>
# [
#   :'BASEModeErrors',
#   :'Float',
#   :'HAMPModeErrors',
#   :'HDSPModeErrors',
#   :'HSSPModeErrors',
#   :'MAINTENANCEModeErrors'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'handy_api'

HandyAPI::ErrorResponseErrorCode.build(data)
# => #<BASEModeErrors:0x00007fdd4aab02a0>

HandyAPI::ErrorResponseErrorCode.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `BASEModeErrors`
- `Float`
- `HAMPModeErrors`
- `HDSPModeErrors`
- `HSSPModeErrors`
- `MAINTENANCEModeErrors`
- `nil` (if no type matches)

