# HandyAPI::Setup

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **url** | **String** |  |  |
| **sha256** | **String** |  | [optional] |

## Example

```ruby
require 'handy_api'

instance = HandyAPI::Setup.new(
  url: http://www.example.org/dataset.csv,
  sha256: cc8c4129276cd80bb6cbfe7f968b22708240a8afcac9c7c0cbcce7f6c6064927
)
```

