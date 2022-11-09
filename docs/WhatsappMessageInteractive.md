# OpenapiClient::WhatsappMessageInteractive

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
require 'openapi_client'

instance = OpenapiClient::WhatsappMessageInteractive.new(
  type: null,
  action: null,
  body: null,
  header: null,
  footer: null
)
```

