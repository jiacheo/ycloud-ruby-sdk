# OpenapiClient::WhatsappMessageInteractiveHeader

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | The header type you would like to use. - &#x60;text&#x60;: Used for List Messages and Reply Buttons. - &#x60;video&#x60;: Used for Reply Buttons. - &#x60;image&#x60;: Used for Reply Buttons. - &#x60;document&#x60;: Used for Reply Buttons. |  |
| **text** | **String** | Text for the header. Formatting allows emojis, but not markdown. | [optional] |
| **image** | [**WhatsappMessageMedia**](WhatsappMessageMedia.md) |  | [optional] |
| **video** | [**WhatsappMessageMedia**](WhatsappMessageMedia.md) |  | [optional] |
| **document** | [**WhatsappMessageMedia**](WhatsappMessageMedia.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::WhatsappMessageInteractiveHeader.new(
  type: null,
  text: null,
  image: null,
  video: null,
  document: null
)
```

