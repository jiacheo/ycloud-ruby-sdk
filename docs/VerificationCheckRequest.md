# YCloudApiClient::VerificationCheckRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **verification_id** | **String** | ID of the verification to be checked. One of &#x60;verificationId&#x60; or &#x60;to&#x60; is required. | [optional] |
| **to** | **String** | The recipient&#39;s phone number or email address. One of &#x60;verificationId&#x60; or &#x60;to&#x60; is required. | [optional] |
| **code** | **String** | The verification to be checked. | [optional] |

## Example

```ruby
require 'ycloud_api'

instance = YCloudApiClient::VerificationCheckRequest.new(
  verification_id: vid,
  to: +447901614024,
  code: 123456
)
```

