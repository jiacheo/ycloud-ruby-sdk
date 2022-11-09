# YCloudApiClient::Balance

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **Float** | Balance of current account. |  |
| **currency** | **String** | [ISO 4217 currency code](https://en.wikipedia.org/wiki/ISO_4217) |  |

## Example

```ruby
require 'ycloud_api'

instance = YCloudApiClient::Balance.new(
  amount: 190.0765,
  currency: USD
)
```

