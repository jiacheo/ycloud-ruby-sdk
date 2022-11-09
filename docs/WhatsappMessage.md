# YCloudApiClient::WhatsappMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique ID for the object. |  |
| **waba_id** | **String** | WhatsApp Business Account ID. |  |
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
| **contacts** | [**Array&lt;WhatsappMessageContact&gt;**](WhatsappMessageContact.md) |  | [optional] |
| **external_id** | **String** | A unique string to reference the object. This can be an order number or similar, and can be used to reconcile the object with your internal systems. | [optional] |
| **status** | [**WhatsappMessageStatus**](WhatsappMessageStatus.md) |  | [optional] |
| **error_code** | **String** | Error code when the message status is &#x60;failed&#x60;. | [optional] |
| **error_message** | **String** | Error message when the message status is &#x60;failed&#x60;. | [optional] |
| **create_time** | **Time** | The time at which this message is created, formatted in [RFC 3339](https://datatracker.ietf.org/doc/html/rfc3339). e.g., &#x60;2022-06-01T12:00:00.000Z&#x60;. | [optional] |
| **update_time** | **Time** | The time at which this message is updated, formatted in [RFC 3339](https://datatracker.ietf.org/doc/html/rfc3339). e.g., &#x60;2022-06-01T12:00:00.000Z&#x60;. | [optional] |

## Example

```ruby
require 'ycloud_api'

instance = YCloudApiClient::WhatsappMessage.new(
  id: null,
  waba_id: whatsapp-business-account-id,
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
  external_id: null,
  status: null,
  error_code: null,
  error_message: null,
  create_time: 2022-06-01T12:00Z,
  update_time: 2022-06-01T12:00Z
)
```

