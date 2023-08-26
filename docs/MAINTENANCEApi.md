# HandyAPI::MAINTENANCEApi

All URIs are relative to *https://www.handyfeeling.com/api/handy/v2*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_update_status**](MAINTENANCEApi.md#get_update_status) | **GET** /maintenance/update/status | Get the device update status. |
| [**restart**](MAINTENANCEApi.md#restart) | **PUT** /maintenance/restart | Restart the device. |
| [**update_perform_fw**](MAINTENANCEApi.md#update_perform_fw) | **PUT** /maintenance/update/perform | Perform firmware update. |


## get_update_status

> <GetUpdateStatus200Response> get_update_status(x_connection_key)

Get the device update status.

Get the device update status.

### Examples

```ruby
require 'time'
require 'handy_api'

api_instance = HandyAPI::MAINTENANCEApi.new
x_connection_key = 'x_connection_key_example' # String | Device connection key.

begin
  # Get the device update status.
  result = api_instance.get_update_status(x_connection_key)
  p result
rescue HandyAPI::ApiError => e
  puts "Error when calling MAINTENANCEApi->get_update_status: #{e}"
end
```

#### Using the get_update_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetUpdateStatus200Response>, Integer, Hash)> get_update_status_with_http_info(x_connection_key)

```ruby
begin
  # Get the device update status.
  data, status_code, headers = api_instance.get_update_status_with_http_info(x_connection_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetUpdateStatus200Response>
rescue HandyAPI::ApiError => e
  puts "Error when calling MAINTENANCEApi->get_update_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_connection_key** | **String** | Device connection key. |  |

### Return type

[**GetUpdateStatus200Response**](GetUpdateStatus200Response.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## restart

> <SetHAMPVelocityPercent200Response> restart(x_connection_key, opts)

Restart the device.

Restart the device. If the optional reconnect flag is set to <code>true</code>, the device will reconnect to the server after restart. The reconnect value defaults to <code>true</code> if not specified.

### Examples

```ruby
require 'time'
require 'handy_api'

api_instance = HandyAPI::MAINTENANCEApi.new
x_connection_key = 'x_connection_key_example' # String | Device connection key.
opts = {
  restart_request: HandyAPI::RestartRequest.new({reconnect: false}) # RestartRequest | 
}

begin
  # Restart the device.
  result = api_instance.restart(x_connection_key, opts)
  p result
rescue HandyAPI::ApiError => e
  puts "Error when calling MAINTENANCEApi->restart: #{e}"
end
```

#### Using the restart_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SetHAMPVelocityPercent200Response>, Integer, Hash)> restart_with_http_info(x_connection_key, opts)

```ruby
begin
  # Restart the device.
  data, status_code, headers = api_instance.restart_with_http_info(x_connection_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SetHAMPVelocityPercent200Response>
rescue HandyAPI::ApiError => e
  puts "Error when calling MAINTENANCEApi->restart_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_connection_key** | **String** | Device connection key. |  |
| **restart_request** | [**RestartRequest**](RestartRequest.md) |  | [optional] |

### Return type

[**SetHAMPVelocityPercent200Response**](SetHAMPVelocityPercent200Response.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_perform_fw

> <SetHAMPVelocityPercent200Response> update_perform_fw(x_connection_key, update_perform)

Perform firmware update.

Perform firmware update.

### Examples

```ruby
require 'time'
require 'handy_api'

api_instance = HandyAPI::MAINTENANCEApi.new
x_connection_key = 'x_connection_key_example' # String | Device connection key.
update_perform = HandyAPI::UpdatePerform.new({fw_version: '2.13'}) # UpdatePerform | 

begin
  # Perform firmware update.
  result = api_instance.update_perform_fw(x_connection_key, update_perform)
  p result
rescue HandyAPI::ApiError => e
  puts "Error when calling MAINTENANCEApi->update_perform_fw: #{e}"
end
```

#### Using the update_perform_fw_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SetHAMPVelocityPercent200Response>, Integer, Hash)> update_perform_fw_with_http_info(x_connection_key, update_perform)

```ruby
begin
  # Perform firmware update.
  data, status_code, headers = api_instance.update_perform_fw_with_http_info(x_connection_key, update_perform)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SetHAMPVelocityPercent200Response>
rescue HandyAPI::ApiError => e
  puts "Error when calling MAINTENANCEApi->update_perform_fw_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_connection_key** | **String** | Device connection key. |  |
| **update_perform** | [**UpdatePerform**](UpdatePerform.md) |  |  |

### Return type

[**SetHAMPVelocityPercent200Response**](SetHAMPVelocityPercent200Response.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

