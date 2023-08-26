# HandyAPI::HSTPApi

All URIs are relative to *https://www.handyfeeling.com/api/handy/v2*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_device_time**](HSTPApi.md#get_device_time) | **GET** /hstp/time | Get the current time of the device. |
| [**get_offset**](HSTPApi.md#get_offset) | **GET** /hstp/offset | Get the HSTP offset of the device. |
| [**get_round_trip_delay**](HSTPApi.md#get_round_trip_delay) | **GET** /hstp/rtd | Get the round-trip-delay-time (rtd) between the device and the server. |
| [**set_offset**](HSTPApi.md#set_offset) | **PUT** /hstp/offset | Set the HSTP offset of the device. |
| [**sync**](HSTPApi.md#sync) | **GET** /hstp/sync | Syncronize the connected device with the server clock. |


## get_device_time

> <GetDeviceTime200Response> get_device_time(x_connection_key)

Get the current time of the device.

Get the current time of the device. When the device and the server time is synchronized, this will be the server time estimated by the device.

### Examples

```ruby
require 'time'
require 'handy_api'

api_instance = HandyAPI::HSTPApi.new
x_connection_key = 'x_connection_key_example' # String | Device connection key.

begin
  # Get the current time of the device.
  result = api_instance.get_device_time(x_connection_key)
  p result
rescue HandyAPI::ApiError => e
  puts "Error when calling HSTPApi->get_device_time: #{e}"
end
```

#### Using the get_device_time_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetDeviceTime200Response>, Integer, Hash)> get_device_time_with_http_info(x_connection_key)

```ruby
begin
  # Get the current time of the device.
  data, status_code, headers = api_instance.get_device_time_with_http_info(x_connection_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetDeviceTime200Response>
rescue HandyAPI::ApiError => e
  puts "Error when calling HSTPApi->get_device_time_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_connection_key** | **String** | Device connection key. |  |

### Return type

[**GetDeviceTime200Response**](GetDeviceTime200Response.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_offset

> <GetOffset200Response> get_offset(x_connection_key)

Get the HSTP offset of the device.

The purpose of the offset value is to provide a way to manually adjust the device/server clock synchronization.<br> One usecase is when playing scripts (see HSSP). Eg. if the script and video is not in perfect sync, a user could adjust the offset value to compensate.<br> <br> Example:<br> If we assume that the current offset value of the device is 0, and the script is 100ms ahead of the video, setting the offset to -100ms could fix the synchronization issue.<br> If the script is 100ms behind the video, setting the offset to 100ms could do the same.<br> In most cases, the device/server clock synchronization is good enough. In some special cases a manual adjustment might be required to get perfect sync.

### Examples

```ruby
require 'time'
require 'handy_api'

api_instance = HandyAPI::HSTPApi.new
x_connection_key = 'x_connection_key_example' # String | Device connection key.

begin
  # Get the HSTP offset of the device.
  result = api_instance.get_offset(x_connection_key)
  p result
rescue HandyAPI::ApiError => e
  puts "Error when calling HSTPApi->get_offset: #{e}"
end
```

#### Using the get_offset_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetOffset200Response>, Integer, Hash)> get_offset_with_http_info(x_connection_key)

```ruby
begin
  # Get the HSTP offset of the device.
  data, status_code, headers = api_instance.get_offset_with_http_info(x_connection_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetOffset200Response>
rescue HandyAPI::ApiError => e
  puts "Error when calling HSTPApi->get_offset_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_connection_key** | **String** | Device connection key. |  |

### Return type

[**GetOffset200Response**](GetOffset200Response.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_round_trip_delay

> <GetRoundTripDelay200Response> get_round_trip_delay(x_connection_key)

Get the round-trip-delay-time (rtd) between the device and the server.

Get the round-trip-delay-time (rtd) between the device and the server. The rtd is calculated when the synchronization of the server and device time is triggered. See hstp/sync for more information.

### Examples

```ruby
require 'time'
require 'handy_api'

api_instance = HandyAPI::HSTPApi.new
x_connection_key = 'x_connection_key_example' # String | Device connection key.

begin
  # Get the round-trip-delay-time (rtd) between the device and the server.
  result = api_instance.get_round_trip_delay(x_connection_key)
  p result
rescue HandyAPI::ApiError => e
  puts "Error when calling HSTPApi->get_round_trip_delay: #{e}"
end
```

#### Using the get_round_trip_delay_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetRoundTripDelay200Response>, Integer, Hash)> get_round_trip_delay_with_http_info(x_connection_key)

```ruby
begin
  # Get the round-trip-delay-time (rtd) between the device and the server.
  data, status_code, headers = api_instance.get_round_trip_delay_with_http_info(x_connection_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetRoundTripDelay200Response>
rescue HandyAPI::ApiError => e
  puts "Error when calling HSTPApi->get_round_trip_delay_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_connection_key** | **String** | Device connection key. |  |

### Return type

[**GetRoundTripDelay200Response**](GetRoundTripDelay200Response.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## set_offset

> <SetHAMPVelocityPercent200Response> set_offset(x_connection_key, offset_update)

Set the HSTP offset of the device.

The purpose of the offset value is to provide a way to manually adjust the device/server clock synchronization.<br> One usecase is when playing scripts (see HSSP). Eg. if the script and video is not in perfect sync, a user could adjust the offset value to compensate.<br> <br> Example:<br> If we assume that the current offset value of the device is 0, and the script is 100ms ahead of the video, setting the offset to -100ms could fix the synchronization issue.<br> If the script is 100ms behind the video, setting the offset to 100ms could do the same.<br> In most cases, the device/server clock synchronization is good enough, but in some special cases a manual adjustment might be required to achieve perfect synchronization.

### Examples

```ruby
require 'time'
require 'handy_api'

api_instance = HandyAPI::HSTPApi.new
x_connection_key = 'x_connection_key_example' # String | Device connection key.
offset_update = HandyAPI::OffsetUpdate.new # OffsetUpdate | 

begin
  # Set the HSTP offset of the device.
  result = api_instance.set_offset(x_connection_key, offset_update)
  p result
rescue HandyAPI::ApiError => e
  puts "Error when calling HSTPApi->set_offset: #{e}"
end
```

#### Using the set_offset_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SetHAMPVelocityPercent200Response>, Integer, Hash)> set_offset_with_http_info(x_connection_key, offset_update)

```ruby
begin
  # Set the HSTP offset of the device.
  data, status_code, headers = api_instance.set_offset_with_http_info(x_connection_key, offset_update)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SetHAMPVelocityPercent200Response>
rescue HandyAPI::ApiError => e
  puts "Error when calling HSTPApi->set_offset_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_connection_key** | **String** | Device connection key. |  |
| **offset_update** | [**OffsetUpdate**](OffsetUpdate.md) |  |  |

### Return type

[**SetHAMPVelocityPercent200Response**](SetHAMPVelocityPercent200Response.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## sync

> <Sync200Response> sync(x_connection_key, opts)

Syncronize the connected device with the server clock.

Syncronizes the device with the server clock and calculates the round-trip-delay between the device and the server.

### Examples

```ruby
require 'time'
require 'handy_api'

api_instance = HandyAPI::HSTPApi.new
x_connection_key = 'x_connection_key_example' # String | Device connection key.
opts = {
  sync_count: 56, # Integer | The number of round-trip samples to use in synchronization.
  outliers: 56 # Integer | The number of sample outliers to discard in synchronization.
}

begin
  # Syncronize the connected device with the server clock.
  result = api_instance.sync(x_connection_key, opts)
  p result
rescue HandyAPI::ApiError => e
  puts "Error when calling HSTPApi->sync: #{e}"
end
```

#### Using the sync_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Sync200Response>, Integer, Hash)> sync_with_http_info(x_connection_key, opts)

```ruby
begin
  # Syncronize the connected device with the server clock.
  data, status_code, headers = api_instance.sync_with_http_info(x_connection_key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Sync200Response>
rescue HandyAPI::ApiError => e
  puts "Error when calling HSTPApi->sync_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_connection_key** | **String** | Device connection key. |  |
| **sync_count** | **Integer** | The number of round-trip samples to use in synchronization. | [optional][default to 30] |
| **outliers** | **Integer** | The number of sample outliers to discard in synchronization. | [optional][default to 6] |

### Return type

[**Sync200Response**](Sync200Response.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

