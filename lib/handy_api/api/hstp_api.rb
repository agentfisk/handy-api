=begin
#Handy API v2.0.0

#API to interact with the 'TheHandy'. <p> <b>IMPORTANT</b>: This API is compatible with devices running firmware version 3 (v3) only. See note below on how to deal with firmware version 2 (v2) devices with this API. <p> <h3>Join the community</h3> Send us a mail or add us on discord for a more technical chat - **Handy#8756**<br> Follow us on Reddit for updates and announcements: https://www.reddit.com/r/theHandy/ <p> <h3>Server selection</h3> When using the API make sure you connect to the server environment that the device you are trying to interact with is connected to.<br> For most users this will be the production environment API server: <b>https://www.handyfeeling.com/api/handy/v2</b><br> If you have been given special access to firmware that connects to the staging environment, you should use the staging environment API server: <b>https://staging.handyfeeling.com/api/handy/v2</b><br> <p> <h3>Handling firmware v2 devices</h3> Users with firmware v2 devices are required to update their device to firmware v3 before the device can be fully used with this API.<br> To ease this process, two of the endpoints in this API can be used with firmware v2 devices:<br> <ul> <li><code>/connected</code> - Check online status of a device.</li> <li><code>/info</code> - Get general information about the device.</li> </ul> All other endpoints will always return a 'Machine not connected' error if you try to use them with a firmware v2 device.<br><br> For v2 devices it's important to handle the fwStatus returned from the <code>/info</code> endpoint properly.<br> v2 devices will always have fwStatus = UPDATE_REQUIRED(2). See <code>/info</code> documentation for more details.<br><br> When using the API with a device, you should always start by verifying that the device have a firmware that is compatible with the API you are using in your service.<br> An example flow could look like this: <ol> <li>Check if device is conncted with <code>/connected</code></li> <li>Check device firmware status with <code>/info</code></li> <li>If a firmware update is required, forward the user to <a href=\"https://www.handfyfeeling.com\">https://www.handfyfeeling.com</a> so they can easily update the device firmware.</li> <li>Continue your service when the firmware status returned in <code>/info</code> is UP_TO_DATE(0).</li> </ol> <p> <h3>Mode specific operations</h3> Operations in <b>BASE</b>, <b>SLIDE</b>, <b>TIMESYNC</b> and <b>HSTP</b> are mode independent and available at any time.<br> Other operations are only available in a specific mode (eg. <b>HAMP</b>, <b>HDSP</b>, <b>HSSP</b>).<br> To access these operations, the device have to first be put in the specific mode (see <code>/mode</code>).<br> If you execute an operation not available in the current mode of the device, you will receive a 'No such method' error response. <!--See live samples of use cases here: 'https://www.handyfeeling.com/api/handy/v2/demo/ -->

The version of the OpenAPI document: 2.0.0-beta-3
Contact: lars@sweettech.no
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 7.0.1-SNAPSHOT

=end

require 'cgi'

