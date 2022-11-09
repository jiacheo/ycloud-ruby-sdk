# OpenapiClient::WhatsappMessageContactAddressesInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **street** | **String** | Street number and name. | [optional] |
| **city** | **String** | City name. | [optional] |
| **state** | **String** | State abbreviation. | [optional] |
| **zip** | **String** | ZIP code. | [optional] |
| **country** | **String** | Full country name. | [optional] |
| **country_code** | **String** | Two-letter country abbreviation. | [optional] |
| **type** | **String** | Standard values are &#x60;HOME&#x60; and &#x60;WORK&#x60;. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::WhatsappMessageContactAddressesInner.new(
  street: null,
  city: null,
  state: null,
  zip: null,
  country: null,
  country_code: null,
  type: WORK
)
```

