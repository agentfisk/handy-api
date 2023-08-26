# HandyAPI::ModeUpdateResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **result** | **Float** | Possible result codes from a set mode operation. &lt;ul&gt;&lt;li&gt;ERROR(-1) - Failed setting mode.&lt;/li&gt;&lt;li&gt;SUCCESS_NEW_MODE(0) - Success, another mode was previously set.&lt;/li&gt;&lt;li&gt;SUCCESS_SAME_MODE(1) - Success, the same mode was previously set.&lt;/li&gt; |  |

## Example

```ruby
require 'handy_api'

instance = HandyAPI::ModeUpdateResponse.new(
  result: null
)
```

