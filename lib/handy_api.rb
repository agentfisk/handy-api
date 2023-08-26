=begin
#Handy API v2.0.0

#API to interact with the 'TheHandy'. <p> <b>IMPORTANT</b>: This API is compatible with devices running firmware version 3 (v3) only. See note below on how to deal with firmware version 2 (v2) devices with this API. <p> <h3>Join the community</h3> Send us a mail or add us on discord for a more technical chat - **Handy#8756**<br> Follow us on Reddit for updates and announcements: https://www.reddit.com/r/theHandy/ <p> <h3>Server selection</h3> When using the API make sure you connect to the server environment that the device you are trying to interact with is connected to.<br> For most users this will be the production environment API server: <b>https://www.handyfeeling.com/api/handy/v2</b><br> If you have been given special access to firmware that connects to the staging environment, you should use the staging environment API server: <b>https://staging.handyfeeling.com/api/handy/v2</b><br> <p> <h3>Handling firmware v2 devices</h3> Users with firmware v2 devices are required to update their device to firmware v3 before the device can be fully used with this API.<br> To ease this process, two of the endpoints in this API can be used with firmware v2 devices:<br> <ul> <li><code>/connected</code> - Check online status of a device.</li> <li><code>/info</code> - Get general information about the device.</li> </ul> All other endpoints will always return a 'Machine not connected' error if you try to use them with a firmware v2 device.<br><br> For v2 devices it's important to handle the fwStatus returned from the <code>/info</code> endpoint properly.<br> v2 devices will always have fwStatus = UPDATE_REQUIRED(2). See <code>/info</code> documentation for more details.<br><br> When using the API with a device, you should always start by verifying that the device have a firmware that is compatible with the API you are using in your service.<br> An example flow could look like this: <ol> <li>Check if device is conncted with <code>/connected</code></li> <li>Check device firmware status with <code>/info</code></li> <li>If a firmware update is required, forward the user to <a href=\"https://www.handfyfeeling.com\">https://www.handfyfeeling.com</a> so they can easily update the device firmware.</li> <li>Continue your service when the firmware status returned in <code>/info</code> is UP_TO_DATE(0).</li> </ol> <p> <h3>Mode specific operations</h3> Operations in <b>BASE</b>, <b>SLIDE</b>, <b>TIMESYNC</b> and <b>HSTP</b> are mode independent and available at any time.<br> Other operations are only available in a specific mode (eg. <b>HAMP</b>, <b>HDSP</b>, <b>HSSP</b>).<br> To access these operations, the device have to first be put in the specific mode (see <code>/mode</code>).<br> If you execute an operation not available in the current mode of the device, you will receive a 'No such method' error response. <!--See live samples of use cases here: 'https://www.handyfeeling.com/api/handy/v2/demo/ -->

The version of the OpenAPI document: 2.0.0-beta-3
Contact: lars@sweettech.no
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 7.0.1-SNAPSHOT

=end

# Common files
require 'handy_api/api_client'
require 'handy_api/api_error'
require 'handy_api/version'
require 'handy_api/configuration'