module HandyAPI
  class HSTPApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get the current time of the device.
    # Get the current time of the device. When the device and the server time is synchronized, this will be the server time estimated by the device.
    # @param x_connection_key [String] Device connection key.
    # @param [Hash] opts the optional parameters
    # @return [GetDeviceTime200Response]
    def get_device_time(x_connection_key, opts = {})
      data, _status_code, _headers = get_device_time_with_http_info(x_connection_key, opts)
      data
    end

    # Get the current time of the device.
    # Get the current time of the device. When the device and the server time is synchronized, this will be the server time estimated by the device.
    # @param x_connection_key [String] Device connection key.
    # @param [Hash] opts the optional parameters
    # @return [Array<(GetDeviceTime200Response, Integer, Hash)>] GetDeviceTime200Response data, response status code and response headers
    def get_device_time_with_http_info(x_connection_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: HSTPApi.get_device_time ...'
      end
      # verify the required parameter 'x_connection_key' is set
      if @api_client.config.client_side_validation && x_connection_key.nil?
        fail ArgumentError, "Missing the required parameter 'x_connection_key' when calling HSTPApi.get_device_time"
      end
      if @api_client.config.client_side_validation && x_connection_key.to_s.length > 64
        fail ArgumentError, 'invalid value for "x_connection_key" when calling HSTPApi.get_device_time, the character length must be smaller than or equal to 64.'
      end

      if @api_client.config.client_side_validation && x_connection_key.to_s.length < 5
        fail ArgumentError, 'invalid value for "x_connection_key" when calling HSTPApi.get_device_time, the character length must be great than or equal to 5.'
      end

      pattern = Regexp.new(/^[a-zA-Z0-9]{5,64}$/)
      if @api_client.config.client_side_validation && x_connection_key !~ pattern
        fail ArgumentError, "invalid value for 'x_connection_key' when calling HSTPApi.get_device_time, must conform to the pattern #{pattern}."
      end

      # resource path
      local_var_path = '/hstp/time'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      header_params[:'X-Connection-Key'] = x_connection_key

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'GetDeviceTime200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"HSTPApi.get_device_time",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: HSTPApi#get_device_time\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get the HSTP offset of the device.
    # The purpose of the offset value is to provide a way to manually adjust the device/server clock synchronization.<br> One usecase is when playing scripts (see HSSP). Eg. if the script and video is not in perfect sync, a user could adjust the offset value to compensate.<br> <br> Example:<br> If we assume that the current offset value of the device is 0, and the script is 100ms ahead of the video, setting the offset to -100ms could fix the synchronization issue.<br> If the script is 100ms behind the video, setting the offset to 100ms could do the same.<br> In most cases, the device/server clock synchronization is good enough. In some special cases a manual adjustment might be required to get perfect sync.
    # @param x_connection_key [String] Device connection key.
    # @param [Hash] opts the optional parameters
    # @return [GetOffset200Response]
    def get_offset(x_connection_key, opts = {})
      data, _status_code, _headers = get_offset_with_http_info(x_connection_key, opts)
      data
    end

    # Get the HSTP offset of the device.
    # The purpose of the offset value is to provide a way to manually adjust the device/server clock synchronization.&lt;br&gt; One usecase is when playing scripts (see HSSP). Eg. if the script and video is not in perfect sync, a user could adjust the offset value to compensate.&lt;br&gt; &lt;br&gt; Example:&lt;br&gt; If we assume that the current offset value of the device is 0, and the script is 100ms ahead of the video, setting the offset to -100ms could fix the synchronization issue.&lt;br&gt; If the script is 100ms behind the video, setting the offset to 100ms could do the same.&lt;br&gt; In most cases, the device/server clock synchronization is good enough. In some special cases a manual adjustment might be required to get perfect sync.
    # @param x_connection_key [String] Device connection key.
    # @param [Hash] opts the optional parameters
    # @return [Array<(GetOffset200Response, Integer, Hash)>] GetOffset200Response data, response status code and response headers
    def get_offset_with_http_info(x_connection_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: HSTPApi.get_offset ...'
      end
      # verify the required parameter 'x_connection_key' is set
      if @api_client.config.client_side_validation && x_connection_key.nil?
        fail ArgumentError, "Missing the required parameter 'x_connection_key' when calling HSTPApi.get_offset"
      end
      if @api_client.config.client_side_validation && x_connection_key.to_s.length > 64
        fail ArgumentError, 'invalid value for "x_connection_key" when calling HSTPApi.get_offset, the character length must be smaller than or equal to 64.'
      end

      if @api_client.config.client_side_validation && x_connection_key.to_s.length < 5
        fail ArgumentError, 'invalid value for "x_connection_key" when calling HSTPApi.get_offset, the character length must be great than or equal to 5.'
      end

      pattern = Regexp.new(/^[a-zA-Z0-9]{5,64}$/)
      if @api_client.config.client_side_validation && x_connection_key !~ pattern
        fail ArgumentError, "invalid value for 'x_connection_key' when calling HSTPApi.get_offset, must conform to the pattern #{pattern}."
      end

      # resource path
      local_var_path = '/hstp/offset'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      header_params[:'X-Connection-Key'] = x_connection_key

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'GetOffset200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"HSTPApi.get_offset",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: HSTPApi#get_offset\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get the round-trip-delay-time (rtd) between the device and the server.
    # Get the round-trip-delay-time (rtd) between the device and the server. The rtd is calculated when the synchronization of the server and device time is triggered. See hstp/sync for more information.
    # @param x_connection_key [String] Device connection key.
    # @param [Hash] opts the optional parameters
    # @return [GetRoundTripDelay200Response]
    def get_round_trip_delay(x_connection_key, opts = {})
      data, _status_code, _headers = get_round_trip_delay_with_http_info(x_connection_key, opts)
      data
    end

    # Get the round-trip-delay-time (rtd) between the device and the server.
    # Get the round-trip-delay-time (rtd) between the device and the server. The rtd is calculated when the synchronization of the server and device time is triggered. See hstp/sync for more information.
    # @param x_connection_key [String] Device connection key.
    # @param [Hash] opts the optional parameters
    # @return [Array<(GetRoundTripDelay200Response, Integer, Hash)>] GetRoundTripDelay200Response data, response status code and response headers
    def get_round_trip_delay_with_http_info(x_connection_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: HSTPApi.get_round_trip_delay ...'
      end
      # verify the required parameter 'x_connection_key' is set
      if @api_client.config.client_side_validation && x_connection_key.nil?
        fail ArgumentError, "Missing the required parameter 'x_connection_key' when calling HSTPApi.get_round_trip_delay"
      end
      if @api_client.config.client_side_validation && x_connection_key.to_s.length > 64
        fail ArgumentError, 'invalid value for "x_connection_key" when calling HSTPApi.get_round_trip_delay, the character length must be smaller than or equal to 64.'
      end

      if @api_client.config.client_side_validation && x_connection_key.to_s.length < 5
        fail ArgumentError, 'invalid value for "x_connection_key" when calling HSTPApi.get_round_trip_delay, the character length must be great than or equal to 5.'
      end

      pattern = Regexp.new(/^[a-zA-Z0-9]{5,64}$/)
      if @api_client.config.client_side_validation && x_connection_key !~ pattern
        fail ArgumentError, "invalid value for 'x_connection_key' when calling HSTPApi.get_round_trip_delay, must conform to the pattern #{pattern}."
      end

      # resource path
      local_var_path = '/hstp/rtd'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      header_params[:'X-Connection-Key'] = x_connection_key

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'GetRoundTripDelay200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"HSTPApi.get_round_trip_delay",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: HSTPApi#get_round_trip_delay\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Set the HSTP offset of the device.
    # The purpose of the offset value is to provide a way to manually adjust the device/server clock synchronization.<br> One usecase is when playing scripts (see HSSP). Eg. if the script and video is not in perfect sync, a user could adjust the offset value to compensate.<br> <br> Example:<br> If we assume that the current offset value of the device is 0, and the script is 100ms ahead of the video, setting the offset to -100ms could fix the synchronization issue.<br> If the script is 100ms behind the video, setting the offset to 100ms could do the same.<br> In most cases, the device/server clock synchronization is good enough, but in some special cases a manual adjustment might be required to achieve perfect synchronization.
    # @param x_connection_key [String] Device connection key.
    # @param offset_update [OffsetUpdate] 
    # @param [Hash] opts the optional parameters
    # @return [SetHAMPVelocityPercent200Response]
    def set_offset(x_connection_key, offset_update, opts = {})
      data, _status_code, _headers = set_offset_with_http_info(x_connection_key, offset_update, opts)
      data
    end

    # Set the HSTP offset of the device.
    # The purpose of the offset value is to provide a way to manually adjust the device/server clock synchronization.&lt;br&gt; One usecase is when playing scripts (see HSSP). Eg. if the script and video is not in perfect sync, a user could adjust the offset value to compensate.&lt;br&gt; &lt;br&gt; Example:&lt;br&gt; If we assume that the current offset value of the device is 0, and the script is 100ms ahead of the video, setting the offset to -100ms could fix the synchronization issue.&lt;br&gt; If the script is 100ms behind the video, setting the offset to 100ms could do the same.&lt;br&gt; In most cases, the device/server clock synchronization is good enough, but in some special cases a manual adjustment might be required to achieve perfect synchronization.
    # @param x_connection_key [String] Device connection key.
    # @param offset_update [OffsetUpdate] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(SetHAMPVelocityPercent200Response, Integer, Hash)>] SetHAMPVelocityPercent200Response data, response status code and response headers
    def set_offset_with_http_info(x_connection_key, offset_update, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: HSTPApi.set_offset ...'
      end
      # verify the required parameter 'x_connection_key' is set
      if @api_client.config.client_side_validation && x_connection_key.nil?
        fail ArgumentError, "Missing the required parameter 'x_connection_key' when calling HSTPApi.set_offset"
      end
      if @api_client.config.client_side_validation && x_connection_key.to_s.length > 64
        fail ArgumentError, 'invalid value for "x_connection_key" when calling HSTPApi.set_offset, the character length must be smaller than or equal to 64.'
      end

      if @api_client.config.client_side_validation && x_connection_key.to_s.length < 5
        fail ArgumentError, 'invalid value for "x_connection_key" when calling HSTPApi.set_offset, the character length must be great than or equal to 5.'
      end

      pattern = Regexp.new(/^[a-zA-Z0-9]{5,64}$/)
      if @api_client.config.client_side_validation && x_connection_key !~ pattern
        fail ArgumentError, "invalid value for 'x_connection_key' when calling HSTPApi.set_offset, must conform to the pattern #{pattern}."
      end

      # verify the required parameter 'offset_update' is set
      if @api_client.config.client_side_validation && offset_update.nil?
        fail ArgumentError, "Missing the required parameter 'offset_update' when calling HSTPApi.set_offset"
      end
      # resource path
      local_var_path = '/hstp/offset'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end
      header_params[:'X-Connection-Key'] = x_connection_key

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(offset_update)

      # return_type
      return_type = opts[:debug_return_type] || 'SetHAMPVelocityPercent200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"HSTPApi.set_offset",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: HSTPApi#set_offset\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Syncronize the connected device with the server clock.
    # Syncronizes the device with the server clock and calculates the round-trip-delay between the device and the server.
    # @param x_connection_key [String] Device connection key.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :sync_count The number of round-trip samples to use in synchronization. (default to 30)
    # @option opts [Integer] :outliers The number of sample outliers to discard in synchronization. (default to 6)
    # @return [Sync200Response]
    def sync(x_connection_key, opts = {})
      data, _status_code, _headers = sync_with_http_info(x_connection_key, opts)
      data
    end

    # Syncronize the connected device with the server clock.
    # Syncronizes the device with the server clock and calculates the round-trip-delay between the device and the server.
    # @param x_connection_key [String] Device connection key.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :sync_count The number of round-trip samples to use in synchronization. (default to 30)
    # @option opts [Integer] :outliers The number of sample outliers to discard in synchronization. (default to 6)
    # @return [Array<(Sync200Response, Integer, Hash)>] Sync200Response data, response status code and response headers
    def sync_with_http_info(x_connection_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: HSTPApi.sync ...'
      end
      # verify the required parameter 'x_connection_key' is set
      if @api_client.config.client_side_validation && x_connection_key.nil?
        fail ArgumentError, "Missing the required parameter 'x_connection_key' when calling HSTPApi.sync"
      end
      if @api_client.config.client_side_validation && x_connection_key.to_s.length > 64
        fail ArgumentError, 'invalid value for "x_connection_key" when calling HSTPApi.sync, the character length must be smaller than or equal to 64.'
      end

      if @api_client.config.client_side_validation && x_connection_key.to_s.length < 5
        fail ArgumentError, 'invalid value for "x_connection_key" when calling HSTPApi.sync, the character length must be great than or equal to 5.'
      end

      pattern = Regexp.new(/^[a-zA-Z0-9]{5,64}$/)
      if @api_client.config.client_side_validation && x_connection_key !~ pattern
        fail ArgumentError, "invalid value for 'x_connection_key' when calling HSTPApi.sync, must conform to the pattern #{pattern}."
      end

      if @api_client.config.client_side_validation && !opts[:'sync_count'].nil? && opts[:'sync_count'] > 40
        fail ArgumentError, 'invalid value for "opts[:"sync_count"]" when calling HSTPApi.sync, must be smaller than or equal to 40.'
      end

      if @api_client.config.client_side_validation && !opts[:'sync_count'].nil? && opts[:'sync_count'] < 15
        fail ArgumentError, 'invalid value for "opts[:"sync_count"]" when calling HSTPApi.sync, must be greater than or equal to 15.'
      end

      if @api_client.config.client_side_validation && !opts[:'outliers'].nil? && opts[:'outliers'] > 10
        fail ArgumentError, 'invalid value for "opts[:"outliers"]" when calling HSTPApi.sync, must be smaller than or equal to 10.'
      end

      if @api_client.config.client_side_validation && !opts[:'outliers'].nil? && opts[:'outliers'] < 0
        fail ArgumentError, 'invalid value for "opts[:"outliers"]" when calling HSTPApi.sync, must be greater than or equal to 0.'
      end

      # resource path
      local_var_path = '/hstp/sync'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'syncCount'] = opts[:'sync_count'] if !opts[:'sync_count'].nil?
      query_params[:'outliers'] = opts[:'outliers'] if !opts[:'outliers'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      header_params[:'X-Connection-Key'] = x_connection_key

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Sync200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"HSTPApi.sync",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: HSTPApi#sync\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
