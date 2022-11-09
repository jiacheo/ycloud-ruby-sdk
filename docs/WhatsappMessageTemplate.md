# OpenapiClient::WhatsappMessageTemplate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Name of the template. |  |
| **language** | [**WhatsappMessageTemplateLanguage**](WhatsappMessageTemplateLanguage.md) |  |  |
| **components** | [**Array&lt;WhatsappMessageTemplateComponentsInner&gt;**](WhatsappMessageTemplateComponentsInner.md) | Array of components objects containing the parameters of the message. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::WhatsappMessageTemplate.new(
  name: sample_whatsapp_template,
  language: null,
  components: null
)
```

