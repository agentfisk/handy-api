# HandyAPI::OTAApi

All URIs are relative to *https://www.handyfeeling.com/api/handy/v2*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**latest**](OTAApi.md#latest) | **GET** /ota/latest | Get the latest available firmware available for the provided model and branch. |


## latest

> <OtaLatestResponse> latest(model, branch)

Get the latest available firmware available for the provided model and branch.

Get the latest available firmware available for the provided model and branch.

### Examples

```ruby
require 'time'
require 'handy_api'

api_instance = HandyAPI::OTAApi.new
model = HandyAPI::Model::H01 # Model | The model to get latest firmware for.
branch = HandyAPI::Branch::MASTER # Branch | The branch to get latest firmware for.

begin
  # Get the latest available firmware available for the provided model and branch.
  result = api_instance.latest(model, branch)
  p result
rescue HandyAPI::ApiError => e
  puts "Error when calling OTAApi->latest: #{e}"
end
```

#### Using the latest_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OtaLatestResponse>, Integer, Hash)> latest_with_http_info(model, branch)

```ruby
begin
  # Get the latest available firmware available for the provided model and branch.
  data, status_code, headers = api_instance.latest_with_http_info(model, branch)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OtaLatestResponse>
rescue HandyAPI::ApiError => e
  puts "Error when calling OTAApi->latest_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **model** | [**Model**](.md) | The model to get latest firmware for. |  |
| **branch** | [**Branch**](.md) | The branch to get latest firmware for. |  |

### Return type

[**OtaLatestResponse**](OtaLatestResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

