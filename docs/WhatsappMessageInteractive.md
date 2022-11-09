# YCloudApiClient::WhatsappMessageInteractive

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | The type of interactive message you want to send. - &#x60;list&#x60;: Use it for List Messages. - &#x60;button&#x60;: Use it for Reply Buttons. |  |
| **action** | [**WhatsappMessageInteractiveAction**](WhatsappMessageInteractiveAction.md) |  |  |
| **body** | [**WhatsappMessageInteractiveBody**](WhatsappMessageInteractiveBody.md) |  |  |
| **header** | [**WhatsappMessageInteractiveHeader**](WhatsappMessageInteractiveHeader.md) |  | [optional] |
| **footer** | [**WhatsappMessageInteractiveFooter**](WhatsappMessageInteractiveFooter.md) |  | [optional] |

## Example

```ruby
require 'ycloud_api'

instance = YCloudApiClient::WhatsappMessageInteractive.new(
  type: null,
  action: null,
  body: null,
  header: null,
  footer: null
)
```

