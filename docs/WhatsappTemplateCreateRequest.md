# OpenapiClient::WhatsappTemplateCreateRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **waba_id** | **String** | WhatsApp Business Account ID. |  |
| **name** | **String** | Name of the template. |  |
| **language** | **String** | Language code of the template. See [Supported Languages](https://developers.facebook.com/docs/whatsapp/api/messages/message-templates#supported-languages-) for all codes. |  |
| **category** | [**WhatsappTemplateCategory**](WhatsappTemplateCategory.md) |  |  |
| **components** | [**Array&lt;WhatsappTemplateComponent&gt;**](WhatsappTemplateComponent.md) |  |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::WhatsappTemplateCreateRequest.new(
  waba_id: whatsapp-business-account-id,
  name: sample_whatsapp_template,
  language: en,
  category: null,
  components: null
)
```

