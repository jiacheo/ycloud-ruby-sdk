# YCloudApiClient::WhatsappMessageInteractiveActionButtonsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | Only supported type is &#x60;reply&#x60; (for Reply Button). | [optional] |
| **reply** | [**WhatsappMessageInteractiveActionButtonsInnerReply**](WhatsappMessageInteractiveActionButtonsInnerReply.md) |  | [optional] |

## Example

```ruby
require 'ycloud_api'

instance = YCloudApiClient::WhatsappMessageInteractiveActionButtonsInner.new(
  type: null,
  reply: null
)
```

