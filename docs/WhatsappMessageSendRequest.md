# OpenapiClient::WhatsappMessageSendRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **from** | **String** | The sender&#39;s phone number in [E.164](https://en.wikipedia.org/wiki/E.164) format. |  |
| **to** | **String** | The recipient&#39;s phone number in [E.164](https://en.wikipedia.org/wiki/E.164) format. |  |
| **type** | [**WhatsappMessageType**](WhatsappMessageType.md) |  |  |
| **template** | [**WhatsappMessageTemplate**](WhatsappMessageTemplate.md) |  | [optional] |
| **text** | [**WhatsappMessageText**](WhatsappMessageText.md) |  | [optional] |
| **image** | [**WhatsappMessageMedia**](WhatsappMessageMedia.md) |  | [optional] |
| **video** | [**WhatsappMessageMedia**](WhatsappMessageMedia.md) |  | [optional] |
| **audio** | [**WhatsappMessageMedia**](WhatsappMessageMedia.md) |  | [optional] |
| **document** | [**WhatsappMessageMedia**](WhatsappMessageMedia.md) |  | [optional] |
| **location** | [**WhatsappMessageLocation**](WhatsappMessageLocation.md) |  | [optional] |
| **interactive** | [**WhatsappMessageInteractive**](WhatsappMessageInteractive.md) |  | [optional] |
| **contacts** | [**Array&lt;WhatsappMessageContact&gt;**](WhatsappMessageContact.md) | Required when &#x60;type&#x60; is &#x60;contacts&#x60;. | [optional] |
| **external_id** | **String** | A unique string to reference the object. This can be an order number or similar, and can be used to reconcile the object with your internal systems. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::WhatsappMessageSendRequest.new(
  from: +447901614024,
  to: +447901614024,
  type: null,
  template: null,
  text: null,
  image: null,
  video: null,
  audio: null,
  document: null,
  location: null,
  interactive: null,
  contacts: null,
  external_id: null
)
```

