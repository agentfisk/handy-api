# HandyAPI::UpdateStatusResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **result** | [**GenericResult**](GenericResult.md) |  |  |
| **status** | **Float** | Possible update status values.&lt;ul&gt;&lt;li&gt;PENDING(0)&lt;li&gt;IN_PROGRESS(1)&lt;/li&gt;&lt;li&gt;SUCCESS(2)&lt;/li&gt;&lt;li&gt;FAILED(3)&lt;/li&gt;&lt;/ul&gt; |  |
| **progress** | **Integer** |  |  |

## Example

```ruby
require 'handy_api'

instance = HandyAPI::UpdateStatusResponse.new(
  result: null,
  status: 1,
  progress: null
)
```

