# OpenapiClient::WhatsappInboundMessageInteractive

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | The type of interactive message received. - &#x60;button_reply&#x60;: Sent when a customer clicks a button. - &#x60;list_reply&#x60;: Sent when a customer selects an item from a list. | [optional] |
| **button_reply** | [**WhatsappInboundMessageInteractiveButtonReply**](WhatsappInboundMessageInteractiveButtonReply.md) |  | [optional] |
| **list_reply** | [**WhatsappInboundMessageInteractiveListReply**](WhatsappInboundMessageInteractiveListReply.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::WhatsappInboundMessageInteractive.new(
  type: null,
  button_reply: null,
  list_reply: null
)
```

