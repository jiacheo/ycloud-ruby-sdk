# YCloudApiClient::WhatsappMessageMedia

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **link** | **String** | The protocol and URL of the media to be sent. Use only with HTTP/HTTPS URLs. |  |
| **caption** | **String** | Describes the specified &#x60;video&#x60; or &#x60;image&#x60; media. | [optional] |
| **filename** | **String** | Describes the filename for the specific document. Use only with &#x60;document&#x60; media. | [optional] |

## Example

```ruby
require 'ycloud_api'

instance = YCloudApiClient::WhatsappMessageMedia.new(
  link: null,
  caption: null,
  filename: null
)
```

