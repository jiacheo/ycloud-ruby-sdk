# OpenapiClient::Verification

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | ID of the verification. |  |
| **status** | [**VerificationStatus**](VerificationStatus.md) |  | [optional] |
| **to** | **String** | Recipient of the verification. | [optional] |
| **channel** | [**VerificationChannel**](VerificationChannel.md) |  | [optional] |
| **send_time** | **Time** | The time at which this verification was sent, formatted in [RFC 3339](https://datatracker.ietf.org/doc/html/rfc3339). e.g., &#x60;2022-06-01T12:00:00.000Z&#x60;. | [optional] |
| **total_price** | **Float** | Total price of this verification. Currency: USD. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::Verification.new(
  id: ve6j7n8i,
  status: null,
  to: +447901614024,
  channel: null,
  send_time: 2022-06-01T12:00Z,
  total_price: 0.0085
)
```

