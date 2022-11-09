# OpenapiClient::WhatsappTemplate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **waba_id** | **String** | WhatsApp Business Account ID. |  |
| **name** | **String** | Name of the template. |  |
| **language** | **String** | Language code of the template. See [Supported Languages](https://developers.facebook.com/docs/whatsapp/api/messages/message-templates#supported-languages-) for all codes. |  |
| **category** | [**WhatsappTemplateCategory**](WhatsappTemplateCategory.md) |  |  |
| **components** | [**Array&lt;WhatsappTemplateComponent&gt;**](WhatsappTemplateComponent.md) |  |  |
| **status** | [**WhatsappTemplateStatus**](WhatsappTemplateStatus.md) |  | [optional] |
| **reason** | **String** | The reason why the template is rejected. | [optional] |
| **create_time** | **Time** | The time at which this object is created, formatted in [RFC 3339](https://datatracker.ietf.org/doc/html/rfc3339). e.g., &#x60;2022-06-01T12:00:00.000Z&#x60;. | [optional] |
| **update_time** | **Time** | The time at which this object is updated, formatted in [RFC 3339](https://datatracker.ietf.org/doc/html/rfc3339). e.g., &#x60;2022-06-01T12:00:00.000Z&#x60;. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::WhatsappTemplate.new(
  waba_id: whatsapp-business-account-id,
  name: null,
  language: en,
  category: null,
  components: null,
  status: null,
  reason: null,
  create_time: 2022-06-01T12:00Z,
  update_time: 2022-06-01T12:00Z
)
```

