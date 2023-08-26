# HandyAPI::HAMPApi

All URIs are relative to *https://www.handyfeeling.com/api/handy/v2*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_hamp_state**](HAMPApi.md#get_hamp_state) | **GET** /hamp/state | Get the HAMP state of the device. |
| [**get_hamp_velocity_percent**](HAMPApi.md#get_hamp_velocity_percent) | **GET** /hamp/velocity | Get the HAMP velocity setting of the device in percent. |
| [**hamp_stop**](HAMPApi.md#hamp_stop) | **PUT** /hamp/stop | Stop alternating motion. |
| [**set_hamp_velocity_percent**](HAMPApi.md#set_hamp_velocity_percent) | **PUT** /hamp/velocity | Set the HAMP velocity setting of the device in percent. |
| [**start**](HAMPApi.md#start) | **PUT** /hamp/start | Start alternating motion. |


## get_hamp_state

> <GetHAMPState200Response> get_hamp_state(x_connection_key)

Get the HAMP state of the device.

Get the HAMP state of the device. See HAMPStateResponse schema for possible values.

### Examples

```ruby
require 'time'
require 'handy_api'

api_instance = HandyAPI::HAMPApi.new
x_connection_key = 'cid:09Amdosdidsa/mdsa' # String | Device connection key or a channel reference.

begin
  # Get the HAMP state of the device.
  result = api_instance.get_hamp_state(x_connection_key)
  p result
rescue HandyAPI::ApiError => e
  puts "Error when calling HAMPApi->get_hamp_state: #{e}"
end
```

#### Using the get_hamp_state_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetHAMPState200Response>, Integer, Hash)> get_hamp_state_with_http_info(x_connection_key)

```ruby
begin
  # Get the HAMP state of the device.
  data, status_code, headers = api_instance.get_hamp_state_with_http_info(x_connection_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetHAMPState200Response>
rescue HandyAPI::ApiError => e
  puts "Error when calling HAMPApi->get_hamp_state_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_connection_key** | **String** | Device connection key or a channel reference. |  |

### Return type

[**GetHAMPState200Response**](GetHAMPState200Response.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_hamp_velocity_percent

> <GetHAMPVelocityPercent200Response> get_hamp_velocity_percent(x_connection_key)

Get the HAMP velocity setting of the device in percent.

Get the HAMP velocity setting of the device in percent.

### Examples

```ruby
require 'time'
require 'handy_api'

api_instance = HandyAPI::HAMPApi.new
x_connection_key = 'cid:09Amdosdidsa/mdsa' # String | Device connection key or a channel reference.

begin
  # Get the HAMP velocity setting of the device in percent.
  result = api_instance.get_hamp_velocity_percent(x_connection_key)
  p result
rescue HandyAPI::ApiError => e
  puts "Error when calling HAMPApi->get_hamp_velocity_percent: #{e}"
end
```

#### Using the get_hamp_velocity_percent_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetHAMPVelocityPercent200Response>, Integer, Hash)> get_hamp_velocity_percent_with_http_info(x_connection_key)

```ruby
begin
  # Get the HAMP velocity setting of the device in percent.
  data, status_code, headers = api_instance.get_hamp_velocity_percent_with_http_info(x_connection_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetHAMPVelocityPercent200Response>
rescue HandyAPI::ApiError => e
  puts "Error when calling HAMPApi->get_hamp_velocity_percent_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_connection_key** | **String** | Device connection key or a channel reference. |  |

### Return type

[**GetHAMPVelocityPercent200Response**](GetHAMPVelocityPercent200Response.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## hamp_stop

> <HampStop200Response> hamp_stop(x_connection_key)

Stop alternating motion.

Stop alternating motion. No effect if the device is already stopped.

### Examples

```ruby
require 'time'
require 'handy_api'

api_instance = HandyAPI::HAMPApi.new
x_connection_key = 'cid:09Amdosdidsa/mdsa' # String | Device connection key or a channel reference.

begin
  # Stop alternating motion.
  result = api_instance.hamp_stop(x_connection_key)
  p result
rescue HandyAPI::ApiError => e
  puts "Error when calling HAMPApi->hamp_stop: #{e}"
end
```

#### Using the hamp_stop_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<HampStop200Response>, Integer, Hash)> hamp_stop_with_http_info(x_connection_key)

```ruby
begin
  # Stop alternating motion.
  data, status_code, headers = api_instance.hamp_stop_with_http_info(x_connection_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <HampStop200Response>
rescue HandyAPI::ApiError => e
  puts "Error when calling HAMPApi->hamp_stop_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_connection_key** | **String** | Device connection key or a channel reference. |  |

### Return type

[**HampStop200Response**](HampStop200Response.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## set_hamp_velocity_percent

> <SetHAMPVelocityPercent200Response> set_hamp_velocity_percent(x_connection_key, hamp_velocity_percent)

Set the HAMP velocity setting of the device in percent.

Set the HAMP velocity setting of the alternating motion in percent.<p>NOTE: The velocity can only be set when HAMP mode is enabled (mode=2) and when the slide is moving (HAMP state=2). Attempting to set the velocity outside of this mode/state will result in an error response.

### Examples

```ruby
require 'time'
require 'handy_api'

api_instance = HandyAPI::HAMPApi.new
x_connection_key = 'cid:09Amdosdidsa/mdsa' # String | Device connection key or a channel reference.
hamp_velocity_percent = HandyAPI::HAMPVelocityPercent.new({velocity: 10.5}) # HAMPVelocityPercent | 

begin
  # Set the HAMP velocity setting of the device in percent.
  result = api_instance.set_hamp_velocity_percent(x_connection_key, hamp_velocity_percent)
  p result
rescue HandyAPI::ApiError => e
  puts "Error when calling HAMPApi->set_hamp_velocity_percent: #{e}"
end
```

#### Using the set_hamp_velocity_percent_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SetHAMPVelocityPercent200Response>, Integer, Hash)> set_hamp_velocity_percent_with_http_info(x_connection_key, hamp_velocity_percent)

```ruby
begin
  # Set the HAMP velocity setting of the device in percent.
  data, status_code, headers = api_instance.set_hamp_velocity_percent_with_http_info(x_connection_key, hamp_velocity_percent)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SetHAMPVelocityPercent200Response>
rescue HandyAPI::ApiError => e
  puts "Error when calling HAMPApi->set_hamp_velocity_percent_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_connection_key** | **String** | Device connection key or a channel reference. |  |
| **hamp_velocity_percent** | [**HAMPVelocityPercent**](HAMPVelocityPercent.md) |  |  |

### Return type

[**SetHAMPVelocityPercent200Response**](SetHAMPVelocityPercent200Response.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## start

> <Start200Response> start(x_connection_key)

Start alternating motion.

Start alternating motion. No effect if the device is already moving.

### Examples

```ruby
require 'time'
require 'handy_api'

api_instance = HandyAPI::HAMPApi.new
x_connection_key = 'cid:09Amdosdidsa/mdsa' # String | Device connection key or a channel reference.

begin
  # Start alternating motion.
  result = api_instance.start(x_connection_key)
  p result
rescue HandyAPI::ApiError => e
  puts "Error when calling HAMPApi->start: #{e}"
end
```

#### Using the start_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Start200Response>, Integer, Hash)> start_with_http_info(x_connection_key)

```ruby
begin
  # Start alternating motion.
  data, status_code, headers = api_instance.start_with_http_info(x_connection_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Start200Response>
rescue HandyAPI::ApiError => e
  puts "Error when calling HAMPApi->start_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_connection_key** | **String** | Device connection key or a channel reference. |  |

### Return type

[**Start200Response**](Start200Response.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

