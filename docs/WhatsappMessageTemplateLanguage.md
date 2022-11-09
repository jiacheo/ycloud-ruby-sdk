# YCloudApiClient::WhatsappMessageTemplateLanguage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | **String** | The code of the language or locale to use. Accepts both language and language_locale formats (e.g., en and en_US). See [Supported Languages](https://developers.facebook.com/docs/whatsapp/api/messages/message-templates#supported-languages-) for all codes. |  |

## Example

```ruby
require 'ycloud_api'

instance = YCloudApiClient::WhatsappMessageTemplateLanguage.new(
  code: en
)
```

