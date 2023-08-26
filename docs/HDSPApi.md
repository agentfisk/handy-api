# HandyAPI::HDSPApi

All URIs are relative to *https://www.handyfeeling.com/api/handy/v2*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**next_position_abs_in_time**](HDSPApi.md#next_position_abs_in_time) | **PUT** /hdsp/xat | Sets the next absolute position (xa) of the device, and the time (t) the device should use to reach the position. |
| [**next_position_percent_in_time**](HDSPApi.md#next_position_percent_in_time) | **PUT** /hdsp/xpt | Sets the next percent position (xp) of the device, and the time (t) the device should use to reach the position. |
| [**next_position_percent_velocity_absolute**](HDSPApi.md#next_position_percent_velocity_absolute) | **PUT** /hdsp/xpva | Sets the next percent position (xp) of the device, and the absolute velocity (va) the device should use to reach the position. |
| [**next_position_percent_velocity_percent**](HDSPApi.md#next_position_percent_velocity_percent) | **PUT** /hdsp/xpvp | Sets the next percent position (xp) of the device, and the percent velocity (vp) the device should use to reach the position. |
| [**next_postion_abs_velocity_abs**](HDSPApi.md#next_postion_abs_velocity_abs) | **PUT** /hdsp/xava | Sets the next absolute position (xa) of the device, and the absolute velocity (va) the device should use to reach the position. |


## next_position_abs_in_time

> <NextPostionAbsVelocityAbs200Response> next_position_abs_in_time(x_connection_key, next_xat)

Sets the next absolute position (xa) of the device, and the time (t) the device should use to reach the position.

Sets the next absolute position (xa) of the device, and the time (t) the device should use to reach the position.

### Examples

```ruby
require 'time'
require 'handy_api'

api_instance = HandyAPI::HDSPApi.new
x_connection_key = 'x_connection_key_example' # String | Device connection key.
next_xat = HandyAPI::NextXAT.new({duration: 37, position: 3.56}) # NextXAT | 

begin
  # Sets the next absolute position (xa) of the device, and the time (t) the device should use to reach the position.
  result = api_instance.next_position_abs_in_time(x_connection_key, next_xat)
  p result
rescue HandyAPI::ApiError => e
  puts "Error when calling HDSPApi->next_position_abs_in_time: #{e}"
end
```

#### Using the next_position_abs_in_time_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NextPostionAbsVelocityAbs200Response>, Integer, Hash)> next_position_abs_in_time_with_http_info(x_connection_key, next_xat)

```ruby
begin
  # Sets the next absolute position (xa) of the device, and the time (t) the device should use to reach the position.
  data, status_code, headers = api_instance.next_position_abs_in_time_with_http_info(x_connection_key, next_xat)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NextPostionAbsVelocityAbs200Response>
rescue HandyAPI::ApiError => e
  puts "Error when calling HDSPApi->next_position_abs_in_time_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_connection_key** | **String** | Device connection key. |  |
| **next_xat** | [**NextXAT**](NextXAT.md) |  |  |

### Return type

[**NextPostionAbsVelocityAbs200Response**](NextPostionAbsVelocityAbs200Response.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## next_position_percent_in_time

> <NextPostionAbsVelocityAbs200Response> next_position_percent_in_time(x_connection_key, next_xpt)

Sets the next percent position (xp) of the device, and the time (t) the device should use to reach the position.

Sets the next percent position (xp) of the device, and the time (t) the device should use to reach the position.

### Examples

```ruby
require 'time'
require 'handy_api'

api_instance = HandyAPI::HDSPApi.new
x_connection_key = 'x_connection_key_example' # String | Device connection key.
next_xpt = HandyAPI::NextXPT.new({duration: 37, position: 10.5}) # NextXPT | 

begin
  # Sets the next percent position (xp) of the device, and the time (t) the device should use to reach the position.
  result = api_instance.next_position_percent_in_time(x_connection_key, next_xpt)
  p result
rescue HandyAPI::ApiError => e
  puts "Error when calling HDSPApi->next_position_percent_in_time: #{e}"
end
```

#### Using the next_position_percent_in_time_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NextPostionAbsVelocityAbs200Response>, Integer, Hash)> next_position_percent_in_time_with_http_info(x_connection_key, next_xpt)

```ruby
begin
  # Sets the next percent position (xp) of the device, and the time (t) the device should use to reach the position.
  data, status_code, headers = api_instance.next_position_percent_in_time_with_http_info(x_connection_key, next_xpt)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NextPostionAbsVelocityAbs200Response>
rescue HandyAPI::ApiError => e
  puts "Error when calling HDSPApi->next_position_percent_in_time_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_connection_key** | **String** | Device connection key. |  |
| **next_xpt** | [**NextXPT**](NextXPT.md) |  |  |

### Return type

[**NextPostionAbsVelocityAbs200Response**](NextPostionAbsVelocityAbs200Response.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## next_position_percent_velocity_absolute

> <NextPostionAbsVelocityAbs200Response> next_position_percent_velocity_absolute(x_connection_key, next_xpva)

Sets the next percent position (xp) of the device, and the absolute velocity (va) the device should use to reach the position.

Sets the next percent position (xp) of the device, and the absolute velocity (va) the device should use to reach the position.

### Examples

```ruby
require 'time'
require 'handy_api'

api_instance = HandyAPI::HDSPApi.new
x_connection_key = 'x_connection_key_example' # String | Device connection key.
next_xpva = HandyAPI::NextXPVA.new({position: 10.5, velocity: 200}) # NextXPVA | 

begin
  # Sets the next percent position (xp) of the device, and the absolute velocity (va) the device should use to reach the position.
  result = api_instance.next_position_percent_velocity_absolute(x_connection_key, next_xpva)
  p result
rescue HandyAPI::ApiError => e
  puts "Error when calling HDSPApi->next_position_percent_velocity_absolute: #{e}"
end
```

#### Using the next_position_percent_velocity_absolute_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NextPostionAbsVelocityAbs200Response>, Integer, Hash)> next_position_percent_velocity_absolute_with_http_info(x_connection_key, next_xpva)

```ruby
begin
  # Sets the next percent position (xp) of the device, and the absolute velocity (va) the device should use to reach the position.
  data, status_code, headers = api_instance.next_position_percent_velocity_absolute_with_http_info(x_connection_key, next_xpva)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NextPostionAbsVelocityAbs200Response>
rescue HandyAPI::ApiError => e
  puts "Error when calling HDSPApi->next_position_percent_velocity_absolute_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_connection_key** | **String** | Device connection key. |  |
| **next_xpva** | [**NextXPVA**](NextXPVA.md) |  |  |

### Return type

[**NextPostionAbsVelocityAbs200Response**](NextPostionAbsVelocityAbs200Response.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## next_position_percent_velocity_percent

> <NextPostionAbsVelocityAbs200Response> next_position_percent_velocity_percent(x_connection_key, next_xpvp)

Sets the next percent position (xp) of the device, and the percent velocity (vp) the device should use to reach the position.

Sets the next percent position (xp) of the device, and the percent velocity (vp) the device should use to reach the position.

### Examples

```ruby
require 'time'
require 'handy_api'

api_instance = HandyAPI::HDSPApi.new
x_connection_key = 'x_connection_key_example' # String | Device connection key.
next_xpvp = HandyAPI::NextXPVP.new({position: 10.5, velocity: 10.5}) # NextXPVP | 

begin
  # Sets the next percent position (xp) of the device, and the percent velocity (vp) the device should use to reach the position.
  result = api_instance.next_position_percent_velocity_percent(x_connection_key, next_xpvp)
  p result
rescue HandyAPI::ApiError => e
  puts "Error when calling HDSPApi->next_position_percent_velocity_percent: #{e}"
end
```

#### Using the next_position_percent_velocity_percent_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NextPostionAbsVelocityAbs200Response>, Integer, Hash)> next_position_percent_velocity_percent_with_http_info(x_connection_key, next_xpvp)

```ruby
begin
  # Sets the next percent position (xp) of the device, and the percent velocity (vp) the device should use to reach the position.
  data, status_code, headers = api_instance.next_position_percent_velocity_percent_with_http_info(x_connection_key, next_xpvp)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NextPostionAbsVelocityAbs200Response>
rescue HandyAPI::ApiError => e
  puts "Error when calling HDSPApi->next_position_percent_velocity_percent_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_connection_key** | **String** | Device connection key. |  |
| **next_xpvp** | [**NextXPVP**](NextXPVP.md) |  |  |

### Return type

[**NextPostionAbsVelocityAbs200Response**](NextPostionAbsVelocityAbs200Response.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## next_postion_abs_velocity_abs

> <NextPostionAbsVelocityAbs200Response> next_postion_abs_velocity_abs(x_connection_key, next_xava)

Sets the next absolute position (xa) of the device, and the absolute velocity (va) the device should use to reach the position.

Sets the next absolute position (xa) of the device, and the absolute velocity (va) the device should use to reach the position.

### Examples

```ruby
require 'time'
require 'handy_api'

api_instance = HandyAPI::HDSPApi.new
x_connection_key = 'x_connection_key_example' # String | Device connection key.
next_xava = HandyAPI::NextXAVA.new({position: 3.56, velocity: 200}) # NextXAVA | 

begin
  # Sets the next absolute position (xa) of the device, and the absolute velocity (va) the device should use to reach the position.
  result = api_instance.next_postion_abs_velocity_abs(x_connection_key, next_xava)
  p result
rescue HandyAPI::ApiError => e
  puts "Error when calling HDSPApi->next_postion_abs_velocity_abs: #{e}"
end
```

#### Using the next_postion_abs_velocity_abs_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NextPostionAbsVelocityAbs200Response>, Integer, Hash)> next_postion_abs_velocity_abs_with_http_info(x_connection_key, next_xava)

```ruby
begin
  # Sets the next absolute position (xa) of the device, and the absolute velocity (va) the device should use to reach the position.
  data, status_code, headers = api_instance.next_postion_abs_velocity_abs_with_http_info(x_connection_key, next_xava)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NextPostionAbsVelocityAbs200Response>
rescue HandyAPI::ApiError => e
  puts "Error when calling HDSPApi->next_postion_abs_velocity_abs_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_connection_key** | **String** | Device connection key. |  |
| **next_xava** | [**NextXAVA**](NextXAVA.md) |  |  |

### Return type

[**NextPostionAbsVelocityAbs200Response**](NextPostionAbsVelocityAbs200Response.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

