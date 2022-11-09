# YCloudApiClient::WhatsappMessageContactPhonesInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **phone** | **String** | Automatically populated with the &#x60;wa_id&#x60; value as a formatted phone number. | [optional] |
| **type** | **String** | Standard Values are &#x60;CELL&#x60;, &#x60;MAIN&#x60;, &#x60;IPHONE&#x60;, &#x60;HOME&#x60;, and &#x60;WORK&#x60;. | [optional] |
| **wa_id** | **String** | WhatsApp ID. | [optional] |

## Example

```ruby
require 'ycloud_api'

instance = YCloudApiClient::WhatsappMessageContactPhonesInner.new(
  phone: null,
  type: null,
  wa_id: null
)
```

