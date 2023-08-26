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
  class TIMESYNCApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get current server time.
    # Provides the server time that you must use when calculating the client-server-offset (<i>cs_offset</i>), which is used when calculating a client-side-estimated-server-time (<i>Tcest</i>).<br><br> <h2>Client-server-offset</h2> The client-server-offset (<i>cs_offset</i>) can be calculated the following way: <br> <ol> <li>Collect X server time (<i>Ts</i>) samples using this endpoint. A higher number of samples will results in longer estimation time but a more accurate result. A good sample size is 30 (X = 30).</li> <li>Track the round-trip-delay (<i>RTD</i>) for each sample by recording the request send time (<i>Tsend</i>) and response received time (<i>Treceive</i>). Calculate <i>RTD = Treceive – Tsend</i>.</li> <li>Calculate the estimated server time when the response is received (<i>Ts_est</i>) by adding half the RTD time to the received server time value (<i>Ts</i>). <i>Ts_est  = Ts + RTD/2</i>.</li> <li>Calculate the offset between estimated server time (<i>Ts_est</i>) and client time (<i>Tc</i>). Upon receive <i>Tc == Treceive</i> => <i>offset = Ts_est  - Treceive</i>.</li> <li>Add the offset to the aggregated offset value (<i>offset_agg</i>).  <i>offset_agg = offset_agg + offset</i>.</li> <li>When all samples have been received calculate the average offset (<i>cs_offset</i>) by dividing aggregated offset (<i>offset_agg</i>) values by the number of samples (X). <i>cs_offset = offset_agg / X</i></li> </ol> The process above gives you a good estimate of the client-server-offset (<i>cs_offset</i>).<br><br> Normally you calculate the <i>cs_offset</i> once, and use it whenever you need to calculate client-side-estimated-server-time (<i>Tcest</i>).<br> However, if the synchronization between device and the service (eg. video/script synchronization) is off (maybe due to changing network topology, clock drift, bad initial calculation, etc.), it might help to re-calculate the <i>cs_offset</i>. <h2>Client-side-estimated-server-time</h2> The client-side-estimated-server-time (<i>Tcest</i>) value is required in some of the API endpoints (eg. /hssp/play).<br><br> The <i>Tcest</i> is calculated the following way:<br><br> &nbsp;&nbsp;&nbsp;<i>Tcest = Tc + cs_offset</i><br><br> where <i>Tc</i> is the current client time and <i>cs_offset</i> is the client-server-offset.
    # @param [Hash] opts the optional parameters
    # @return [ServerTimeResponse]
    def get_server_time(opts = {})
      data, _status_code, _headers = get_server_time_with_http_info(opts)
      data
    end

    # Get current server time.
    # Provides the server time that you must use when calculating the client-server-offset (&lt;i&gt;cs_offset&lt;/i&gt;), which is used when calculating a client-side-estimated-server-time (&lt;i&gt;Tcest&lt;/i&gt;).&lt;br&gt;&lt;br&gt; &lt;h2&gt;Client-server-offset&lt;/h2&gt; The client-server-offset (&lt;i&gt;cs_offset&lt;/i&gt;) can be calculated the following way: &lt;br&gt; &lt;ol&gt; &lt;li&gt;Collect X server time (&lt;i&gt;Ts&lt;/i&gt;) samples using this endpoint. A higher number of samples will results in longer estimation time but a more accurate result. A good sample size is 30 (X &#x3D; 30).&lt;/li&gt; &lt;li&gt;Track the round-trip-delay (&lt;i&gt;RTD&lt;/i&gt;) for each sample by recording the request send time (&lt;i&gt;Tsend&lt;/i&gt;) and response received time (&lt;i&gt;Treceive&lt;/i&gt;). Calculate &lt;i&gt;RTD &#x3D; Treceive – Tsend&lt;/i&gt;.&lt;/li&gt; &lt;li&gt;Calculate the estimated server time when the response is received (&lt;i&gt;Ts_est&lt;/i&gt;) by adding half the RTD time to the received server time value (&lt;i&gt;Ts&lt;/i&gt;). &lt;i&gt;Ts_est  &#x3D; Ts + RTD/2&lt;/i&gt;.&lt;/li&gt; &lt;li&gt;Calculate the offset between estimated server time (&lt;i&gt;Ts_est&lt;/i&gt;) and client time (&lt;i&gt;Tc&lt;/i&gt;). Upon receive &lt;i&gt;Tc &#x3D;&#x3D; Treceive&lt;/i&gt; &#x3D;&gt; &lt;i&gt;offset &#x3D; Ts_est  - Treceive&lt;/i&gt;.&lt;/li&gt; &lt;li&gt;Add the offset to the aggregated offset value (&lt;i&gt;offset_agg&lt;/i&gt;).  &lt;i&gt;offset_agg &#x3D; offset_agg + offset&lt;/i&gt;.&lt;/li&gt; &lt;li&gt;When all samples have been received calculate the average offset (&lt;i&gt;cs_offset&lt;/i&gt;) by dividing aggregated offset (&lt;i&gt;offset_agg&lt;/i&gt;) values by the number of samples (X). &lt;i&gt;cs_offset &#x3D; offset_agg / X&lt;/i&gt;&lt;/li&gt; &lt;/ol&gt; The process above gives you a good estimate of the client-server-offset (&lt;i&gt;cs_offset&lt;/i&gt;).&lt;br&gt;&lt;br&gt; Normally you calculate the &lt;i&gt;cs_offset&lt;/i&gt; once, and use it whenever you need to calculate client-side-estimated-server-time (&lt;i&gt;Tcest&lt;/i&gt;).&lt;br&gt; However, if the synchronization between device and the service (eg. video/script synchronization) is off (maybe due to changing network topology, clock drift, bad initial calculation, etc.), it might help to re-calculate the &lt;i&gt;cs_offset&lt;/i&gt;. &lt;h2&gt;Client-side-estimated-server-time&lt;/h2&gt; The client-side-estimated-server-time (&lt;i&gt;Tcest&lt;/i&gt;) value is required in some of the API endpoints (eg. /hssp/play).&lt;br&gt;&lt;br&gt; The &lt;i&gt;Tcest&lt;/i&gt; is calculated the following way:&lt;br&gt;&lt;br&gt; &amp;nbsp;&amp;nbsp;&amp;nbsp;&lt;i&gt;Tcest &#x3D; Tc + cs_offset&lt;/i&gt;&lt;br&gt;&lt;br&gt; where &lt;i&gt;Tc&lt;/i&gt; is the current client time and &lt;i&gt;cs_offset&lt;/i&gt; is the client-server-offset.
    # @param [Hash] opts the optional parameters
    # @return [Array<(ServerTimeResponse, Integer, Hash)>] ServerTimeResponse data, response status code and response headers
    def get_server_time_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TIMESYNCApi.get_server_time ...'
      end
      # resource path
      local_var_path = '/servertime'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'ServerTimeResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"TIMESYNCApi.get_server_time",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TIMESYNCApi#get_server_time\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
