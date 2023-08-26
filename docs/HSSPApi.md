# HandyAPI::HSSPApi

All URIs are relative to *https://www.handyfeeling.com/api/handy/v2*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_hssp_state**](HSSPApi.md#get_hssp_state) | **GET** /hssp/state | Get the HSSP state of the device. |
| [**get_loop_setting**](HSSPApi.md#get_loop_setting) | **GET** /hssp/loop | Get the HSSP loop setting of the device. Only available in firmware &gt;&#x3D; 3.2.x |
| [**hssp_stop**](HSSPApi.md#hssp_stop) | **PUT** /hssp/stop | Stop script playing. |
| [**play**](HSSPApi.md#play) | **PUT** /hssp/play | Start script playing. |
| [**set_loop_setting**](HSSPApi.md#set_loop_setting) | **PUT** /hssp/loop | Set the HSSP loop setting of the device. Only available in firmware &gt;&#x3D; 3.2.x |
| [**setup**](HSSPApi.md#setup) | **PUT** /hssp/setup | Setup script synchronization. |


## get_hssp_state

> <GetHSSPState200Response> get_hssp_state(x_connection_key)

Get the HSSP state of the device.

Get the HSSP state of the device.

### Examples

```ruby
require 'time'
require 'handy_api'

api_instance = HandyAPI::HSSPApi.new
x_connection_key = 'x_connection_key_example' # String | Device connection key.

begin
  # Get the HSSP state of the device.
  result = api_instance.get_hssp_state(x_connection_key)
  p result
rescue HandyAPI::ApiError => e
  puts "Error when calling HSSPApi->get_hssp_state: #{e}"
end
```

#### Using the get_hssp_state_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetHSSPState200Response>, Integer, Hash)> get_hssp_state_with_http_info(x_connection_key)

```ruby
begin
  # Get the HSSP state of the device.
  data, status_code, headers = api_instance.get_hssp_state_with_http_info(x_connection_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetHSSPState200Response>
rescue HandyAPI::ApiError => e
  puts "Error when calling HSSPApi->get_hssp_state_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_connection_key** | **String** | Device connection key. |  |

### Return type

[**GetHSSPState200Response**](GetHSSPState200Response.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_loop_setting

> <GetLoopSetting200Response> get_loop_setting(x_connection_key)

Get the HSSP loop setting of the device. Only available in firmware >= 3.2.x

Get the HSSP loop setting of the device. Only available in firmware >= 3.2.x

### Examples

```ruby
require 'time'
require 'handy_api'

api_instance = HandyAPI::HSSPApi.new
x_connection_key = 'x_connection_key_example' # String | Device connection key.

begin
  # Get the HSSP loop setting of the device. Only available in firmware >= 3.2.x
  result = api_instance.get_loop_setting(x_connection_key)
  p result
rescue HandyAPI::ApiError => e
  puts "Error when calling HSSPApi->get_loop_setting: #{e}"
end
```

#### Using the get_loop_setting_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetLoopSetting200Response>, Integer, Hash)> get_loop_setting_with_http_info(x_connection_key)

```ruby
begin
  # Get the HSSP loop setting of the device. Only available in firmware >= 3.2.x
  data, status_code, headers = api_instance.get_loop_setting_with_http_info(x_connection_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetLoopSetting200Response>
rescue HandyAPI::ApiError => e
  puts "Error when calling HSSPApi->get_loop_setting_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_connection_key** | **String** | Device connection key. |  |

### Return type

[**GetLoopSetting200Response**](GetLoopSetting200Response.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## hssp_stop

> <SetHAMPVelocityPercent200Response> hssp_stop(x_connection_key)

Stop script playing.

Stop script playing.

### Examples

```ruby
require 'time'
require 'handy_api'

api_instance = HandyAPI::HSSPApi.new
x_connection_key = 'x_connection_key_example' # String | Device connection key.

begin
  # Stop script playing.
  result = api_instance.hssp_stop(x_connection_key)
  p result
rescue HandyAPI::ApiError => e
  puts "Error when calling HSSPApi->hssp_stop: #{e}"
end
```

#### Using the hssp_stop_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SetHAMPVelocityPercent200Response>, Integer, Hash)> hssp_stop_with_http_info(x_connection_key)

```ruby
begin
  # Stop script playing.
  data, status_code, headers = api_instance.hssp_stop_with_http_info(x_connection_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SetHAMPVelocityPercent200Response>
rescue HandyAPI::ApiError => e
  puts "Error when calling HSSPApi->hssp_stop_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_connection_key** | **String** | Device connection key. |  |

### Return type

[**SetHAMPVelocityPercent200Response**](SetHAMPVelocityPercent200Response.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## play

> <Play200Response> play(x_connection_key, hssp_play)

Start script playing.

Start script playing from a specified time index. <p>For the script and a video to be correctly synchronized, the client must provide a client-side-estimated-server-time.<p>See TIMESYNC for further details on how to create a good client-side-estimated-server-time.

### Examples

```ruby
require 'time'
require 'handy_api'

api_instance = HandyAPI::HSSPApi.new
x_connection_key = 'x_connection_key_example' # String | Device connection key.
hssp_play = HandyAPI::HSSPPlay.new({estimated_server_time: 1619080355381, start_time: 5000}) # HSSPPlay | 

begin
  # Start script playing.
  result = api_instance.play(x_connection_key, hssp_play)
  p result
rescue HandyAPI::ApiError => e
  puts "Error when calling HSSPApi->play: #{e}"
end
```

#### Using the play_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Play200Response>, Integer, Hash)> play_with_http_info(x_connection_key, hssp_play)

```ruby
begin
  # Start script playing.
  data, status_code, headers = api_instance.play_with_http_info(x_connection_key, hssp_play)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Play200Response>
rescue HandyAPI::ApiError => e
  puts "Error when calling HSSPApi->play_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_connection_key** | **String** | Device connection key. |  |
| **hssp_play** | [**HSSPPlay**](HSSPPlay.md) |  |  |

### Return type

[**Play200Response**](Play200Response.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## set_loop_setting

> <SetHAMPVelocityPercent200Response> set_loop_setting(x_connection_key, loop_setting_update)

Set the HSSP loop setting of the device. Only available in firmware >= 3.2.x

If looping is enabled, the device will start replaying the script from the beginning when the end of the script is reached. Only available in firmware >= 3.2.x

### Examples

```ruby
require 'time'
require 'handy_api'

api_instance = HandyAPI::HSSPApi.new
x_connection_key = 'x_connection_key_example' # String | Device connection key.
loop_setting_update = HandyAPI::LoopSettingUpdate.new({activated: false}) # LoopSettingUpdate | 

begin
  # Set the HSSP loop setting of the device. Only available in firmware >= 3.2.x
  result = api_instance.set_loop_setting(x_connection_key, loop_setting_update)
  p result
rescue HandyAPI::ApiError => e
  puts "Error when calling HSSPApi->set_loop_setting: #{e}"
end
```

#### Using the set_loop_setting_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SetHAMPVelocityPercent200Response>, Integer, Hash)> set_loop_setting_with_http_info(x_connection_key, loop_setting_update)

```ruby
begin
  # Set the HSSP loop setting of the device. Only available in firmware >= 3.2.x
  data, status_code, headers = api_instance.set_loop_setting_with_http_info(x_connection_key, loop_setting_update)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SetHAMPVelocityPercent200Response>
rescue HandyAPI::ApiError => e
  puts "Error when calling HSSPApi->set_loop_setting_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_connection_key** | **String** | Device connection key. |  |
| **loop_setting_update** | [**LoopSettingUpdate**](LoopSettingUpdate.md) |  |  |

### Return type

[**SetHAMPVelocityPercent200Response**](SetHAMPVelocityPercent200Response.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## setup

> <Setup200Response> setup(x_connection_key, setup)

Setup script synchronization.

Setup script synchronization by providing the device with an URL from where the script can be downloaded. The device need to be able to access the URL for setup to work. <p><b>NOTE: The maximum CSV script size that a device can handle is 524288 bytes. Script larger than this will return an error.</b></p> <p>If the sha-256 value of the script is provided, the device will only download the script if it can not be found in the device cache.</p> <p>See the hssp/setup response examples and the HSSPModeErrors schema for possible responses and error code descriptions.</p> <h2>Using token URLs</h2> <p>NOTE: This secions is only applicable for partners that have integrated with the Script API.</p> <p>If the URL provided to the hssp/setup is a token URL, the sha-256 value is ignored. In addition, more information is available in potential error responses if the error is caused by the token.</p> 

### Examples

```ruby
require 'time'
require 'handy_api'

api_instance = HandyAPI::HSSPApi.new
x_connection_key = 'x_connection_key_example' # String | Device connection key.
setup = HandyAPI::Setup.new({url: 'http://www.example.org/dataset.csv'}) # Setup | 

begin
  # Setup script synchronization.
  result = api_instance.setup(x_connection_key, setup)
  p result
rescue HandyAPI::ApiError => e
  puts "Error when calling HSSPApi->setup: #{e}"
end
```

#### Using the setup_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Setup200Response>, Integer, Hash)> setup_with_http_info(x_connection_key, setup)

```ruby
begin
  # Setup script synchronization.
  data, status_code, headers = api_instance.setup_with_http_info(x_connection_key, setup)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Setup200Response>
rescue HandyAPI::ApiError => e
  puts "Error when calling HSSPApi->setup_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_connection_key** | **String** | Device connection key. |  |
| **setup** | [**Setup**](Setup.md) |  |  |

### Return type

[**Setup200Response**](Setup200Response.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

