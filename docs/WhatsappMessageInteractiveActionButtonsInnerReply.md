# OpenapiClient::WhatsappMessageInteractiveActionButtonsInnerReply

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **title** | **String** | Button title. It cannot be an empty string and must be unique within the message. Emojis are supported, markdown is not. | [optional] |
| **id** | **String** | Unique identifier for your button. This ID is returned in the webhook when the button is clicked by the user. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::WhatsappMessageInteractiveActionButtonsInnerReply.new(
  title: null,
  id: null
)
```

