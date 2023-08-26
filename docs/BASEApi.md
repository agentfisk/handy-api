# HandyAPI::BASEApi

All URIs are relative to *https://www.handyfeeling.com/api/handy/v2*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_info**](BASEApi.md#get_info) | **GET** /info | Get extended device information. |
| [**get_mode**](BASEApi.md#get_mode) | **GET** /mode | Get the current mode of the device. |
| [**get_settings**](BASEApi.md#get_settings) | **GET** /settings | Extended device settings. |
| [**get_status**](BASEApi.md#get_status) | **GET** /status | Get the device status. |
| [**is_connected**](BASEApi.md#is_connected) | **GET** /connected | Check device connectivity. |
| [**set_mode**](BASEApi.md#set_mode) | **PUT** /mode | Set the current mode of the device. |


## get_info

> <GetInfo200Response> get_info(x_connection_key)

Get extended device information.

Returns information about the device; hardware version, firmware version, firmware status, firmware branch and device model.<br><br> The most important information returned is the firmware status value (fwStatus).<br> Depending on the value the device may or may not need an update for the device to work with your service.<br><br> The following values are possible: <ul> <li>UP_TO_DATE(0) - The device is running the latest available firmware. No action required for using your service.</li> <li>UPDATE_REQUIRED(1) - The device is running an out-of-date firmware version. An update is required before the device will work with your service.</li> <li>UPDATE_AVAILABLE(2) - The device is running a firmware with available updates. The update is not stricly neccessary for the device to work with your service, but the update might improve the user experience.</li> </ul> Whenever the firmware status is not UP_TO_DATE(0), it's recommended that you forward the user to <a href=\"https://www.handyfeeeling.com\">https://www.handyfeeeling.com</a> so the user can easily update their device.

### Examples

```ruby
require 'time'
require 'handy_api'

api_instance = HandyAPI::BASEApi.new
x_connection_key = 'x_connection_key_example' # String | Device connection key.

begin
  # Get extended device information.
  result = api_instance.get_info(x_connection_key)
  p result
rescue HandyAPI::ApiError => e
  puts "Error when calling BASEApi->get_info: #{e}"
end
```

#### Using the get_info_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetInfo200Response>, Integer, Hash)> get_info_with_http_info(x_connection_key)

```ruby
begin
  # Get extended device information.
  data, status_code, headers = api_instance.get_info_with_http_info(x_connection_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetInfo200Response>
rescue HandyAPI::ApiError => e
  puts "Error when calling BASEApi->get_info_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_connection_key** | **String** | Device connection key. |  |

### Return type

[**GetInfo200Response**](GetInfo200Response.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_mode

> <GetMode200Response> get_mode(x_connection_key)

Get the current mode of the device.

Get the current mode of the device.

### Examples

```ruby
require 'time'
require 'handy_api'

api_instance = HandyAPI::BASEApi.new
x_connection_key = 'cid:09Amdosdidsa/mdsa' # String | Device connection key or a channel reference.

begin
  # Get the current mode of the device.
  result = api_instance.get_mode(x_connection_key)
  p result
rescue HandyAPI::ApiError => e
  puts "Error when calling BASEApi->get_mode: #{e}"
end
```

#### Using the get_mode_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetMode200Response>, Integer, Hash)> get_mode_with_http_info(x_connection_key)

```ruby
begin
  # Get the current mode of the device.
  data, status_code, headers = api_instance.get_mode_with_http_info(x_connection_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetMode200Response>
rescue HandyAPI::ApiError => e
  puts "Error when calling BASEApi->get_mode_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_connection_key** | **String** | Device connection key or a channel reference. |  |

### Return type

[**GetMode200Response**](GetMode200Response.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_settings

> <GetSettings200Response> get_settings(x_connection_key)

Extended device settings.

Get various device settings.

### Examples

```ruby
require 'time'
require 'handy_api'

api_instance = HandyAPI::BASEApi.new
x_connection_key = 'x_connection_key_example' # String | Device connection key.

begin
  # Extended device settings.
  result = api_instance.get_settings(x_connection_key)
  p result
rescue HandyAPI::ApiError => e
  puts "Error when calling BASEApi->get_settings: #{e}"
end
```

#### Using the get_settings_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetSettings200Response>, Integer, Hash)> get_settings_with_http_info(x_connection_key)

```ruby
begin
  # Extended device settings.
  data, status_code, headers = api_instance.get_settings_with_http_info(x_connection_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetSettings200Response>
rescue HandyAPI::ApiError => e
  puts "Error when calling BASEApi->get_settings_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_connection_key** | **String** | Device connection key. |  |

### Return type

[**GetSettings200Response**](GetSettings200Response.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_status

> <GetStatus200Response> get_status(x_connection_key)

Get the device status.

A convenient endpoint for fetching the current mode of the device and the state within the current mode.<br> For modes with a single state, the returned state value will always be 0.<br> For modes with multiple states, see the schema definition for possible values.<br>

### Examples

```ruby
require 'time'
require 'handy_api'

api_instance = HandyAPI::BASEApi.new
x_connection_key = 'x_connection_key_example' # String | Device connection key.

begin
  # Get the device status.
  result = api_instance.get_status(x_connection_key)
  p result
rescue HandyAPI::ApiError => e
  puts "Error when calling BASEApi->get_status: #{e}"
end
```

#### Using the get_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetStatus200Response>, Integer, Hash)> get_status_with_http_info(x_connection_key)

```ruby
begin
  # Get the device status.
  data, status_code, headers = api_instance.get_status_with_http_info(x_connection_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetStatus200Response>
rescue HandyAPI::ApiError => e
  puts "Error when calling BASEApi->get_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_connection_key** | **String** | Device connection key. |  |

### Return type

[**GetStatus200Response**](GetStatus200Response.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## is_connected

> <ConnectedResponse> is_connected(x_connection_key)

Check device connectivity.

Check if a specifc device is connected and online. This is the fastest way to check device connectivity.<br><br> If you need a continuous device connectivity check, this is the endpoint you should be using.

### Examples

```ruby
require 'time'
require 'handy_api'

api_instance = HandyAPI::BASEApi.new
x_connection_key = 'x_connection_key_example' # String | Device connection key.

begin
  # Check device connectivity.
  result = api_instance.is_connected(x_connection_key)
  p result
rescue HandyAPI::ApiError => e
  puts "Error when calling BASEApi->is_connected: #{e}"
end
```

#### Using the is_connected_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ConnectedResponse>, Integer, Hash)> is_connected_with_http_info(x_connection_key)

```ruby
begin
  # Check device connectivity.
  data, status_code, headers = api_instance.is_connected_with_http_info(x_connection_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ConnectedResponse>
rescue HandyAPI::ApiError => e
  puts "Error when calling BASEApi->is_connected_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_connection_key** | **String** | Device connection key. |  |

### Return type

[**ConnectedResponse**](ConnectedResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## set_mode

> <SetMode200Response> set_mode(x_connection_key, mode_update)

Set the current mode of the device.

Set the current mode of the device.

### Examples

```ruby
require 'time'
require 'handy_api'

api_instance = HandyAPI::BASEApi.new
x_connection_key = 'cid:09Amdosdidsa/mdsa' # String | Device connection key or a channel reference.
mode_update = HandyAPI::ModeUpdate.new({mode: HandyAPI::Mode::HAMP}) # ModeUpdate | 

begin
  # Set the current mode of the device.
  result = api_instance.set_mode(x_connection_key, mode_update)
  p result
rescue HandyAPI::ApiError => e
  puts "Error when calling BASEApi->set_mode: #{e}"
end
```

#### Using the set_mode_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SetMode200Response>, Integer, Hash)> set_mode_with_http_info(x_connection_key, mode_update)

```ruby
begin
  # Set the current mode of the device.
  data, status_code, headers = api_instance.set_mode_with_http_info(x_connection_key, mode_update)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SetMode200Response>
rescue HandyAPI::ApiError => e
  puts "Error when calling BASEApi->set_mode_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_connection_key** | **String** | Device connection key or a channel reference. |  |
| **mode_update** | [**ModeUpdate**](ModeUpdate.md) |  |  |

### Return type

[**SetMode200Response**](SetMode200Response.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

