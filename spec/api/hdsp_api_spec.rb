=begin
#Handy API v2.0.0

#API to interact with the 'TheHandy'. <p> <b>IMPORTANT</b>: This API is compatible with devices running firmware version 3 (v3) only. See note below on how to deal with firmware version 2 (v2) devices with this API. <p> <h3>Join the community</h3> Send us a mail or add us on discord for a more technical chat - **Handy#8756**<br> Follow us on Reddit for updates and announcements: https://www.reddit.com/r/theHandy/ <p> <h3>Server selection</h3> When using the API make sure you connect to the server environment that the device you are trying to interact with is connected to.<br> For most users this will be the production environment API server: <b>https://www.handyfeeling.com/api/handy/v2</b><br> If you have been given special access to firmware that connects to the staging environment, you should use the staging environment API server: <b>https://staging.handyfeeling.com/api/handy/v2</b><br> <p> <h3>Handling firmware v2 devices</h3> Users with firmware v2 devices are required to update their device to firmware v3 before the device can be fully used with this API.<br> To ease this process, two of the endpoints in this API can be used with firmware v2 devices:<br> <ul> <li><code>/connected</code> - Check online status of a device.</li> <li><code>/info</code> - Get general information about the device.</li> </ul> All other endpoints will always return a 'Machine not connected' error if you try to use them with a firmware v2 device.<br><br> For v2 devices it's important to handle the fwStatus returned from the <code>/info</code> endpoint properly.<br> v2 devices will always have fwStatus = UPDATE_REQUIRED(2). See <code>/info</code> documentation for more details.<br><br> When using the API with a device, you should always start by verifying that the device have a firmware that is compatible with the API you are using in your service.<br> An example flow could look like this: <ol> <li>Check if device is conncted with <code>/connected</code></li> <li>Check device firmware status with <code>/info</code></li> <li>If a firmware update is required, forward the user to <a href=\"https://www.handfyfeeling.com\">https://www.handfyfeeling.com</a> so they can easily update the device firmware.</li> <li>Continue your service when the firmware status returned in <code>/info</code> is UP_TO_DATE(0).</li> </ol> <p> <h3>Mode specific operations</h3> Operations in <b>BASE</b>, <b>SLIDE</b>, <b>TIMESYNC</b> and <b>HSTP</b> are mode independent and available at any time.<br> Other operations are only available in a specific mode (eg. <b>HAMP</b>, <b>HDSP</b>, <b>HSSP</b>).<br> To access these operations, the device have to first be put in the specific mode (see <code>/mode</code>).<br> If you execute an operation not available in the current mode of the device, you will receive a 'No such method' error response. <!--See live samples of use cases here: 'https://www.handyfeeling.com/api/handy/v2/demo/ -->

The version of the OpenAPI document: 2.0.0-beta-3
Contact: lars@sweettech.no
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 7.0.1-SNAPSHOT

=end

require 'spec_helper'
require 'json'

# Unit tests for HandyAPI::HDSPApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'HDSPApi' do
  before do
    # run before each test
    @api_instance = HandyAPI::HDSPApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of HDSPApi' do
    it 'should create an instance of HDSPApi' do
      expect(@api_instance).to be_instance_of(HandyAPI::HDSPApi)
    end
  end

  # unit tests for next_position_abs_in_time
  # Sets the next absolute position (xa) of the device, and the time (t) the device should use to reach the position.
  # Sets the next absolute position (xa) of the device, and the time (t) the device should use to reach the position.
  # @param x_connection_key Device connection key.
  # @param next_xat 
  # @param [Hash] opts the optional parameters
  # @return [NextPostionAbsVelocityAbs200Response]
  describe 'next_position_abs_in_time test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for next_position_percent_in_time
  # Sets the next percent position (xp) of the device, and the time (t) the device should use to reach the position.
  # Sets the next percent position (xp) of the device, and the time (t) the device should use to reach the position.
  # @param x_connection_key Device connection key.
  # @param next_xpt 
  # @param [Hash] opts the optional parameters
  # @return [NextPostionAbsVelocityAbs200Response]
  describe 'next_position_percent_in_time test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for next_position_percent_velocity_absolute
  # Sets the next percent position (xp) of the device, and the absolute velocity (va) the device should use to reach the position.
  # Sets the next percent position (xp) of the device, and the absolute velocity (va) the device should use to reach the position.
  # @param x_connection_key Device connection key.
  # @param next_xpva 
  # @param [Hash] opts the optional parameters
  # @return [NextPostionAbsVelocityAbs200Response]
  describe 'next_position_percent_velocity_absolute test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for next_position_percent_velocity_percent
  # Sets the next percent position (xp) of the device, and the percent velocity (vp) the device should use to reach the position.
  # Sets the next percent position (xp) of the device, and the percent velocity (vp) the device should use to reach the position.
  # @param x_connection_key Device connection key.
  # @param next_xpvp 
  # @param [Hash] opts the optional parameters
  # @return [NextPostionAbsVelocityAbs200Response]
  describe 'next_position_percent_velocity_percent test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for next_postion_abs_velocity_abs
  # Sets the next absolute position (xa) of the device, and the absolute velocity (va) the device should use to reach the position.
  # Sets the next absolute position (xa) of the device, and the absolute velocity (va) the device should use to reach the position.
  # @param x_connection_key Device connection key.
  # @param next_xava 
  # @param [Hash] opts the optional parameters
  # @return [NextPostionAbsVelocityAbs200Response]
  describe 'next_postion_abs_velocity_abs test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
