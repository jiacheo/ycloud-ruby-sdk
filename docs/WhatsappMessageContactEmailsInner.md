# YCloudApiClient::WhatsappMessageContactEmailsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **email** | **String** | Email address. | [optional] |
| **type** | **String** | Standard values are &#x60;HOME&#x60; and &#x60;WORK&#x60;. | [optional] |

## Example

```ruby
require 'ycloud_api'

instance = YCloudApiClient::WhatsappMessageContactEmailsInner.new(
  email: null,
  type: WORK
)
```