# Models
require 'handy_api/models/base_mode_errors'
require 'handy_api/models/branch'
require 'handy_api/models/connected_response'
require 'handy_api/models/error_response'
require 'handy_api/models/error_response_error'
require 'handy_api/models/error_response_error_code'
require 'handy_api/models/events'
require 'handy_api/models/firmware_status'
require 'handy_api/models/generic_error'
require 'handy_api/models/generic_result'
require 'handy_api/models/generic_result_response'
require 'handy_api/models/get_device_time200_response'
require 'handy_api/models/get_device_time200_response_one_of'
require 'handy_api/models/get_hamp_state200_response'
require 'handy_api/models/get_hamp_state200_response_one_of'
require 'handy_api/models/get_hamp_velocity_percent200_response'
require 'handy_api/models/get_hssp_state200_response'
require 'handy_api/models/get_hssp_state200_response_one_of'
require 'handy_api/models/get_info200_response'
require 'handy_api/models/get_loop_setting200_response'
require 'handy_api/models/get_mode200_response'
require 'handy_api/models/get_mode200_response_one_of'
require 'handy_api/models/get_offset200_response'
require 'handy_api/models/get_position_abs200_response'
require 'handy_api/models/get_round_trip_delay200_response'
require 'handy_api/models/get_round_trip_delay200_response_one_of'
require 'handy_api/models/get_settings200_response'
require 'handy_api/models/get_slide200_response'
require 'handy_api/models/get_status200_response'
require 'handy_api/models/get_update_status200_response'
require 'handy_api/models/hamp_mode_errors'
require 'handy_api/models/hamp_response'
require 'handy_api/models/hamp_start_response'
require 'handy_api/models/hamp_state'
require 'handy_api/models/hamp_stop_response'
require 'handy_api/models/hamp_velocity_percent'
require 'handy_api/models/hamp_velocity_percent_response'
require 'handy_api/models/hdsp_mode_errors'
require 'handy_api/models/hdsp_request'
require 'handy_api/models/hdsp_response'
require 'handy_api/models/hdsp_result'
require 'handy_api/models/hdsp_time_request'
require 'handy_api/models/hssp_mode_errors'
require 'handy_api/models/hssp_play'
require 'handy_api/models/hssp_play_response'
require 'handy_api/models/hssp_play_result'
require 'handy_api/models/hssp_response'
require 'handy_api/models/hssp_setup_result'
require 'handy_api/models/hssp_state'
require 'handy_api/models/hamp_stop200_response'
require 'handy_api/models/info_response'
require 'handy_api/models/loop_setting_response'
require 'handy_api/models/loop_setting_update'
require 'handy_api/models/maintenance_mode_errors'
require 'handy_api/models/mode'
require 'handy_api/models/mode_update'
require 'handy_api/models/mode_update_response'
require 'handy_api/models/model'
require 'handy_api/models/next_postion_abs_velocity_abs200_response'
require 'handy_api/models/next_xat'
require 'handy_api/models/next_xava'
require 'handy_api/models/next_xpt'
require 'handy_api/models/next_xpva'
require 'handy_api/models/next_xpvp'
require 'handy_api/models/offset_response'
require 'handy_api/models/offset_update'
require 'handy_api/models/ota_latest'
require 'handy_api/models/ota_latest_response'
require 'handy_api/models/play200_response'
require 'handy_api/models/position_absolute_response'
require 'handy_api/models/rpc_result'
require 'handy_api/models/restart_request'
require 'handy_api/models/server_time_response'
require 'handy_api/models/set_hamp_velocity_percent200_response'
require 'handy_api/models/set_mode200_response'
require 'handy_api/models/set_slide200_response'
require 'handy_api/models/settings_response'
require 'handy_api/models/setup'
require 'handy_api/models/setup200_response'
require 'handy_api/models/setup200_response_one_of'
require 'handy_api/models/slide_response'
require 'handy_api/models/slide_result'
require 'handy_api/models/slide_result_response'
require 'handy_api/models/slide_settings'
require 'handy_api/models/slide_settings_any_of'
require 'handy_api/models/slide_settings_any_of1'
require 'handy_api/models/slide_settings_any_of2'
require 'handy_api/models/slide_update_response'
require 'handy_api/models/slider_max_response'
require 'handy_api/models/slider_min_response'
require 'handy_api/models/start200_response'
require 'handy_api/models/state_result'
require 'handy_api/models/status_response'
require 'handy_api/models/status_response_state'
require 'handy_api/models/sync200_response'
require 'handy_api/models/sync200_response_one_of'
require 'handy_api/models/sync_response'
require 'handy_api/models/update_perform'
require 'handy_api/models/update_status_response'
require 'handy_api/models/web_hook'
require 'handy_api/models/web_hook_opts'

# APIs
require 'handy_api/api/base_api'
require 'handy_api/api/hamp_api'
require 'handy_api/api/hdsp_api'
require 'handy_api/api/hssp_api'
require 'handy_api/api/hstp_api'
require 'handy_api/api/maintenance_api'
require 'handy_api/api/ota_api'
require 'handy_api/api/slide_api'
require 'handy_api/api/timesync_api'

module HandyAPI
  class << self
    # Customize default settings for the SDK using block.
    #   HandyAPI.configure do |config|
    #     config.username = "xxx"
    #     config.password = "xxx"
    #   end
    # If no block given, return the default Configuration object.
    def configure
      if block_given?
        yield(Configuration.default)
      else
        Configuration.default
      end
    end
  end
end
