# HandyAPI::SLIDEApi

All URIs are relative to *https://www.handyfeeling.com/api/handy/v2*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_position_abs**](SLIDEApi.md#get_position_abs) | **GET** /slide/position/absolute | Get the current slide position |
| [**get_slide**](SLIDEApi.md#get_slide) | **GET** /slide | Get the slide settings. |
| [**set_slide**](SLIDEApi.md#set_slide) | **PUT** /slide | Set slide settings. |


## get_position_abs

> <GetPositionAbs200Response> get_position_abs(x_connection_key)

Get the current slide position

Get the current slide position in millimeter (mm).

### Examples

```ruby
require 'time'
require 'handy_api'

api_instance = HandyAPI::SLIDEApi.new
x_connection_key = 'x_connection_key_example' # String | Device connection key.

begin
  # Get the current slide position
  result = api_instance.get_position_abs(x_connection_key)
  p result
rescue HandyAPI::ApiError => e
  puts "Error when calling SLIDEApi->get_position_abs: #{e}"
end
```

#### Using the get_position_abs_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetPositionAbs200Response>, Integer, Hash)> get_position_abs_with_http_info(x_connection_key)

```ruby
begin
  # Get the current slide position
  data, status_code, headers = api_instance.get_position_abs_with_http_info(x_connection_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetPositionAbs200Response>
rescue HandyAPI::ApiError => e
  puts "Error when calling SLIDEApi->get_position_abs_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_connection_key** | **String** | Device connection key. |  |

### Return type

[**GetPositionAbs200Response**](GetPositionAbs200Response.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_slide

> <GetSlide200Response> get_slide(x_connection_key)

Get the slide settings.

Get the slide min and max position.

### Examples

```ruby
require 'time'
require 'handy_api'

api_instance = HandyAPI::SLIDEApi.new
x_connection_key = 'cid:09Amdosdidsa/mdsa' # String | Device connection key or a channel reference.

begin
  # Get the slide settings.
  result = api_instance.get_slide(x_connection_key)
  p result
rescue HandyAPI::ApiError => e
  puts "Error when calling SLIDEApi->get_slide: #{e}"
end
```

#### Using the get_slide_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetSlide200Response>, Integer, Hash)> get_slide_with_http_info(x_connection_key)

```ruby
begin
  # Get the slide settings.
  data, status_code, headers = api_instance.get_slide_with_http_info(x_connection_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetSlide200Response>
rescue HandyAPI::ApiError => e
  puts "Error when calling SLIDEApi->get_slide_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_connection_key** | **String** | Device connection key or a channel reference. |  |

### Return type

[**GetSlide200Response**](GetSlide200Response.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## set_slide

> <SetSlide200Response> set_slide(x_connection_key, slide_settings)

Set slide settings.

Set the slide min and max position. <p>The slide min and max position decides the range of the movement of the slide. <p> Examples: <ul> <li>Use the full range of the slide: (min=0, max=100)</li> <li>Use only the top half of the slide: (min=50, max=100)</li> <li>Use only the bottom half of the slide: (min=0, max=50)</li> </ul> <p>You can update min and max individually or set both values. <p>The fixed flag can be set to move the current min-max-range relative to a new min or max value. By setting fixed=true, the current min-max-range will be shifted relative to the new value. <ul> <li>Existing (min=0, max=30) with new value (min=20, fixed=true) => New setting: (min=20, max=50)</li> <li>Existing (min=85, max=100) with new value (max=20, fixed=true) => New setting: (min=5, max=20)</li> <li>Existing (min=60, max=100) with new value (min=0, fixed=true) => New setting: (min=0, max=40)</li> <li>Existing (min=60, max=100) with new value (max=10, fixed=true) => New setting: (min=0, max=10)</li> <li>Existing (min=60, max=100) with new value (min=80, fixed=true) => New setting: (min=80, max=100)</li> </ul> The fixed flag is ignored when both min and max are specified. <p> When updating the slide values, the device will adjust the provided values if the provided values are not legal. Typical situations where this might occur: <ul> <li>Setting the slide min value higher than the current max.</li> <li>Setting the slide max value lower than the current min.</li> <li>Setting the slide range smaller than the minimum allowed distance (max-min >= MIN_ALLOWED).</li> </ul> </p> <p> If an adjustment was needed, it will be reflected in the response result code. See <b>SlideResult</b> schema for details. </p> 

### Examples

```ruby
require 'time'
require 'handy_api'

api_instance = HandyAPI::SLIDEApi.new
x_connection_key = 'cid:09Amdosdidsa/mdsa' # String | Device connection key or a channel reference.
slide_settings = HandyAPI::SlideSettings.new({min: 10.5, max: 10.5}) # SlideSettings | 

begin
  # Set slide settings.
  result = api_instance.set_slide(x_connection_key, slide_settings)
  p result
rescue HandyAPI::ApiError => e
  puts "Error when calling SLIDEApi->set_slide: #{e}"
end
```

#### Using the set_slide_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SetSlide200Response>, Integer, Hash)> set_slide_with_http_info(x_connection_key, slide_settings)

```ruby
begin
  # Set slide settings.
  data, status_code, headers = api_instance.set_slide_with_http_info(x_connection_key, slide_settings)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SetSlide200Response>
rescue HandyAPI::ApiError => e
  puts "Error when calling SLIDEApi->set_slide_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_connection_key** | **String** | Device connection key or a channel reference. |  |
| **slide_settings** | [**SlideSettings**](SlideSettings.md) |  |  |

### Return type

[**SetSlide200Response**](SetSlide200Response.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

