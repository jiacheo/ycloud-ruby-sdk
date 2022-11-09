# OpenapiClient::Event

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique ID for the object. |  |
| **type** | [**EventType**](EventType.md) |  |  |
| **api_version** | **String** | The API version used to render this event. |  |
| **create_time** | **Time** | The time at which this event was created, formatted in [RFC 3339](https://datatracker.ietf.org/doc/html/rfc3339). e.g., &#x60;2022-06-01T12:00:00.000Z&#x60;. |  |
| **email_delivery** | [**EmailDelivery**](EmailDelivery.md) |  | [optional] |
| **sms** | [**Sms**](Sms.md) |  | [optional] |
| **voice** | [**Voice**](Voice.md) |  | [optional] |
| **whatsapp_inbound_message** | [**WhatsappInboundMessage**](WhatsappInboundMessage.md) |  | [optional] |
| **whatsapp_message** | [**WhatsappMessage**](WhatsappMessage.md) |  | [optional] |
| **whatsapp_phone_number** | [**WhatsappPhoneNumber**](WhatsappPhoneNumber.md) |  | [optional] |
| **whatsapp_template** | [**WhatsappTemplate**](WhatsappTemplate.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::Event.new(
  id: null,
  type: null,
  api_version: v2,
  create_time: 2022-06-01T12:00Z,
  email_delivery: null,
  sms: null,
  voice: null,
  whatsapp_inbound_message: null,
  whatsapp_message: null,
  whatsapp_phone_number: null,
  whatsapp_template: null
)
```

