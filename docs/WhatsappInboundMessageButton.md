# YCloudApiClient::WhatsappInboundMessageButton

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payload** | **String** | The payload for a button set up by the business that a customer clicked as part of an interactive message. | [optional] |
| **text** | **String** | Button text. | [optional] |

## Example

```ruby
require 'ycloud_api'

instance = YCloudApiClient::WhatsappInboundMessageButton.new(
  payload: null,
  text: null
)
```

