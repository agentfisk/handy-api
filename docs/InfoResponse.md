# HandyAPI::InfoResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **fw_version** | **String** | Firmware version |  |
| **fw_status** | [**FirmwareStatus**](FirmwareStatus.md) |  |  |
| **hw_version** | **Integer** | Hardware version |  |
| **model** | [**Model**](Model.md) |  |  |
| **branch** | [**Branch**](Branch.md) |  |  |
| **session_id** | **String** | Device session id. Unique per connected session. |  |

## Example

```ruby
require 'handy_api'

instance = HandyAPI::InfoResponse.new(
  fw_version: 2.13,
  fw_status: null,
  hw_version: 1,
  model: null,
  branch: null,
  session_id: 01FZZR1H25CWF77Q5T26YSJMBY
)
```

