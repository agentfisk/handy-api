# HandyAPI::NextXAVA

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **stop_on_target** | **Boolean** | Flag to indicate whether or not the movement of the slide should stop when the specified target position have been reached. Setting this value to &lt;code&gt;false&lt;/code&gt; should in most cases give a smoother movement when sending a stream HDSP commands continuously to the device. | [optional][default to false] |
| **immediate_response** | **Boolean** | Flag to indicate if the server should return a response immediately upon receinving the command from the client or wait for a response from the device before returning a response to the client. | [optional][default to false] |
| **position** | **Float** | Absolute position in millimeter (mm). 0 &#x3D; absolute bottom position. |  |
| **velocity** | **Float** | Absolute velocity in millimeter per millisecond (mm/ms). The sign indicates the direction of the movement. Negative: moving towards the bottom. Positive: moving towards the top. |  |

## Example

```ruby
require 'handy_api'

instance = HandyAPI::NextXAVA.new(
  stop_on_target: null,
  immediate_response: null,
  position: null,
  velocity: 200
)
```

