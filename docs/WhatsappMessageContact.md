# OpenapiClient::WhatsappMessageContact

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **addresses** | [**Array&lt;WhatsappMessageContactAddressesInner&gt;**](WhatsappMessageContactAddressesInner.md) |  | [optional] |
| **birthday** | **String** | &#x60;YYYY-MM-DD&#x60; formatted string. | [optional] |
| **emails** | [**Array&lt;WhatsappMessageContactEmailsInner&gt;**](WhatsappMessageContactEmailsInner.md) |  | [optional] |
| **name** | [**WhatsappMessageContactName**](WhatsappMessageContactName.md) |  | [optional] |
| **org** | [**WhatsappMessageContactOrg**](WhatsappMessageContactOrg.md) |  | [optional] |
| **phones** | [**Array&lt;WhatsappMessageContactPhonesInner&gt;**](WhatsappMessageContactPhonesInner.md) | Contact phone number(s) formatted as a phone object. | [optional] |
| **urls** | [**Array&lt;WhatsappMessageContactUrlsInner&gt;**](WhatsappMessageContactUrlsInner.md) | Contact URL(s) formatted as a urls object. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::WhatsappMessageContact.new(
  addresses: null,
  birthday: 2022-09-27,
  emails: null,
  name: null,
  org: null,
  phones: null,
  urls: null
)
```

