# OpenapiClient::VerificationCheck

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | ID of this object. |  |
| **valid** | **Boolean** | Whether the verification code is valid for this check. |  |
| **status** | [**VerificationStatus**](VerificationStatus.md) |  | [optional] |
| **to** | **String** | The recipient&#39;s phone number in [E.164](https://en.wikipedia.org/wiki/E.164) format or email address. | [optional] |
| **channel** | [**VerificationChannel**](VerificationChannel.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::VerificationCheck.new(
  id: vc8f92c20,
  valid: false,
  status: null,
  to: +447901614024,
  channel: null
)
```

