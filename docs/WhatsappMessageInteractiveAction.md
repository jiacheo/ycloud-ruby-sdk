# OpenapiClient::WhatsappMessageInteractiveAction

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **buttons** | [**Array&lt;WhatsappMessageInteractiveActionButtonsInner&gt;**](WhatsappMessageInteractiveActionButtonsInner.md) | Required for Reply Buttons. | [optional] |
| **button** | **String** | Required for List Messages. Button content. It cannot be an empty string and must be unique within the message. Emojis are supported, markdown is not. | [optional] |
| **sections** | [**Array&lt;WhatsappMessageInteractiveActionSectionsInner&gt;**](WhatsappMessageInteractiveActionSectionsInner.md) | Required for List Messages. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::WhatsappMessageInteractiveAction.new(
  buttons: null,
  button: null,
  sections: null
)
```

