# HandyAPI::TIMESYNCApi

All URIs are relative to *https://www.handyfeeling.com/api/handy/v2*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_server_time**](TIMESYNCApi.md#get_server_time) | **GET** /servertime | Get current server time. |


## get_server_time

> <ServerTimeResponse> get_server_time

Get current server time.

Provides the server time that you must use when calculating the client-server-offset (<i>cs_offset</i>), which is used when calculating a client-side-estimated-server-time (<i>Tcest</i>).<br><br> <h2>Client-server-offset</h2> The client-server-offset (<i>cs_offset</i>) can be calculated the following way: <br> <ol> <li>Collect X server time (<i>Ts</i>) samples using this endpoint. A higher number of samples will results in longer estimation time but a more accurate result. A good sample size is 30 (X = 30).</li> <li>Track the round-trip-delay (<i>RTD</i>) for each sample by recording the request send time (<i>Tsend</i>) and response received time (<i>Treceive</i>). Calculate <i>RTD = Treceive – Tsend</i>.</li> <li>Calculate the estimated server time when the response is received (<i>Ts_est</i>) by adding half the RTD time to the received server time value (<i>Ts</i>). <i>Ts_est  = Ts + RTD/2</i>.</li> <li>Calculate the offset between estimated server time (<i>Ts_est</i>) and client time (<i>Tc</i>). Upon receive <i>Tc == Treceive</i> => <i>offset = Ts_est  - Treceive</i>.</li> <li>Add the offset to the aggregated offset value (<i>offset_agg</i>).  <i>offset_agg = offset_agg + offset</i>.</li> <li>When all samples have been received calculate the average offset (<i>cs_offset</i>) by dividing aggregated offset (<i>offset_agg</i>) values by the number of samples (X). <i>cs_offset = offset_agg / X</i></li> </ol> The process above gives you a good estimate of the client-server-offset (<i>cs_offset</i>).<br><br> Normally you calculate the <i>cs_offset</i> once, and use it whenever you need to calculate client-side-estimated-server-time (<i>Tcest</i>).<br> However, if the synchronization between device and the service (eg. video/script synchronization) is off (maybe due to changing network topology, clock drift, bad initial calculation, etc.), it might help to re-calculate the <i>cs_offset</i>. <h2>Client-side-estimated-server-time</h2> The client-side-estimated-server-time (<i>Tcest</i>) value is required in some of the API endpoints (eg. /hssp/play).<br><br> The <i>Tcest</i> is calculated the following way:<br><br> &nbsp;&nbsp;&nbsp;<i>Tcest = Tc + cs_offset</i><br><br> where <i>Tc</i> is the current client time and <i>cs_offset</i> is the client-server-offset.

### Examples

```ruby
require 'time'
require 'handy_api'

api_instance = HandyAPI::TIMESYNCApi.new

begin
  # Get current server time.
  result = api_instance.get_server_time
  p result
rescue HandyAPI::ApiError => e
  puts "Error when calling TIMESYNCApi->get_server_time: #{e}"
end
```

#### Using the get_server_time_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ServerTimeResponse>, Integer, Hash)> get_server_time_with_http_info

```ruby
begin
  # Get current server time.
  data, status_code, headers = api_instance.get_server_time_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ServerTimeResponse>
rescue HandyAPI::ApiError => e
  puts "Error when calling TIMESYNCApi->get_server_time_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**ServerTimeResponse**](ServerTimeResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

