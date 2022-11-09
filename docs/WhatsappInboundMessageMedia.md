# YCloudApiClient::WhatsappInboundMessageMedia

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **link** | **String** | The protocol and URL of the media. | [optional] |
| **caption** | **String** | The provided caption for the media. Only present if specified. | [optional] |
| **filename** | **String** | Filename on the sender&#39;s device. This will only be present in &#x60;document&#x60; media messages. | [optional] |
| **id** | **String** | ID of the media. Can be used to delete the media if stored locally on the client. | [optional] |
| **metadata** | **String** | Metadata pertaining to &#x60;sticker&#x60; media. | [optional] |
| **mime_type** | **String** | Mime type of the media. | [optional] |
| **sha256** | **String** | Checksum. | [optional] |

## Example

```ruby
require 'ycloud_api'

instance = YCloudApiClient::WhatsappInboundMessageMedia.new(
  link: null,
  caption: null,
  filename: null,
  id: null,
  metadata: null,
  mime_type: null,
  sha256: null
)
```

